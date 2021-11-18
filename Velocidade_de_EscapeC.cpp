/*
 * Velocidade_de_EscapeC.cpp
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
    double MASSA_TERRA = 5.98E+24; //Massa do Planeta Terra em Kg
	double MASSA_SIRIUS = 2.0E+30; //Massa da Estrela Sirius em Kg
    double MASSA_LUA = 7.36E+22; //Massa do Satélite Natural da Terra em Kg
    double MASSA_SOL = 1.99E+30; //Massa do Sol em Kg
    double RAIO_TERRA = 6.37E+6; //Raio médio do Planeta Terra em metros
    double RAIO_SIRIUS = 1.0E+7; //Raio médio da Estrela Sirius em metros
    double RAIO_LUA = 1.74E+6; //Raio médio do Satélite Natural da Terra em metros
    double RAIO_SOL = 6.96E+8; //Raio médio do Sol em metros
    double G = 6.67E-11; //Constante gravitacional em m^3/kg s^2
    double velocidade_escape_terra;
    double velocidade_escape_sirius;
    double velocidade_escape_lua;
    double velocidade_escape_sol;
    
    cout << endl << "Objetivo do programa: " << endl;
    cout << endl << "Autor: ";
    cout << endl << "Matricula: ";
    cout << endl << "Data do programa: ";
    cout << endl << "Ultima modificacao: " << endl;

   // insira seus comandos
  
   //Calculo da velocidade de escape para a Terra
   velocidade_escape_terra = (sqrt((2*G*MASSA_TERRA)/RAIO_TERRA))/1000;
   
   //Calculo da velocidade de escape para a Estrela Sirius
   velocidade_escape_sirius = sqrt((2*G*MASSA_SIRIUS)/RAIO_SIRIUS)/1000;
   
   //Calculo da velocidade de escape para o Satélite Natural da Terra
   velocidade_escape_lua = sqrt((2*G*MASSA_LUA)/RAIO_LUA)/1000;
   
   //Calculo da velocidade de escape para o Sol
   velocidade_escape_sol = sqrt((2*G*MASSA_SOL)/RAIO_SOL)/1000;
	
   cout << "\nCom a constante gravitacional G = " << G << "m^3/kg s^2\n";
   cout << "\nMassa da Terra = " << MASSA_TERRA << "Kg\n";
   cout << "O Raio medio da Terra = " << RAIO_TERRA << "m\n";
   cout << "Velocidade de escape para o Planeta Terra: " << velocidade_escape_terra << "Km/s\n";
   cout << "\nMassa de Sirius = " << MASSA_SIRIUS << "Kg\n";
   cout << "O Raio medio de Sirius = " << RAIO_SIRIUS << "m\n";
   cout << "Velocidade de escape para a Estrela Sirius: " << velocidade_escape_sirius << "Km/s\n";
   cout << "\nMassa da Lua = " << MASSA_LUA << "Kg\n";
   cout << "O Raio medio da Lua = " << RAIO_LUA << "m\n";
   cout << "Velocidade de escape para do Satelite Natural da Terra: " << velocidade_escape_lua << "Km/s\n";
   cout << "\nMassa do Sol = " << MASSA_SOL << "Kg\n";
   cout << "O Raio medio do Sol = " << RAIO_SOL << "m\n";
   cout << "Velocidade de escape para o Sol: " << velocidade_escape_sol << "Km/s\n";
   
   return 0;
}
