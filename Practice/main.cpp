#include <iostream> //preprocessor command
#include <string>
using namespace std; //defined to not write again and again

/*multi
line comment*/

//functions
//return type function_name(int a, int b)
int sum(int a, int b)
{
    int c;
    c = a + b;
    return c;
}

//classes and objects
class Employee
{
    //public - can access from anywhere
    //private - cannot access outside the class
    //protected - not accesssible outside the class, but accesible from the subclass
public:
    string str;
    int salary;

    //constructor
    Employee(string n, int s, int sp){
        this->str = n;
        this->salary = s;
        this->sec = sp;
    }
    void printDetails(){
        cout<<this->str<<" "<<this->salary<<endl;
    }

    void getsec(){
        cout<<this->sec<<endl;
    }

    private:
        int sec;
};

//inheritence - all the base class functionality comes into the child class
class Programmer : public Employee{
    public:
        int errors;
};

int main()
{
    //std::cout<<"Hello";
    cout << "Nova" << endl;
    cout << "Hello Neel";

    //Datatypes & Variables
    //start with a letter or _
    int a, b, c;
    short _sa = 12;
    long la = 12;
    long long ll = 12;
    float const fl = 12.12; //dont want to reaasign value
    double dl = 12.12;
    long double ld = 12.12;
    dl = 24.24; //reassign value
    cout << _sa << endl
         << la << endl
         << ll << endl
         << fl << endl
         << dl << endl
         << ld << endl;

    //camelCase Notation
    int marksInMaths = 84;
    cout << "The marks are:" << marksInMaths << endl;

    //User input
    cout << "Enter first number" << endl;
    cin >> a;
    cout << "Enter second number" << endl;
    cin >> b;

    cout << "The sum is:" << a + b << endl;
    cout << a - b << endl;
    cout << a * b << endl;
    cout << (float)a / b << endl;

    //if-else condition
    int age;
    cout << "Enter your age";
    cin >> age;
    if (age >= 18 && age <= 110)
    {
        cout << "Grown up";
    }
    else if (age > 110)
    {
        cout << "Invalid age";
    }
    else
    {
        cout << "Grow up";
    }

    //switch statement
    switch (age)
    {
    case 12:
        cout << "12";
        break;
    case 18:
        cout << "18";
    case 24:
        cout << "24";
        break;
    default:
        cout << "Invalid" << endl;
        break;
    }

    //while loop
    int index = 0;
    while (index < 36)
    {
        cout << "Neel" << index << endl;
        index = index + 1;
    }

    //do-while loop
    do
    {
        cout << "Nova" << index << endl;
        index = index + 1;
    } while (index > 48);

    //for loop
    for (int i = 0; i < 4; i++)
    {
        cout << i << endl;
    }

    cout << "Enter first number" << endl;
    cin >> a;
    cout << "Enter second number" << endl;
    cin >> b;

    cout << "The sum is:" << sum(a, b) << endl;

    //arrays - one dimensional array - kind of like list
    int arr[3] = {1, 3, 6};
    //array index 0,1,2
    cout << arr[0];
    int marks[6];
    for (int i = 0; i < 6; i++)
    {
        cin >> marks[i];
    }
    for (int i = 0; i < 6; i++)
    {
        cout << "Marks" << marks[i] << endl;
    }

    //arrays - two dimensional array - 2 rows, 3 columns - matrix, grid
    //can make n dimensional array
    int arr2d[2][3] = {
        {1, 2, 3},
        {4, 5, 6}};
    for (int i = 0; i < 2; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            cout << i << ", " << j << ": " << arr2d[i][j] << endl;
        }
    }

    //typecasting
    int num = 4;
    float num2 = 12.94;
    cout << (float)num / 3 << endl;
    cout << (int)num2 << endl; //it doesnt round, typecasting and rounding is different

    //strings
    string name = "Neel";
    cout << name << endl;
    cout << name.length() << endl;
    cout << name.substr(0, 3) << endl;
    cout << name.substr(1, 3) << endl;

    //pointers - stores address of a variable
    int pa = 4;
    int *ptrpa;
    ptrpa = &pa;
    cout << "Address: " << ptrpa << endl
         << "Value: " << *ptrpa << endl;
    cout << "Address: " << &a << endl
         << "Value: " << pa << endl;

    //classes and objects
    Employee neel("Neel Constructor", 30000, 6789);
    
    //neel.str = "Neel";
    //neel.salary = 30000;
    //cout<<neel.str<<neel.salary<<endl;
    neel.printDetails();
    neel.getsec();

    return 0;
}