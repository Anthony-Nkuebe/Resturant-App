#include <iostream>
//#include "./User.cpp"

using namespace std;

#ifdef TABLE_MAX

#define TABLE_MAX 10

#endif

class Table
{
    private: 
        long int TableNO; /*Identifier for each table*/
        int TableCapacity;
        
        bool isAvailable;

//        User client; /*Booked by Client.*/

    public:
        //getters
        long int getTableNO();

        //setters
        void setTableNO(const int &);

        
};

void Table::setTableNO(const int &tableNO)
{
    TableNO = TableNO;
}


long int Table::getTableNO()
{
    return this->TableNO;
}