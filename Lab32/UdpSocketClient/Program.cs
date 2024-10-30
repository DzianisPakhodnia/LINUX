using System;
using System.Net;
using System.Net.Sockets;
using System.Text;

class UdpClientProgram
{
    static void Main(string[] args)
    {
        UdpClient client = new UdpClient();
        string message = "Привет от клиента!";
        byte[] data = Encoding.UTF8.GetBytes(message);
        client.Send(data, data.Length, "127.0.0.1", 5000);

        IPEndPoint remoteEndPoint = new IPEndPoint(IPAddress.Any, 0);
        byte[] receivedBytes = client.Receive(ref remoteEndPoint);
        string responseData = Encoding.UTF8.GetString(receivedBytes);
        Console.WriteLine($"Ответ от сервера: {responseData}");
    }
}

