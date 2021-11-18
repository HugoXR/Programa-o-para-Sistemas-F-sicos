/*
 * Massa_Remanescente_Meia_VidaC.cpp
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
    double MassaInicial;
    double VidaMedia;
    double Tempo;
    double Residuo;
    double Base = 0.5;
    double Expoente;
    
    cout << endl << "Objetivo do programa: Calcular a quantidade de substancia radioativa restante" << endl;
    cout << endl << "Autor: Hugo Xavier Rodrigues";
    cout << endl << "Matricula: 190108622";
    cout << endl << "Data do programa: 04-09-2020";
    cout << endl << "Ultima modificacao: 04-09-2020" << endl;

   // insira seus comandos
   cout << "\nEntre com a Massa Inicial(em gramas), a Vida Media(em dias) e o Tempo transcorrido(em dias)\n";
   cin >> MassaInicial >> VidaMedia >> Tempo;
   
   Expoente = Tempo/VidaMedia;
   Residuo = MassaInicial * pow(Base, Expoente);
   
   cout << "Massa Inicial: " << MassaInicial << " gramas\nVidaMedia: " << VidaMedia << " dias\nTempo transcorrido: " << Tempo << " dias";
   cout << "\nMassa Residual do Isotopo Radioativo: " << Residuo << " gramas";

    return 0;
}
