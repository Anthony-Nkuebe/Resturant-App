#include <iostream>
#include"./Product.hpp"
#include<string>

using namespace std;

class Order
{ 
    private:

        long int OrderID;
        Product* product;
        std::string time;//Time the order was made  
        double orderPrice;
    public:
        Order();
        Order(long int OrderID);//check database for the order
};