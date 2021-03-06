﻿using HomeTask4.Core.Entities;
using HomeTask4.Core.Interfaces;
using HomeTask4.SharedKernel.Interfaces;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HomeTask4.Core.Controllers
{
    public class AmountRecipeIngredientsController : BaseController, IAmountRecipeIngredientsController
    {
        public AmountRecipeIngredientsController(IUnitOfWork unitOfWork) : base(unitOfWork)
        {
        }
        public async Task AddAsync(double amount, string unit, int recipeId, int ingredientId)
        {
            AmountIngredient amountIngredient = new AmountIngredient() { Amount = amount, Unit = unit, RecipeId = recipeId, IngredientId = ingredientId };
            await UnitOfWork.Repository.AddAsync(amountIngredient);
        }

        public async Task DeleteAsync(int amountIngredientId)
        {
            AmountIngredient amountIngredient = await UnitOfWork.Repository.GetByIdAsync<AmountIngredient>(amountIngredientId);
            await UnitOfWork.Repository.DeleteAsync(amountIngredient);
        }

        public async Task<List<AmountIngredient>> GetAmountIngredietsRecipeAsync(int recipeId)
        {
            List<AmountIngredient> amountIngredients = await UnitOfWork.Repository.GetListWhereAsync<AmountIngredient>(x => x.RecipeId == recipeId);
            foreach (var amountIngredient in amountIngredients)
            {
                amountIngredient.Ingredient = await UnitOfWork.Repository.GetByIdAsync<Ingredient>(amountIngredient.IngredientId);
            }
            return amountIngredients;
        }

        public async Task<string> GetAmountIngredientNameAsync(int ingredientId)
        {
            return (await UnitOfWork.Repository.GetByIdAsync<Ingredient>(ingredientId)).Name;
        }
    }
}
