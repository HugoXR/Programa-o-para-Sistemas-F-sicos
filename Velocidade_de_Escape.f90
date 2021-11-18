!  Velocidade_de_Escape.f90
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
   real, parameter :: MASSA_TERRA = 5.98E+24 !Massa do Planeta Terra em Kg
   real, parameter :: MASSA_SIRIUS = 2.0E+30 !Massa da Estrela Sirius em Kg
   real, parameter :: MASSA_LUA = 7.36E+22 !Massa do Satélite Natural da Terra em Kg
   real, parameter :: MASSA_SOL = 1.99E+30 !Massa do Sol em Kg
   real, parameter :: RAIO_TERRA = 6.37E+6 !Raio médio do Planeta Terra em metros
   real, parameter :: RAIO_SIRIUS = 1.0E+7 !Raio médio da Estrela Sirius em metros
   real, parameter :: RAIO_LUA = 1.74E+6 !Raio médio do Satélite Natural da Terra em metros
   real, parameter :: RAIO_SOL = 6.96E+8 !Raio médio do Sol em metros
   real, parameter :: G = 6.67E-11 !Constante gravitacional em m^3/kg s^2
   real :: velocidade_escape_terra
   real :: velocidade_escape_sirius
   real :: velocidade_escape_lua
   real :: velocidade_escape_sol

   
   write(*,*)
   write(*,*) 'Objetivo do programa: Calcular a velocidade de escape no campo gravitacional'
   write(*,*) 'de diferentes corpos celestes'
   write(*,*)
   write(*,*) 'Autor: Hugo Xavier Rodrigues'
   write(*,*) 'Matricula: 190108622'
   write(*,*) 'Data do programa: 18-09-2020'
   write(*,*) 'Ultima modificacao: 21-09-2020'
   write(*,*)

   ! insira seus comandos
   
   !Calculo da velocidade de escape para a Terra
   velocidade_escape_terra = (sqrt((2E+0*G*MASSA_TERRA)/RAIO_TERRA))/1E+3
   
   !Calculo da velocidade de escape para a Estrela Sirius
   velocidade_escape_sirius = ceiling((sqrt((2E+0*G*MASSA_SIRIUS)/RAIO_SIRIUS))/1E+3)
   
   !Calculo da velocidade de escape para o Satélite Natural da Terra
   velocidade_escape_lua = (sqrt((2E+0*G*MASSA_LUA)/RAIO_LUA))/1E+3
   
   !Calculo da velocidade de escape para o Sol
   velocidade_escape_sol = ceiling((sqrt((2E+0*G*MASSA_SOL)/RAIO_SOL))/1E+3)
   
   write(*,*) 'Com a constante gravitacional G = ', G, 'm^3/kg s^2'
   write(*,*) ''
   write(*,*) 'Massa da Terra = ', MASSA_TERRA, 'Kg'
   write(*,*) 'O Raio medio da Terra = ', RAIO_TERRA, 'm'
   write(*,*) 'Velocidade de escape para o Planeta Terra: ', velocidade_escape_terra, 'Km/s'
   write(*,*) ''
   write(*,*) 'Massa de Sirius = ', MASSA_SIRIUS, 'Kg'
   write(*,*) 'O Raio medio de Sirius = ', RAIO_SIRIUS, 'm'
   write(*,*) 'Velocidade de escape para a Estrela Sirius: ', velocidade_escape_sirius, 'Km/s'
   write(*,*) ''
   write(*,*) 'Massa da Lua = ', MASSA_LUA, 'Kg'
   write(*,*) 'O Raio medio da Lua = ', RAIO_LUA, 'm'
   write(*,*) 'Velocidade de escape para do Satelite Natural da Terra: ', velocidade_escape_lua, 'Km/s'
   write(*,*) ''
   write(*,*) 'Massa do Sol = ', MASSA_SOL, 'Kg'
   write(*,*) 'O Raio medio do Sol = ', RAIO_SOL, 'm'
   write(*,*) 'Velocidade de escape para o Sol: ', velocidade_escape_sol, 'Km/s'

   
end program calculo_velocidade_escape
