// Model/Cell.cs
namespace ConwayGame.Model
{
    public class Cell
    {
        public bool IsAlive { get; set; }

        public Cell(bool isAlive)
        {
            IsAlive = isAlive;
        }
    }
}
