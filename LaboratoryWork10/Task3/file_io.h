#ifndef FILE_IO_H
#define FILE_IO_H

#include <vector>
#include <utility>
#include <string>

// Объявление функции для записи данных в файл
void write_to_file(const std::vector<std::pair<double, double>>& data, const std::string& filename);

#endif // FILE_IO_H

