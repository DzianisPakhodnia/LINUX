#include "file_io.h"
#include <fstream>

// Определение функции для записи данных в файл
void write_to_file(const std::vector<std::pair<double, double>>& data, const std::string& filename) {
    std::ofstream outFile(filename);
    for (const auto& pair : data) {
        outFile << pair.first << " " << pair.second << "\n";
    }
}

