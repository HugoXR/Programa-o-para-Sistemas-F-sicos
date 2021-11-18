!  Calc_Lado_Hexagono.f90
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


program hexagono_equivalente
   implicit none
   !integer ::
   real :: PI = 3.14159265 ! Valor de Pi
   real :: raio_circulo  ! Raio do círculo em centímetros
   real :: perimetro_circulo ! Perímetro do círculo em centímetros
   real :: lado_hexagono ! Lado do hexagono equivalente em centímetros
   
   write(*,*)
   write(*,*) 'Objetivo do programa: Calcular o valor do lado de um hexagono cujo'
   write(*,*) 'perímetro equivalente ao de um circulo'
   write(*,*)
   write(*,*) 'Autor: Hugo Xavier Rodrigues'
   write(*,*) 'Matricula: 190108622'
   write(*,*) 'Data do programa: 10-09-2020'
   write(*,*) 'Ultima modificacao: 21-09-2020'
   write(*,*)

   ! insira seus comandos
   write(*,*) 'Insira o valor do raio do círculo em centimetros: '
   read(*,*) raio_circulo
   
   ! Calculo do perímetro do círculo em centimetros
   perimetro_circulo = 2.*PI*raio_circulo 
   ! Calculo do lado do hexagono equivalente em centimetros
   lado_hexagono = perimetro_circulo/6.
   
   write(*,*) 'Valor do raio do circulo ', raio_circulo, ' centimetros'
   write(*,*) 'Perimetro do circulo ', perimetro_circulo, ' centimetros'
   write(*,*) 'Valor de PI usado ', PI, ' radianos'
   write(*,*) 
   write(*,*) 'Lado do hexagono equivalente ', lado_hexagono, ' centimetros'
   write(*,*) 
	
end program hexagono_equivalente
