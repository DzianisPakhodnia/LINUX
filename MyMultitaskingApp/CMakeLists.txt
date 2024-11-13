# Указываем путь к компилятору Mono
set(CMAKE_CSharp_COMPILER "/usr/bin/mcs")

# Определение проекта
project(MyMultitaskingApp)

# Список исходных файлов
set(SOURCES
    Main.cs
    Controller/ProcessController.cs
    Model/ProcessModel.cs
    View/ProcessView.cs
)

# Команда для сборки проекта с использованием mcs
add_custom_target(MyMultitaskingApp ALL
    COMMAND ${CMAKE_CSharp_COMPILER} ${SOURCES} -out:MyMultitaskingApp.exe
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    COMMENT "Компиляция MyMultitaskingApp с помощью Mono mcs"
)

# Команда для запуска после сборки
add_custom_command(TARGET MyMultitaskingApp POST_BUILD
    COMMAND mono MyMultitaskingApp.exe
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    COMMENT "Запуск MyMultitaskingApp после сборки"
)

