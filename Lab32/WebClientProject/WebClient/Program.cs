using System;
using System.Net.Http;
using System.Threading.Tasks;

class Program
{
    static async Task Main(string[] args)
    {
        string url = "http://www.bntu.by"; // URL сайта БНТУ
        try
        {
            using (HttpClient client = new HttpClient())
            {
                string responseBody = await client.GetStringAsync(url);
                Console.WriteLine(responseBody);
            }
        }
        catch (HttpRequestException e)
        {
            Console.WriteLine($"Ошибка при получении данных: {e.Message}");
        }
    }
}

