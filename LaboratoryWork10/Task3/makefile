# Компилятор и флаги компиляции
CXX = g++
CXXFLAGS = -std=c++11 -Wall

# Список исходных файлов и заголовочных файлов
SOURCES = main.cpp quadratic.cpp file_io.cpp calculation.cpp
HEADERS = quadratic.h file_io.h calculation.h timing.h

# Имя исполняемого файла
TARGET = project

# Правило для сборки исполняемого файла
$(TARGET): $(SOURCES) $(HEADERS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SOURCES) -lpthread

# Правило для очистки
clean:
	rm -f $(TARGET) *.o

# Правило для препроцессинга
%.i: %.cpp
	$(CXX) $(CXXFLAGS) -E $< -o $@

# Правило для создания объектных файлов
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Правило для создания ассемблерных файлов
%.s: %.cpp
	$(CXX) $(CXXFLAGS) -S $< -o $@

