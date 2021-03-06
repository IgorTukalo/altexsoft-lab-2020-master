﻿using HomeTask4.Core.Controllers;
using HomeTask4.Core.Entities;
using Moq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using Xunit;

namespace HomeTask5.Core.Tests
{
    public class CookingStepsControllerTests : BaseTests
    {
        private readonly CookingStepsController _cookingStepsController;
        private readonly List<CookingStep> _cookingSteps;
        private readonly CookingStep _cookingStep;
        public CookingStepsControllerTests()
        {
            _cookingStepsController = new CookingStepsController(_unitOfWorkMock.Object);

            _cookingSteps = new List<CookingStep>
            {
                new CookingStep()
                {
                    Id = 1,
                    Step=1,
                    Name ="test",
                    RecipeId = 1
                },
                new CookingStep()
                {
                    Id = 2,
                    Step=2,
                    Name = "test2",
                    RecipeId = 1
                },
                new CookingStep()
                {
                    Id = 3,
                    Step=3,
                    Name = "test3",
                    RecipeId = 1
                },
                new CookingStep()
                {
                    Id = 4,
                    Step=4,
                    Name = "test4",
                    RecipeId = 2
                },
            };

            _cookingStep = _cookingSteps.First(x => x.Id == 1);
        }

        [Fact]
        public async Task GetCookingStepsWhereRecipeIdAsync_Should_ReturnCookingSteps()
        {
            // Arrange
            List<CookingStep> expectedResult = _cookingSteps.Where(x => x.RecipeId == _cookingStep.RecipeId).ToList();

            _repositoryMock.Setup(o => o.GetListWhereAsync(It.IsAny<Expression<Func<CookingStep, bool>>>()))
               .ReturnsAsync(expectedResult).Verifiable();

            // Act
            List<CookingStep> result = await _cookingStepsController.GetCookingStepsWhereRecipeIdAsync(_cookingStep.RecipeId);

            // Assert
            Assert.Same(expectedResult, result);
            _repositoryMock.Verify();
        }

        [Fact]
        public async Task GetCookingStepById_Should_ReturnCookingStep()
        {
            // Arrange
            _repositoryMock.Setup(o => o.GetByIdAsync<CookingStep>(_cookingStep.Id))
                .ReturnsAsync(_cookingStep).Verifiable();

            // Act
            CookingStep result = await _cookingStepsController.GetCookingStepByIdAsync(_cookingStep.Id);

            //Assert
            Assert.Same(_cookingStep, result);
            _repositoryMock.Verify();
        }

        [Fact]
        public async Task AddAsync_Runs_Properly()
        {
            // Arrange
            _repositoryMock.Setup(o => o.AddAsync(It.Is<CookingStep>(
                entity => entity.Name == _cookingStep.Name &&
                entity.Step == _cookingStep.Step &&
                entity.RecipeId == _cookingStep.RecipeId))).Verifiable();

            // Act
            await _cookingStepsController.AddAsync(_cookingStep.RecipeId, _cookingStep.Step, _cookingStep.Name);

            // Assert
            _repositoryMock.Verify();
        }

        [Fact]
        public async Task EditAsync_Should_EditExistingCookingStep()
        {
            // Arrange
            _repositoryMock.Setup(o => o.UpdateAsync(_cookingStep));

            // Act
            await _cookingStepsController.EditAsync(_cookingStep);

            // Assert
            _repositoryMock.VerifyAll();
        }

        [Fact]
        public async Task DeleteAsync_Runs_Properly()
        {
            // Arrange
            List<CookingStep> cookingStepsWhereRecipeId =
                _cookingSteps.Where(x => x.RecipeId == _cookingStep.RecipeId && x.Step > _cookingStep.Step).ToList();
            int expectedResult = cookingStepsWhereRecipeId.Max(x => x.Step) - 1;

            _repositoryMock.Setup(o => o.DeleteAsync(It.Is<CookingStep>(
                entity => entity.Id == _cookingStep.Id &&
                entity.Name == _cookingStep.Name &&
                entity.Step == _cookingStep.Step &&
                entity.RecipeId == _cookingStep.RecipeId)));

            _repositoryMock.Setup(o => o.GetByIdAsync<CookingStep>(_cookingStep.Id))
                .ReturnsAsync(_cookingStep);

            _repositoryMock.Setup(o => o.GetListWhereAsync(It.IsAny<Expression<Func<CookingStep, bool>>>()))
                .ReturnsAsync(cookingStepsWhereRecipeId);

            // Act
            await _cookingStepsController.DeleteAsync(_cookingStep.Id);

            // Assert
            int result = (await _cookingStepsController.GetCookingStepsWhereRecipeIdAsync(_cookingStep.RecipeId)).Max(x => x.Step);
            Assert.Equal(expectedResult, result);
            _repositoryMock.VerifyAll();
        }
    }
}
