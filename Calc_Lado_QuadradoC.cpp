/*
 * Calc_Lado_QuadradoC.cpp
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
    float PI = 3.14159265; // Valor de PI
    float raio_circulo; // Valor do raio do circulo em centimetros
    float lado_quadrado; // Lado do quadrado (em cm)
    double area_circulo; // Area do circulo em centimetros quadrados
    // double ;
    cout << endl << "Objetivo do programa: Calcular o lado de um quadrado com o raio de um círculo de mesma área" << endl;
    cout << endl << "Autor: Hugo Xavier Rodrigues";
    cout << endl << "Matricula: 1901018622";
    cout << endl << "Data do programa: 04-09-2020";
    cout << endl << "Ultima modificacao: 04-09-2020" << endl;
	
	// insira seus comandos
    // aqui
	cout << "\nForneca o valor do raio do circulo (em centimetros) \n";
	cin >> raio_circulo;
	// Calcula a area do circulo (em centimetros quadrados)
	area_circulo = PI * raio_circulo * raio_circulo;
	// Calcula o lado do quadrado (em centimetros)
	lado_quadrado = raio_circulo * sqrt(PI);
	
	cout << "\nValor do raio do circulo em centimetros " << raio_circulo;
	cout << "\nArea do circulo em centimetros quadrados " << area_circulo;
	cout << "\nValor usado de PI em radianos " << PI;
	cout << endl << "\nLado do quadrado equivalente " << lado_quadrado << " centimetros\n";

    return 0;
}
