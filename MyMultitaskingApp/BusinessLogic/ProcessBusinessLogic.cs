using System;
using System.Diagnostics;

namespace MyMultitaskingApp.BusinessLogic
{
    public static class ProcessBusinessLogic
    {
        public static void StartProcess(string processName)
        {
            try
            {
                var process = Process.Start(processName);
                Console.WriteLine($"Запущен процесс: {process.ProcessName} (ID: {process.Id})");
                process.WaitForExit();
                Console.WriteLine($"Процесс {process.ProcessName} завершен.");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Ошибка при запуске процесса: {ex.Message}");
            }
        }

        public static void ListProcesses()
        {
            Console.WriteLine("Текущие процессы:");
            foreach (var process in Process.GetProcesses())
            {
                Console.WriteLine($"ID: {process.Id}, Name: {process.ProcessName}");
            }
        }

        public static void KillProcess(int processId)
        {
            try
            {
                var process = Process.GetProcessById(processId);
                process.Kill();
                Console.WriteLine($"Процесс {process.ProcessName} завершен.");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Ошибка: {ex.Message}");
            }
        }
    }
}

