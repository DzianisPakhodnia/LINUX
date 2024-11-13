// ProcessView.cs
using System;

namespace MyMultitaskingApp.View
{
    public class ProcessView
    {
        public void ShowMenu()
        {
            Console.WriteLine("Выберите действие:");
            Console.WriteLine("1. Запустить процесс");
            Console.WriteLine("2. Список процессов");
            Console.WriteLine("3. Завершить процесс по ID");
            Console.WriteLine("0. Выход");
        }
    }
}
