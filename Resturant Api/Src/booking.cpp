#include<iostream>
#include "C:\Users\Nkueb\Documents\database assignment\Resturant Api\Interfaces\booking.hpp"

using namespace std;

string Time::gettime()
{
    return (to_string(hours)+":"+to_string(mins));
}
