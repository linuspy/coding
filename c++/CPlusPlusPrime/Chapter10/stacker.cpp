// stacker.cpp --testing the Stack class
#include <iostream>
#include <cctype>
#include "stack.h"

int main()
{
    using namespace std;
    char ch;
    Stack st;
    unsigned long po;
    cout << "Please enter A to add a purchase order,\n"
	<< "P to process a PO, or Q to quit.\n";

    while (cin >> ch && toupper(ch) != 'Q')
    {
	while (cin.get() != 
