using MyMultitaskingApp.BusinessLogic;

namespace MyMultitaskingApp.Model
{
    public class ProcessModel
    {
        // Метод для запуска процесса, используя бизнес-логику
        public void StartProcess(string processName)
        {
            ProcessBusinessLogic.StartProcess(processName);
        }

        // Метод для отображения текущих процессов, используя бизнес-логику
        public void ListProcesses()
        {
            ProcessBusinessLogic.ListProcesses();
        }

        // Метод для завершения процесса по ID, используя бизнес-логику
        public void KillProcess(int processId)
        {
            ProcessBusinessLogic.KillProcess(processId);
        }
    }
}

