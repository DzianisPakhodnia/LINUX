#include <iostream>
#include <fstream>
#include <chrono>
#include <cstdlib>

double quadratic(double a, double b, double c, double x) {
    return a * x * x + b * x + c;
}

int main() {
    double x_start, x_end, x_step;
    double a, b, c;
    
    std::cout << "Введите коэффициенты a, b, c для квадратичной функции ax^2 + bx + c:\n";
    std::cout << "a: ";
    std::cin >> a;
    std::cout << "b: ";
    std::cin >> b;
    std::cout << "c: ";
    std::cin >> c;

    std::cout << "Введите начальное значение x: ";
    std::cin >> x_start;
    std::cout << "Введите конечное значение x: ";
    std::cin >> x_end;
    std::cout << "Введите шаг для x: ";
    std::cin >> x_step;

    std::ofstream outFile("function_data.txt");

    auto start = std::chrono::high_resolution_clock::now();
    
    for (double x = x_start; x <= x_end; x += x_step) {
        double y = quadratic(a, b, c, x);
        outFile << x << " " << y << "\n";
    }
    
    outFile.close();

    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> duration = end - start;
    std::cout << "Время выполнения программы: " << duration.count() << " секунд\n";

    // Команда для открытия GNUplot и отображения графика
    std::system("gnuplot -p -e \"set title 'График квадратичной функции'; set xlabel 'x'; set ylabel 'y'; plot 'function_data.txt' using 1:2 with lines title 'y = ax^2 + bx + c'\"");
    
    return 0;
}

