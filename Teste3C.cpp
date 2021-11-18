/*
 * Teste3C.cpp
 * 
 * Copyright 2020 Jbends <jbends@jbends-ubuntu-os>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * 
 */


#include <cstdlib>
#include <fstream>
#include <string>
#include <vector>
#include <cmath>
#include <ctime>
#include <iostream>
using namespace std;

int main()
{
    // int ;
    // float ;
    double x;
    double y;
    double t;
    int n;
    ifstream entrada;
    cout << endl << "Objetivo do programa: " << endl;
    cout << endl << "Autor: ";
    cout << endl << "Matricula: ";
    cout << endl << "Data do programa: ";
    cout << endl << "Ultima modificacao: " << endl;

   // insira seus comandos
   entrada.open("texto1.txt");
   if(entrada.fail()){
	   cout << endl << "Erro ao abrir arquivo";
	   return 1;
   }
   
   entrada >> x >> y >> n >> t;
   cout << endl << "Valores no arquivo de entrada: ";
   cout << endl << x << " " << y << " " << n << " " << t;
   return 0;
}
