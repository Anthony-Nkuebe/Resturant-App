#include<iostream>


using namespace std;

enum Sex{ Male, Female};
class Account
{

    private:
        
        string FirstName;
        string LastName;
        int Age;
        string dateOfBirth; //For recomendations when birthdays approach.
        Sex _gender;
        string City,
                Country,
                Phone, 
                Email;
                void selfCopy(Account &);
        string password;


    public:
        Account(
            string name, string Lastname,int age,
            string dateOfBirth,Sex _gender,string City,string Country,string Phone, string Email):
                FirstName(name),LastName(Lastname), Age(age), dateOfBirth(dateOfBirth),_gender(_gender)
                ,City(City),Country(Country), Phone(Phone), Email(Email)
                {

                    sqlite3* DB; 
                    int exit = 0; 
                    exit = sqlite3_open("example.db", &DB);

                    string sql("INSERT INTO PERSON VALUES(1, '%s', 'GATES', 30, 'PALO ALTO', 1000.0);"
               "INSERT INTO PERSON VALUES(2, 'BILL', 'ALLEN', 20, 'SEATTLE', 300.22);"
               "INSERT INTO PERSON VALUES(3, 'PAUL', 'JOBS', 24, 'SEATTLE', 9900.0);");


                };
        Account(Account& ac);

        
        //getters
        string getFirstName()
        {
            return FirstName;
        }
        string getLastName()
        {
            return LastName;
        }
         int getAge()
        {
            return Age;
        }
        string getDateOfBirth()
        {
            return dateOfBirth;
        }
        Sex getGender()
        {
            return;
        }
        string getCity()
        {
            return City;
        }
        string getCountry()
        {
            return Country;
        }
        
        string getPhone()
        {
            return Phone;
        }
        string getEmail() const
        {
            return Email;
        }
        

        //Setters - Include Sql


};