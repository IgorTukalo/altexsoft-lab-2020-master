using HomeTask4.Core.Entities;
using HomeTask4.Core.Interfaces;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.ViewFeatures;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HomeTask6.Web.Pages.Ingredients
{
    public class ChangeIngredientsRecipeModel : PageModel
    {
        private readonly IIngredientsController _ingredientsController;
        private readonly IAmountRecipeIngredientsController _amountRecipeIngredientsController;

        public List<Ingredient> FoundIngredients { set; get; }
        public List<AmountIngredient> RecipeIngredients { set; get; }
        public int RecipeId { get; set; }

        public ChangeIngredientsRecipeModel(IIngredientsController ingredientsController,
            IAmountRecipeIngredientsController amountRecipeIngredientsController)
        {
            _ingredientsController = ingredientsController;
            _amountRecipeIngredientsController = amountRecipeIngredientsController;
        }

        public void OnGet(int recipeId)
        {
            RecipeId = recipeId;
        }

        public async Task<PartialViewResult> OnGetFindIngredientsPartialAsync(string ingredientName)
        {
            FoundIngredients = await _ingredientsController.FindIngredientsAsync(ingredientName);
            return new PartialViewResult
            {
                ViewName = "_FindIngredientsRecipePartial",
                ViewData = new ViewDataDictionary<List<Ingredient>>(ViewData, FoundIngredients)
            };
        }

        public async Task<PartialViewResult> OnGetViewIngredientsRecipePartialAsync(int recipeId)
        {
            RecipeIngredients = (await _amountRecipeIngredientsController.GetAmountIngredietsRecipeAsync(recipeId))
                .OrderBy(x => x.Ingredient.Name).ToList();

            return new PartialViewResult
            {
                ViewName = "_ViewIngredientsRecipePartial",
                ViewData = new ViewDataDictionary<List<AmountIngredient>>(ViewData, RecipeIngredients)
            };
        }

        public async Task<PartialViewResult> OnGetAddIngredientsRecipePartialAsync(double amount, string unit, int recipeId, int selectedAmountIngredient)
        {
            await _amountRecipeIngredientsController.AddAsync(amount, unit, recipeId, selectedAmountIngredient);
            return await OnGetViewIngredientsRecipePartialAsync(recipeId);
        }

        public PartialViewResult OnGetShowAddIngredientsRecipePartial(int recipeId)
        {
            return new PartialViewResult
            {
                ViewName = "_AddIngredientsRecipePartial",
                ViewData = new ViewDataDictionary<int>(ViewData, recipeId)
            };
        }

        public async Task<PartialViewResult> OnGetDeleteIngredientPartialAsync(int ingredientId, int recipeId)
        {
            await _amountRecipeIngredientsController.DeleteAsync(ingredientId);
            return await OnGetViewIngredientsRecipePartialAsync(recipeId);
        }
    }
}
