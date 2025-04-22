#include<iostream>
#include"./Account.hpp"
#include"./User.cpp"
using namespace std;
/*Will control the when user has arrived to check in. Check the Orders and time of arrival*/
class Employee: Account
{
    private:
        int employeeId;

    public:
        void UpdateOrderS(Order *order);
        void placeOrder(Order *order);
        void BookATable(User user);

        void viewOrders(Order* order);
      
        

};

