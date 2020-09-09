﻿using System;
using System.Collections.Generic;
using task2.Controls;
using task2.Interfaces;
using task2.Models;
using task2.ViewNavigation.ContextMenuNavigation;

namespace task2.ViewNavigation.WindowNavigation
{
    class CategoriesNavigation : BaseNavigation, INavigation
    {
        ICategoriesControl Categories;
        public CategoriesNavigation(ICategoriesControl categories)
        {
            Categories = categories;
        }
        public override void CallNavigation()
        {
            Console.Clear();
            base.ItemsMenu = new List<EntityMenu>
                {
                    new EntityMenu(){ Name = "    Add category" },
                    new EntityMenu(){ Name = "    Return to settings"},
                    new EntityMenu(){ Name = "    Return to main menu"}
                };
            Categories.BuildHierarchicalCategories(ItemsMenu, Categories.GetParentCategory(1), 1);
            base.CallNavigation();
        }

        public override void SelectMethodMenu(int id)
        {
            switch (id)
            {
                case 0:
                    {
                        Categories.Add();
                        CallNavigation();
                    }
                    break;
                case 1:
                    {
                        new ProgramMenu(new SettingsNavigation(new SettingsControl())).CallMenu();
                    }
                    break;
                case 2:
                    {
                        new ProgramMenu(new MainWindowNavigation()).CallMenu();
                    }
                    break;
                default:
                    {
                        new ProgramMenu(new CategoriesContextMenuNavigation(ItemsMenu[id].Id, Categories)).CallMenu();
                    }
                    break;
            }
        }
    }
}
