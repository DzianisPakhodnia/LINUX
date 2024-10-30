using System;
using System.Net.Sockets;
using System.Text;

class Client1
{
    static void Main(string[] args)
    {
        TcpClient client = new TcpClient("127.0.0.1", 5000);
        NetworkStream stream = client.GetStream();

        Console.Write("Введите число для возведения в квадрат: ");
        int number = int.Parse(Console.ReadLine());

        byte[] data = Encoding.UTF8.GetBytes($"square:{number}");
        stream.Write(data, 0, data.Length);

        byte[] buffer = new byte[1024];
        int bytesRead = stream.Read(buffer, 0, buffer.Length);
        string response = Encoding.UTF8.GetString(buffer, 0, bytesRead);
        Console.WriteLine($"Квадрат числа {number}: {response}");

        client.Close();
    }
}

