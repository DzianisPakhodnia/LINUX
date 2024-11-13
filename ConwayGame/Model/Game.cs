// Model/Game.cs
using System;
using System.Threading;

namespace ConwayGame.Model
{
    public class Game
    {
        private Grid _grid;
        private int _generations;
        private int _threads;

        public Game(int rows, int cols, int generations, int threads)
        {
            _grid = new Grid(rows, cols);
            _generations = generations;
            _threads = threads;
        }

        public void Start()
        {
            for (int gen = 0; gen < _generations; gen++)
            {
                Console.WriteLine($"Generation: {gen}");
                PrintGrid();
                UpdateGrid();
                Thread.Sleep(1000); // Задержка на 1 секунду
            }
        }

        private void UpdateGrid()
        {
            int chunkSize = _grid.Rows / _threads;
            Thread[] threadArray = new Thread[_threads];

            for (int i = 0; i < _threads; i++)
            {
                int startRow = i * chunkSize;
                int endRow = (i == _threads - 1) ? _grid.Rows : startRow + chunkSize;
                threadArray[i] = new Thread(() => ProcessChunk(startRow, endRow));
                threadArray[i].Start();
            }

            foreach (var thread in threadArray)
            {
                thread.Join();
            }
        }

        private void ProcessChunk(int startRow, int endRow)
        {
            Cell[,] newCells = new Cell[_grid.Rows, _grid.Cols];

            for (int i = startRow; i < endRow; i++)
            {
                for (int j = 0; j < _grid.Cols; j++)
                {
                    int aliveNeighbors = _grid.GetAliveNeighbors(i, j);
                    newCells[i, j] = new Cell(_grid.Cells[i, j].IsAlive);

                    if (newCells[i, j].IsAlive)
                    {
                        if (aliveNeighbors < 2 || aliveNeighbors > 3)
                            newCells[i, j].IsAlive = false; // Умирает от недостатка или избытка соседей
                    }
                    else
                    {
                        if (aliveNeighbors == 3)
                            newCells[i, j].IsAlive = true; // Рождается новая клетка
                    }
                }
            }

            lock (_grid) // Синхронизация доступа к общей сетке
            {
                for (int i = startRow; i < endRow; i++)
                {
                    for (int j = 0; j < _grid.Cols; j++)
                    {
                        _grid.Cells[i, j] = newCells[i, j];
                    }
                }
            }
        }

        private void PrintGrid()
        {
            for (int i = 0; i < _grid.Rows; i++)
            {
                for (int j = 0; j < _grid.Cols; j++)
                {
                    Console.Write(_grid.Cells[i, j].IsAlive ? "O" : ".");
                }
                Console.WriteLine();
            }
            Console.WriteLine();
        }
    }
}
