// ProcessController.cs
using System; // Добавьте это пространство имен
using System.Diagnostics;

namespace MyMultitaskingApp.Controller
{
    public class ProcessController
    {
        public void Execute(string command, string argument = null)
        {
            switch (command.ToLower())
            {
                case "start":
                    Process.Start(argument);
                    break;

                case "list":
                    foreach (var process in Process.GetProcesses())
                    {
                        Console.WriteLine($"{process.Id} - {process.ProcessName}");
                    }
                    break;

                case "kill":
                    if (int.TryParse(argument, out int processId))
                    {
                        Process.GetProcessById(processId).Kill();
                        Console.WriteLine($"Процесс {processId} завершен.");
                    }
                    else
                    {
                        Console.WriteLine("Неверный ID процесса.");
                    }
                    break;

                default:
                    Console.WriteLine("Неизвестная команда.");
                    break;
            }
        }
    }
}
