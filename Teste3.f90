!  Teste3.f90
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
   integer :: estado
   real :: t = 5
   real :: s0 = 20
   real :: v0 = 5
   real :: a = 3
   real :: s
   
   
   write(*,*)
   write(*,*) 'Objetivo do programa: '
   write(*,*)
   write(*,*) 'Autor: '
   write(*,*) 'Matricula: '
   write(*,*) 'Data do programa: '
   write(*,*) 'Ultima modificacao: '
   write(*,*)

   ! insira seus comandos
   s = s0 + v0*a + (a*t**2/2)
   open(unit=10, file='texto1.txt', status='old', iostat=estado)
   
   if(estado /= 0) then
      stop 'Erro'
   end if
   write(*,*)
   write(*,*) 'Valores lidos: t, s0, v0, a e s'
   write(*,*)  t, s0, v0, a, s
   write(10,*) 'Valores lidos: '
   write(10,*) t, s0, v0, a, s
   close(10)
   

end program main
