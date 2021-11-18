/*
 * Calc_Lado_HexagonoC.cpp
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
    double PI = 3.14159265; // Valor de PI
    double raioCirculo; // Raio do círculo em centímetros
    double perimetroCirculo; // Perímetro do círculo em centímetros
    double ladoHexagono; // Lado do Hexagono em centímetros
    // float ;
    
    cout << endl << "Objetivo do programa: Calcular o valor do lado de um hexagono de valor" << endl;
    cout << "do perímetro equivalente ao de um circulo\n";
    cout << endl << "Autor: Hugo Xavier Rodrigues";
    cout << endl << "Matricula: 190108622";
    cout << endl << "Data do programa: 10-09-2020";
    cout << endl << "Ultima modificacao: 11-09-2020" << endl;
    
    // insira seus comandos
    cout << endl << "Insira o valor do raio do circulo em centimetros: \n";
    cin >> raioCirculo;
    
    //Cálculo do perímetro do círculo
    perimetroCirculo = 2*PI*raioCirculo; // em centímetros
    
    //Cálculo do lado do hexagono
	ladoHexagono = perimetroCirculo / 6; // em centímetros
	
	cout << endl << "Valor do raio do circulo " << raioCirculo <<" centimetros"; 
	cout << endl << "Perimetro do circulo "<< perimetroCirculo <<" centimetros"; 
	cout << endl << "Valor de PI usado "<< PI <<" radianos\n"; 
	cout << endl << "Lado do hexagono equivalente "<< ladoHexagono <<" centimetros\n"; 
	 
    return 0;
}
