#include<iostream>
#include ".\table.hpp"



int main()
{
    Table t1;

    t1.setTableNO(5);
    std::cout<<t1.getTableNO();
    
    return 0;
}