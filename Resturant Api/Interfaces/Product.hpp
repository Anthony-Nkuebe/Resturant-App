#include<iostream>

using namespace std;

enum Rating{
    star, doubleStar,threeStar,FourStar,FiveStar
};

class Product
{
    private:
        int productId;
        string Descriprtion;
        bool isAvailable;
        Rating prodRating;

        double unitPrice;

};