//
// Created by user on 14.12.2021.
//

#include "Box.h"


Box::Box(int countOfBooks, int totalBooks) {
    this->sizeOfShelf = 10;
    this->countOfBooks = countOfBooks;
    this->totalBooks = totalBooks;

    if (countOfBooks % sizeOfShelf == 0) {
        this->countOfShelf = countOfBooks / sizeOfShelf;
    } else {
        this->countOfShelf = countOfBooks / sizeOfShelf + 1;
    }

    int x;

    this->books = new int*[this->countOfShelf];
    for (int i = 0; i < this->countOfShelf; ++i) {
        books[i] = new int[sizeOfShelf];
    }
}

void Box::FillBox() {
    int booksLeft = this->countOfBooks;
    for (int i = 0; i < this->countOfShelf; ++i) {
        for (int j = 0; j < this->sizeOfShelf; ++j) {
            if (booksLeft > 0) {
                int numOfBook = std::rand() % this->totalBooks + 1;
                books[i][j] = numOfBook;
                booksLeft--;
            } else {
                books[i][j] = -1;
            }
        }
    }
}

void Box::Print() {
    for (int i = 0; i < this->countOfBooks; ++i) {
        if (i != this->countOfBooks-1) {
            std::cout << books[i] << ", ";
        } else{
            std::cout << books[i] << ";";
        }
    }
    std::cout << "\n";
}

