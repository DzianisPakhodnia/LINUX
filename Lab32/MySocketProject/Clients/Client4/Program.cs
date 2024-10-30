using System;
using System.Net.Sockets;
using System.Text;

class Client4
{
    static void Main(string[] args)
    {
        TcpClient client = new TcpClient("127.0.0.1", 5000); // Используем порт 5000
        NetworkStream stream = client.GetStream();

        byte[] data = Encoding.UTF8.GetBytes("count:start:200:210");
        stream.Write(data, 0, data.Length);

        byte[] buffer = new byte[1024];
        int bytesRead = stream.Read(buffer, 0, buffer.Length);
        string response = Encoding.UTF8.GetString(buffer, 0, bytesRead);
        Console.WriteLine($"Счет от 200 до 210: {response}");

        client.Close();
    }
}

