# Указываем путь к компилятору Mono
set(CMAKE_CSharp_COMPILER "/usr/bin/mcs")

# Определение проекта
project(ConwayGame)

# Список исходных файлов
set(SOURCES
    Program.cs
    Model/Cell.cs
    Model/Grid.cs
    Model/Game.cs
)

# Команда для сборки проекта с использованием mcs
add_custom_target(ConwayGame ALL
    COMMAND ${CMAKE_CSharp_COMPILER} ${SOURCES} -out:ConwayGame.exe
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    COMMENT "Компиляция ConwayGame с помощью Mono mcs"
)

# Команда для запуска после сборки
add_custom_command(TARGET ConwayGame POST_BUILD
    COMMAND mono ConwayGame.exe
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    COMMENT "Запуск ConwayGame после сборки"
)

