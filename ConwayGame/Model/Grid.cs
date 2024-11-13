// Model/Grid.cs
using System;

namespace ConwayGame.Model
{
    public class Grid
    {
        public Cell[,] Cells { get; private set; }
        public int Rows { get; private set; }
        public int Cols { get; private set; }

        public Grid(int rows, int cols)
        {
            Rows = rows;
            Cols = cols;
            Cells = new Cell[rows, cols];
            Initialize();
        }

        private void Initialize()
        {
            Random rand = new Random();
            for (int i = 0; i < Rows; i++)
            {
                for (int j = 0; j < Cols; j++)
                {
                    Cells[i, j] = new Cell(rand.Next(2) == 0); // Случайно живые и мертвые клетки
                }
            }
        }

        public int GetAliveNeighbors(int row, int col)
        {
            int aliveCount = 0;
            for (int i = -1; i <= 1; i++)
            {
                for (int j = -1; j <= 1; j++)
                {
                    if (i == 0 && j == 0) continue; // Пропускаем саму клетку
                    int newRow = row + i;
                    int newCol = col + j;
                    if (newRow >= 0 && newRow < Rows && newCol >= 0 && newCol < Cols)
                    {
                        if (Cells[newRow, newCol].IsAlive)
                            aliveCount++;
                    }
                }
            }
            return aliveCount;
        }
    }
}
