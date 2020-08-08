﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using task1.Model;

namespace task1
{
    public class MethodsManegment
    {
        public void CallMethod(int numberMethod)
        {
            switch (numberMethod)
            {
                case 0:
                    {

                        Console.WriteLine($"\r\nReturn to the method selection menu? y/n");
                        if (Validation.YesNo() == ConsoleKey.Y)
                        {
                            Console.Clear();
                            MenuControl menuControl = new MenuControl();
                            menuControl.CallMenuSelectMethods();
                        }

                    }
                    break;
                case 1:
                    {
                        Method1Control method1Control = new Method1Control();
                        method1Control.Method1();
                    }
                    goto case 0;
                case 2:
                    {
                        Method2Control method2Control = new Method2Control();
                        method2Control.Method2();
                    };
                    goto case 0;
                case 3:
                    {
                        Method3Control method3Control = new Method3Control();
                        method3Control.Method3();
                    };
                    goto case 0;
                case 4:
                    {
                        Method4Control method4Control = new Method4Control();
                        method4Control.Method4();
                    };
                    goto case 0;
            }
        }
    }
}
