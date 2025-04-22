#include <iostream>
#include <string.h>
using namespace std;

struct Date{
    int day;
    int month;
    int year;

    void setdate(int dd, int mm, int yyyy){
        dd = day;
        mm = month;
        yyyy = year;
    }

};

struct Time{
    int hours;
    int mins;

    void settime(int hh, int mm){
        hh = hours;
        mm = mins;
    }

    string gettime();

};

class Booking{

    private:
        int id;
        string bookingid;
        int tableid;
        Date app_date;

        string reservationsunder;


};