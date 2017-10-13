// 
#include <iostream>
class Ik
{
    // define constant inside a class
    // g++ -std=c++11 -o Ik Ik.cpp could compile sucess
    // while normal c++ could fail
    // [root@localhost Chapter10]# g++ -o Ik Ik.cpp
    // Ik.cpp:6:28: warning: non-static data member initializers only available with -std=c++11 or -std=gnu++11 [enabled by default]
    //
    //    const int Months = 12;
    //	enum {Months = 12};
    	static const int Months = 12;
        int fuss;
    public:
	Ik(int f = 9) {fuss = f;}
	void ViewIk() const;
};

void Ik::ViewIk() const
{
    std::cout << Months << std::endl;
    std::cout << fuss << std::endl;
}

int main()
{
    Ik * pik = new Ik;
    Ik ee = Ik(8);
    ee.ViewIk();
    pik->ViewIk();
    /*  
   	enum egg {Small, Medium, Large, Jumbo};
        enum t_shirt {Small, Medium, Large, XLarge};
    */
    enum class Egg {Small, Medium, Large, Jumbo};
    enum struct TShirt {Small, Medium, Large, XLarge};
    Egg eggChoice = Egg::Medium;
    TShirt tShirtChoice = TShirt::Medium;

}
    
