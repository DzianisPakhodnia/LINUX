#include <iostream>
#include <thread>
#include "quadratic.h"
#include "file_io.h"
#include "timing.h"
#include "calculation.h"

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

    auto start = std::chrono::high_resolution_clock::now();

    std::thread t1(calculate_and_write, a, b, c, x_start, x_end, x_step, "function_data.txt");

    t1.join();

    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> duration = end - start;
    std::cout << "Время выполнения программы: " << duration.count() << " секунд\n";

    std::system("gnuplot -p -e \"set title 'График квадратичной функции'; set xlabel 'x'; set ylabel 'y'; plot 'function_data.txt' using 1:2 with lines title 'y = ax^2 + bx + c'\"");

    return 0;
}

