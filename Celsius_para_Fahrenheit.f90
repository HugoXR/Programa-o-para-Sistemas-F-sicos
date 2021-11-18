!  Celsius_para_Fahrenheit.f90
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


program fahrenheit_celsius
   implicit none
   !integer ::
   !real ::
   
   real :: Celsius = 0
   real :: Fahrenheit = 0
   real :: Celsius_Aproximado = 0
   
   write(*,*)
   write(*,*) 'Objetivo do programa: Converter uma Temperatura(aproximada) de Fahrenheit para Celsius'
   write(*,*)
   write(*,*) 'Autor: Hugo Xavier Rodrigues'
   write(*,*) 'Matricula: 190108622'
   write(*,*) 'Data do programa: 2020-09-17'
   write(*,*) 'Ultima modificacao: 2020-09-17'
   write(*,*)

   ! insira seus comandos
   write(*,*) 'Escreva a Temperatura medida em Celsius: '
   read(*,*) Celsius
   
    

end program fahrenheit_celsius
