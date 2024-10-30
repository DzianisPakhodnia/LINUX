using System;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;

class Server
{
    static void Main(string[] args)
    {
        TcpListener server = new TcpListener(IPAddress.Parse("127.0.0.1"), 5000);
        server.Start();
        Console.WriteLine("Сервер запущен и ожидает подключения...");

        while (true)
        {
            TcpClient client = server.AcceptTcpClient();
            Console.WriteLine("Клиент подключен.");
            _ = Task.Run(() => HandleClient(client));
        }
    }

    static void HandleClient(TcpClient client)
    {
        using (client)
        {
            NetworkStream stream = client.GetStream();
            byte[] buffer = new byte[1024];
            int bytesRead = stream.Read(buffer, 0, buffer.Length);
            string request = Encoding.UTF8.GetString(buffer, 0, bytesRead);
            Console.WriteLine($"Запрос: {request}");

            string[] parts = request.Split(':');
            string command = parts[0];

            if (command == "square")
            {
                if (parts.Length == 2 && int.TryParse(parts[1], out int number))
                {
                    int result = number * number;
                    byte[] response = Encoding.UTF8.GetBytes(result.ToString());
                    stream.Write(response, 0, response.Length);
                }
                else
                {
                    byte[] response = Encoding.UTF8.GetBytes("Некорректный запрос");
                    stream.Write(response, 0, response.Length);
                }
            }
            else if (command == "count")
            {
                if (parts.Length == 4 && parts[1] == "start" && 
                    int.TryParse(parts[2], out int start) && 
                    int.TryParse(parts[3], out int end))
                {
                    StringBuilder result = new StringBuilder();
                    for (int i = start; i <= end; i++)
                    {
                        result.Append(i).Append(" ");
                    }
                    byte[] response = Encoding.UTF8.GetBytes(result.ToString().Trim());
                    stream.Write(response, 0, response.Length);
                }
            }
            else
            {
                byte[] response = Encoding.UTF8.GetBytes("Некорректная команда");
                stream.Write(response, 0, response.Length);
            }
        }
    }
}

