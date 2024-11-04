#ifndef CALCULATION_H
#define CALCULATION_H

#include <string>
#include <mutex>

// Функция для вычисления и записи данных в файл
void calculate_and_write(double a, double b, double c, double x_start, double x_end, double x_step, const std::string& filename, std::mutex& mtx);

#endif // CALCULATION_H

