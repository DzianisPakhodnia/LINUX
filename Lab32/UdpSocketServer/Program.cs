using System;
using System.Net;
using System.Net.Sockets;
using System.Text;

class UdpServer
{
    static void Main(string[] args)
    {
        UdpClient server = new UdpClient(5000);
        Console.WriteLine("Сервер запущен...");

        while (true)
        {
            IPEndPoint remoteEndPoint = new IPEndPoint(IPAddress.Any, 0);
            byte[] receivedBytes = server.Receive(ref remoteEndPoint);
            string receivedData = Encoding.UTF8.GetString(receivedBytes);
            Console.WriteLine($"Получено от {remoteEndPoint}: {receivedData}");

            string responseData = "Ответ от сервера";
            byte[] responseBytes = Encoding.UTF8.GetBytes(responseData);
            server.Send(responseBytes, responseBytes.Length, remoteEndPoint);
        }
    }
}

