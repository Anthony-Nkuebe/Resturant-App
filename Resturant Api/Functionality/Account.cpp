#include<iostream>
#include "./Resturant Api/Interfaces/Account.hpp"

using namespace std;


void Account::selfCopy(Account& ac)
{
    
    FirstName = ac.FirstName;
    LastName= ac.LastName;
    Age = ac.Age;
    dateOfBirth = ac.dateOfBirth;

    _gender = ac._gender;
    City= ac.City;
    Country = ac.Country;
    Phone = ac.Phone;
    Email = ac.Email;
    
}
Account::Account(Account& ac)
{
    selfCopy(ac);
    
}
