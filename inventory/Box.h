//
// Created by user on 14.12.2021.
//

#ifndef INVENTORY_BOX_H
#define INVENTORY_BOX_H

#include <cstdlib>
#include <iostream>


class Box {

public:
    int **books;
    int countOfBooks;
    int sizeOfShelf;
    int countOfShelf;
    int totalBooks;
    Box(int countOfBooks, int totalBooks);
    void FillBox();
    

    void Print();
};


#endif //INVENTORY_BOX_H
