!  Velocidade_de_Escape2.f90
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


program calculo_velocidade_escape
   implicit none
   
   !integer ::
   real :: Massa_Corpo !Massa do corpo celeste em Kg
   real :: Raio_Corpo !Raio médio do corpo celeste em metros
   real, parameter :: G = 6.67E-11 !Constante gravitacional em m^3/kg s^2
   real :: velocidade_escape !Velocidade de espace em Km/s

   write(*,*)
   write(*,*) 'Objetivo do programa: Calcular a velocidade de escape no campo gravitacional'
   write(*,*) 'de diferentes corpos celestes'
   write(*,*)
   write(*,*) 'Autor: Hugo Xavier Rodrigues'
   write(*,*) 'Matricula: 190108622'
   write(*,*) 'Data do programa: 18-09-2020'
   write(*,*) 'Ultima modificacao: 30-09-2020'
   write(*,*)

   ! insira seus comandos
   write(*,*) 'Digite o valor da massa do corpo celeste em Kg: '
   read(*,*) Massa_Corpo
   write(*,*) 'Digite o valor da raio do corpo celeste em metros: '
   read(*,*) Raio_Corpo
   
   !Calculo da velocidade de escape para a um dado corpo em km/s
   velocidade_escape= (sqrt((2E+0*G*Massa_Corpo)/Raio_Corpo))/1E+3
   
   write(*,*) 'Com a constante gravitacional G = ', G, 'm^3/kg s^2'
   write(*,*) ''
   write(*,*) 'Massa do Corpo = ', Massa_Corpo, 'Kg'
   write(*,*) 'O Raio medio do Corpo = ', Raio_Corpo, 'm'
   write(*,*) 'Velocidade de escape para este Corpo celeste é: ', velocidade_escape, 'Km/s'
   
end program calculo_velocidade_escape
