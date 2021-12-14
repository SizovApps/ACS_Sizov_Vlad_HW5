//
// Created by user on 13.12.2021.
//

#ifndef INVENTORY_INVENTORY_H
#define INVENTORY_INVENTORY_H
#include <cstdlib>
#include <iostream>
#include <thread>
#include <mutex>
#include "Box.h"


class Inventory {
    int rowsCount;
    int boxesCount;
    int booksCount;
    Box ***inventory;

    

public:
    int curRow;
    int **result;
    int timeToSleep;
    Inventory(int m, int n, int k, int timeToSleep);
    void AddRow(int rowsPos);
    void CheckRow(int rowsPos);

    std::mutex mtx;

    void Print();
    void InformationToUser(int rowPos);
    void InformationAboutCreating(int rowPos);
};


#endif //INVENTORY_INVENTORY_H
