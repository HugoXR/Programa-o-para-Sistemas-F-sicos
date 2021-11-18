!  GraficoFuncao.f90
!  
!  Copyright 2020 Jbends <jbends@jbends-ubuntu-os>
!  
!  This program is free software; you can redistribute it and/or modify
!  it under the terms of the GNU General Public License as published by
!  the Free Software Foundation; either version 2 of the License, or
!  (at your option) any later version.
!  
!  This program is distributed in the hope that it will be useful,
!  but WITHOUT ANY WARRANTY; without even the implied warranty of
!  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
!  GNU General Public License for more details.
!  
!  You should have received a copy of the GNU General Public License
!  along with this program; if not, write to the Free Software
!  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
!  MA 02110-1301, USA.
!  
!  



program main
   implicit none
   real :: funcao !Função f(x) descontinua
   real :: valorInicial!Valor inicial de x a ser plotado na função f(x)
   real :: valorFinal !Valor final de x a ser plotado na função f(x)
   
   write(*,*)
   write(*,*) 'Objetivo do programa: Dada uma funcao descontinua, calcular entre'
   write(*,*) 'os pontos inicial e final, incluíndo nos mesmos, o valor da funcao' 
   write(*,*) 'nestes pontos'
   write(*,*)
   write(*,*) 'Autor: Hugo Xavier Rodrigues'
   write(*,*) 'Matricula: 190108622'
   write(*,*) 'Data do programa: 05-10-2020'
   write(*,*) 'Ultima modificacao: 07-10-2020'
   write(*,*)
   
   ! insira seus comandos
   
   !Lendo o valor inicial de x
   write(*,*) 'Digite o valor inicial de x: '
   read(*,*) valorInicial
   
   !Lendo o valor final de x
   write(*,*) 'Digite o valor final de x: '
   read(*,*) valorFinal
   
   write(*,*) 'Dada a função f(x), para cada valor de x entre [', valorInicial, ',', valorFinal, '], tem-se que:'
   write(*,*)
   do while(valorInicial <= valorFinal)
       if(valorInicial <= -1) then
          !Calculo da função no ponto x <= -1
          funcao = 1
          write(*,*) 'Para x = ', valorInicial
          write(*,*) 'f(x) = ',funcao
       else if(valorInicial < 0) then 
          !Calculo da função no ponto -1 < x < 0
          funcao = -valorInicial
          write(*,*) 'Para x = ', valorInicial
          write(*,*) 'f(x) = ',funcao
       else if(valorInicial == 0) then
          !Calculo da função no ponto x = 0
          funcao = valorInicial
          write(*,*) 'Para x = ', valorInicial
          write(*,*) 'f(x) = ',funcao
       else if(valorInicial < 3) then 
          !Calculo da função no ponto 0 < x < 3
          funcao = (valorInicial**3)/3
          write(*,*) 'Para x = ', valorInicial
          write(*,*) 'f(x) = ',funcao
       else 
          !Calculo da função no ponto x > 3
          funcao = 4*valorInicial - 3
          write(*,*) 'Para x = ', valorInicial
          write(*,*) 'f(x) = ',funcao
       END IF
       write(*,*)
       valorInicial = valorInicial + 1;
   end do
end program main

