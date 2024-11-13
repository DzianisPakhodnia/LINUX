# Компиляция динамической библиотеки
BusinessLogic.so: BusinessLogic/ProcessBusinessLogic.cs
    mcs -target:library -out:BusinessLogic.so BusinessLogic/ProcessBusinessLogic.cs

# Компиляция основного приложения и его зависимостей
MyMultitaskingApp.exe: Main.cs Controller/ProcessController.cs Model/ProcessModel.cs View/ProcessView.cs BusinessLogic.so
    mcs -out:MyMultitaskingApp.exe -r:BusinessLogic.so Main.cs Controller/ProcessController.cs Model/ProcessModel.cs View/ProcessView.cs

# Запуск приложения
run: MyMultitaskingApp.exe
    mono MyMultitaskingApp.exe

# Очистка собранных файлов
clean:
    rm -f MyMultitaskingApp.exe BusinessLogic.so

