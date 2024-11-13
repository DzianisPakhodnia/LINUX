// Program.cs
using System;
using ConwayGame.Model;

class Program
{
    static void Main(string[] args)
    {
        int rows = 10; // Количество строк
        int cols = 10; // Количество столбцов
        int generations = 20; // Количество поколений
        int threads = 4; // Количество потоков

        Game game = new Game(rows, cols, generations, threads);
        game.Start();
    }
}
