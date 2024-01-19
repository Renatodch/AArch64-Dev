#include <iostream>
#include <cstring>

using namespace std;

void invertir(char* f,int len)
{
 if(len >= 1){ 
  cout<< f[len-1]; 
  invertir(f,len-1);
 }
}

int main(void)
{
 char frase[32];
 cout<<"Ingresa frase"<<endl;
 cin.get(frase,sizeof(frase));
 cout<<"La frase invertida es:";
 invertir(frase,strlen(frase));
 cout<<"\n";
}

