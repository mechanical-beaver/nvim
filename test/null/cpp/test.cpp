#include <iostream>
using namespace std;
int main()
{
    int x = 5;
    int y = 0;
    if (x > 3)
        cout << "Hello";
    else
    {
        cout << "Bye";
    }
    for (int i = 0; i < 3; i++) cout << i << endl;
    int unusedVar = 10;
    return 0;
}
