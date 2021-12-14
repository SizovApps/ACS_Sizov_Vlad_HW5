#include <iostream>
#include <thread>
#include "Inventory.h"

int main() {
    std::cout << "Введите количество рядов, шкафов в ряду и книг в каждом шкафу (через пробел,\n"
                 "количетсво книг во всей библиотеке не должно превыть 10^9, иначе программа будет выполняться очень долго):" << std::endl;

    bool correct = false;
    int m, n, k;
    while (!correct) {
        try {
            std::cin >> m >> n >> k;
            if (m * n * k > 1000000000) {
                std::cout << "Введенные числа слишком большие, попробуйте еще раз:\n";
            } else {
                correct = true;
            }
        }
        catch (std::exception) {
            std::cout << "Введены не целые числа, попробуйте еще раз:\n";
        }
    }

    int rowStarted = 0;
    correct = false;
    int timeToSleep;
    while (!correct) {
        std::cout << "Введите время (в миллисекундах), которое необходимо студенту, чтобы восстановить один шкаф (можно 0): ";
        std::cin >> timeToSleep;
        if (timeToSleep >= 0) {
            correct = true;
        } else {
            std::cout << "Вы ввели значение меньше нуля. Попробуйте еще раз:\n";
        }
    }
    std::cout << "Студенты составляют каталог, немного подождите...";

    Inventory *inventory = new Inventory(m, n, k, timeToSleep);

    std::thread threads[m];


    while (rowStarted < m) {
        inventory->InformationToUser(rowStarted+1);
        threads[rowStarted] = std::thread(&Inventory::AddRow, inventory, rowStarted);
        rowStarted++;
    }
    for (int i = 0; i < m; ++i) {
        threads[i].join();
    }

    std::cout << "\n";
    rowStarted = 0;
    while (rowStarted < m) {
        inventory->InformationAboutCreating(rowStarted+1);
        threads[rowStarted] = std::thread(&Inventory::CheckRow, inventory, rowStarted);
        rowStarted++;
    }
    for (int i = 0; i < m; ++i) {
        threads[i].join();
    }
    std::cout << "\n";
    std::cout << "\nНа одной полке 10 книг\n";
    inventory->Print();

    return 0;
}
