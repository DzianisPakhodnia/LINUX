#ifndef FILE_IO_H
#define FILE_IO_H

#include <vector>
#include <utility>
#include <string>

void write_to_file(const std::vector<std::pair<double, double>>& data, const std::string& filename);

#endif // FILE_IO_H

