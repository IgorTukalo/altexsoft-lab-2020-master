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
    public class CategoriesControllerTests : BaseTests
    {
        private readonly CategoriesController _categoriesController;
        private readonly List<Category> _categories;
        private readonly Category _category;
        public CategoriesControllerTests()
        {
            _categoriesController = new CategoriesController(_unitOfWorkMock.Object);
            _categories = new List<Category>
            {
                new Category()
                {
                    Id = 2,
                    Name = "Categories",
                    ParentId = 2
                },
                new Category()
                {
                    Id = 3,
                    Name = "Bakery products",
                    ParentId = 2
                },
                new Category()
                {
                    Id = 4,
                    Name = "Fish, seafood",
                    ParentId = 2
                },
                new Category()
                {
                    Id = 5,
                    Name = "Meat, poultry",
                    ParentId = 2
                },
            };

            _category = _categories.First(x => x.Id == 3);
        }

        [Fact]
        public async Task GetCategoryByIdAsync_Should_ReturnRequestedCategory()
        {
            // Arrange
            _repositoryMock.Setup(o => o.GetByIdAsync<Category>(_category.Id))
                .ReturnsAsync(_category).Verifiable();

            // Act
            Category categoryActual = await _categoriesController.GetCategoryByIdAsync(_category.Id);

            //Assert
            Assert.Same(_category, categoryActual);
            _repositoryMock.Verify();
        }

        [Fact]
        public async Task GetCategoriesWhereParentIdAsync_Should_ReturnCategories()
        {
            // Arrange
            List<Category> expectedResult = _categories.Where(x => x.ParentId == _category.ParentId).ToList();

            _repositoryMock.Setup(o => o.GetListWhereAsync(It.IsAny<Expression<Func<Category, bool>>>()))
                .ReturnsAsync(expectedResult).Verifiable();

            // Act
            List<Category> result = await _categoriesController.GetCategoriesWhereParentIdAsync((int)_category.ParentId);

            // Assert
            Assert.Same(expectedResult, result);
            _repositoryMock.Verify();
        }

        [Fact]
        public async Task AddAsync_Runs_Properly()
        {
            // Arrange
            _repositoryMock.Setup(o => o.AddAsync(It.Is<Category>(
                entity => entity.Name == _category.Name &&
                entity.ParentId == _category.ParentId))).Verifiable();

            _repositoryMock.Setup(o => o.GetByPredicateAsync(It.IsAny<Expression<Func<Category, bool>>>()))
                .ReturnsAsync(_categories.First(x => x.Id == _category.ParentId));

            // Act
            await _categoriesController.AddAsync(_category.Name, _categories.First(x => x.Id == _category.ParentId).Name);

            // Assert
            _repositoryMock.VerifyAll();
        }

        [Fact]
        public async Task EditCategoryAsync_Should_EditExistingCategory()
        {
            // Arrange
            string newName = "Fish";
            int newParentId = 3;

            _repositoryMock.Setup(o => o.UpdateAsync(It.Is<Category>(
                entity => entity.Id == _category.Id &&
                entity.Name == _category.Name &&
                entity.ParentId == _category.ParentId)));

            _repositoryMock.Setup(o => o.GetByIdAsync<Category>(_category.Id))
                .ReturnsAsync(_category);

            // Act
            await _categoriesController.EditCategoryAsync(_category.Id, newName, newParentId);

            // Assert
            Category actualCategory = await _categoriesController.GetCategoryByIdAsync(_category.Id);
            Assert.Equal(newName, actualCategory.Name);
            Assert.Equal(newParentId, actualCategory.ParentId);
            _repositoryMock.VerifyAll();
        }

        [Fact]
        public async Task DeleteCategoryAsync_Runs_Properly()
        {
            // Arrange
            _repositoryMock.Setup(o => o.DeleteAsync(It.Is<Category>(
                entity => entity.Id == _category.Id &&
                entity.Name == _category.Name &&
                entity.ParentId == _category.ParentId)));

            _repositoryMock.Setup(o => o.GetByIdAsync<Category>(_category.Id))
                .ReturnsAsync(_category);

            // Act
            await _categoriesController.DeleteCategoryAsync(_category.Id);

            // Assert
            _repositoryMock.VerifyAll();
        }

        [Fact]
        public async Task FindCategoriesAsync_Should_ReturnCategoriesFound()
        {
            // Arrange
            string searchValue = "a";
            List<Category> expectedResult = _categories.Where(x => x.Name.ToLower().Contains(searchValue)).ToList();

            _repositoryMock.Setup(o => o.GetListWhereAsync(It.IsAny<Expression<Func<Category, bool>>>()))
                .ReturnsAsync(expectedResult).Verifiable();

            // Act
            List<Category> result = await _categoriesController.FindCategoriesAsync(searchValue);

            // Assert
            Assert.Same(expectedResult, result);
            _repositoryMock.Verify();
        }

        [Fact]
        public async Task GetAllGategoriesAsync_Should_ReturnCategories()
        {
            // Arrange
            _repositoryMock.Setup(o => o.GetListAsync<Category>())
                .ReturnsAsync(_categories).Verifiable();

            // Act
            List<Category> result = await _categoriesController.GetAllGategoriesAsync();

            // Assert
            Assert.Same(_categories, result);
            _repositoryMock.Verify();
        }
    }
}
