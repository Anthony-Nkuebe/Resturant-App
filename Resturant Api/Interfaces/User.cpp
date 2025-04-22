#include<iostream>
#include"./Account.hpp"
#include "./Order.hpp"
#include "./table.hpp"


using namespace std;

class User: Account
{
    private:
        long int userId = 0;

        
        
        void placeAnOrder(User &user, Order &order);
        void BookATable(User &user, Table table);
        void generateBarcode();
        string viewHistory();
    public:


        //getters
        long int getID()
        {
            return userId;
        }
};
enum State{
    login, signUp,home, catalogue, About,Contacts/*For Mothoalo*/
};


void User::placeAnOrder(User &user, Order &order)
{

}
