#include <iostream>

using namespace std;

class ClaseA{
 public:
  ClaseA():datoA(10){}
  int LeerA() const{return datoA;}
  void Mostrar(){
   cout<<"a = "<<datoA<<endl;
  }
 protected:
  int datoA;
};

class ClaseB : public ClaseA{
 public:
  ClaseB(){datoB = 20;}
  int LeerB() const{return datoB;}
  void Mostrar(){
   cout<<"a = "<<datoA<<", b = "<<datoB<<endl;
  }
 protected:
  int datoB;
};

int main(void){
 ClaseB objeto;
 objeto.Mostrar();
 objeto.ClaseA::Mostrar();
 
 return 0;
}



