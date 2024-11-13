// Main.cs
using System; // Добавьте это пространство имен
using MyMultitaskingApp.Controller;
using MyMultitaskingApp.View;

class Program
{
    static void Main(string[] args)
    {
        ProcessView view = new ProcessView();
        ProcessController controller = new ProcessController();
        int choice;

        do
        {
            view.ShowMenu();
            choice = int.Parse(Console.ReadLine());

            switch (choice)
            {
                case 1:
                    Console.Write("Введите имя процесса для запуска (например, notepad): ");
                    string processName = Console.ReadLine();
                    controller.Execute("start", processName);
                    break;
                case 2:
                    controller.Execute("list");
                    break;
                case 3:
                    Console.Write("Введите ID процесса для завершения: ");
                    string processId = Console.ReadLine();
                    controller.Execute("kill", processId);
                    break;
                case 0:
                    Console.WriteLine("Выход из приложения.");
                    break;
                default:
                    Console.WriteLine("Неверный выбор. Пожалуйста, попробуйте снова.");
                    break;
            }

        } while (choice != 0);
    }
}
