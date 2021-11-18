!  CalculaProjetil.f90
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


program projetil
   implicit none
   !integer ::
   real :: altura !altura atingida pelo projetil (m)
   real :: veloc !Velocidade do Projetil (m/s)
   real :: gravid = -9.807 !Aceleração da gravidade (m/s^2)
   real :: altInc = 150.0 !Altura Inicial (m)
   real :: velocV = 100.0 !Velocidade vertical (m/s)
   real :: tempo = 5.0 !Tempo (s)
   
   write(*,*)
   write(*,*) 'Objetivo do programa: '
   write(*,*)
   write(*,*) 'Autor: '
   write(*,*) 'Matricula: '
   write(*,*) 'Data do programa: '
   write(*,*) 'Ultima modificacao: '
   write(*,*)

   ! insira seus comandos
   altura = altInc + velocV*tempo + 0.5*gravid*tempo**2
   veloc = velocV + gravid * tempo
   
   write(*,*) 'Calculo da altura e velocidade atiginda por um projetil'
   write(*,*) 'Aceleracao da gravidade local = ',gravid,'m/s^2'
   write(*,*) 'Altura Inicial = ',altInc,'m'
   write(*,*) 'Velocidade Inicial Vertical = ',velocV,'m/s'
   write(*,*) 'Tempo Decorrido = ',tempo,'s'
   write(*,*)
   write(*,*) 'Altura Atingida apos ',tempo,' segundos é: ',altura,'m'
   write(*,*) 'Velocidade Atigida apos ',tempo,' segundos é: ',veloc,'m/s'

end program projetil
