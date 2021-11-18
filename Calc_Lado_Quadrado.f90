!  Calc_Lado_Quadrado.f90
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


program quadrado_equivalente
   implicit none
   
   !integer ::
   !real ::
   real, parameter :: PI = 3.14159265; ! Valor de PI
   real :: raio_circulo ! Valor do raio do circulo equivalente (em cm)
   real :: area_circulo ! Área do circulo dada por PI * raio ao quadrado
   real :: lado_quadrado ! Lado do quadrado (em cm)
   
   write(*,*)
   write(*,*) 'Objetivo do programa: Calcular o lado de um quadrado com o raio de um círculo de mesma área'
   write(*,*)
   write(*,*) 'Autor: Hugo Xavier Rodrigues'
   write(*,*) 'Matricula: 1901018622'
   write(*,*) 'Data do programa: 31-08-2020'
   write(*,*) 'Ultima modificacao: 31-08-2020'
   write(*,*)

   ! insira seus comandos
   write(*,*) 'Forneca o valor do raio do circulo (em centimetros)'
   read(*,*) raio_circulo
   
   ! Calcule a área do círculo
   area_circulo = PI*raio_circulo**2 ! área em centimetros quadrados
   ! Calcule o valor do lado do quadrado (em centimetros)
   lado_quadrado = sqrt(area_circulo)
   
   write(*,*) 'Valor do raio do circulo ', raio_circulo, ' centimetros'
   write(*,*) 'Area do circulo ', area_circulo, ' centimetros quadrados'
   write(*,*) 'Valor de PI usado ', PI, ' radianos'
   write(*,*) ! Imprime uma linha em branco.
   write(*,*) 'Lado do quadrado equivalente ', lado_quadrado, ' centimetros'
   write(*,*) 
   
end program quadrado_equivalente
