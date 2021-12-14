//
// Created by user on 13.12.2021.
//

#include "Inventory.h"

Inventory::Inventory(int m, int n, int k, int timeToSleep) {
    rowsCount = m;
    boxesCount = n;
    booksCount = k;
    curRow = 0;
    this->timeToSleep = timeToSleep;

    inventory = new Box **[m];

    this->result = new int*[m*n*k];

    for (int i = 0; i < n*m*k; ++i) {
        this->result[i] = new int [3];
        this->result[i][0] = -1;
        this->result[i][1] = -1;
        this->result[i][2] = -1;
    }

    for (int i = 0; i < this->rowsCount; ++i) {
        inventory[i] = new Box * [n];
        for (int j = 0; j < this->boxesCount; ++j) {
            Box *newBox = new Box(this->booksCount, m*n*k);
            inventory[i][j] = newBox;
        }
    }
}

void Inventory::AddRow(int rowsPos) {
    for (int i = 0; i < this->boxesCount; ++i) {
        inventory[rowsPos][i]->FillBox();
    }
    this->curRow++;
    mtx.lock();
    std::cout << "\nГенерация случайных шкафов для ряда номер: " << rowsPos + 1 << " выполнена;";
    mtx.unlock();
}

void Inventory::CheckRow(int rowsPos) {
    for (int i = 0; i < this->boxesCount; ++i) {
        for (int j = 0; j < inventory[rowsPos][i]->countOfShelf; ++j) {
            for (int k = 0; k < inventory[rowsPos][i]->sizeOfShelf; ++k) {
                int indexOfBook = inventory[rowsPos][i]->books[j][k] - 1;
                if (indexOfBook == -2) {
                    continue;
                }

                this->result[indexOfBook][0] = rowsPos;
                this->result[indexOfBook][1] = i;
                this->result[indexOfBook][2] = j;
            }
        }
    }
    std::this_thread::sleep_for(std::chrono::milliseconds (this->timeToSleep));
    mtx.lock();
    std::cout << "\nСтудент составил каталог книг из ряда номер: " << rowsPos + 1 << ";";
    mtx.unlock();
}

void Inventory::Print() {
    std::cout << "<Индекс книги>: <номер ряда>, <номер шкафа>, <номер полки>;)\n";
    for (int i = 0; i < this->boxesCount * this->rowsCount * this->booksCount; ++i) {
        if (this->result[i][0] != -1) {
            std::cout << i << ": " << result[i][0] + 1 << ", " << result[i][1] + 1 << ", " << result[i][2] + 1 << ";\n";
        }
    }
}

void Inventory::InformationToUser(int rowPos) {
    mtx.lock();
    std::cout << "\nГенерация случайных шкафов для ряда номер: " << rowPos << ";";
    mtx.unlock();
}

void Inventory::InformationAboutCreating(int rowPos) {
    mtx.lock();
    std::cout << "\nСтудент составляет каталог книг из ряда номер: " << rowPos << ";";
    mtx.unlock();
}

