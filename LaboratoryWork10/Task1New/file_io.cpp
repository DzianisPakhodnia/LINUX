#include "file_io.h"
#include <fstream>

void write_to_file(const std::vector<std::pair<double, double>>& data, const std::string& filename) {
    std::ofstream outFile(filename);
    for (const auto& pair : data) {
        outFile << pair.first << " " << pair.second << "\n";
    }
}

