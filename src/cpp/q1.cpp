//
// Convert the following c++ code to assembly
//
#include <iostream>

using namespace std;

int main() {
    int Rval;
    int Xval = 20;
    int Yval = 15;
    int Zval = 25;

    Rval = Xval - (-Yval + Zval);

    cout << "R = ";
    cout << Rval << endl;

    return 0;
}
