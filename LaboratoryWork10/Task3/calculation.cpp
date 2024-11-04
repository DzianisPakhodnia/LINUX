#include "calculation.h"
#include "quadratic.h"
#include "file_io.h"
#include <vector>
#include <utility>
#include <mutex>

// Функция для вычисления значений квадратичной функции и записи их в файл
void calculate_and_write(double a, double b, double c, double x_start, double x_end, double x_step, const std::string& filename, std::mutex& mtx) {
    std::vector<std::pair<double, double>> results;
    for (double x = x_start; x <= x_end; x += x_step) {
        double y = quadratic(a, b, c, x);
        results.emplace_back(x, y);
    }
    // Синхронизация доступа к файлу с помощью мьютекса
    std::lock_guard<std::mutex> guard(mtx);
    write_to_file(results, filename);
}

