cmake_minimum_required(VERSION 3.10)

# Основной проект для управления сборкой всех поддиректорий
project(MyProjects)

# Добавляем поддиректории каждого проекта
add_subdirectory(../MyMultitaskingApp ${CMAKE_BINARY_DIR}/MyMultitaskingApp)
add_subdirectory(../ConwayGame ${CMAKE_BINARY_DIR}/ConwayGame)

