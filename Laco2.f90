!  Laco2.f90
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
   integer :: n
   !real ::
   write(*,*)
   write(*,*) 'Objetivo do programa: '
   write(*,*)
   write(*,*) 'Autor: '
   write(*,*) 'Matricula: '
   write(*,*) 'Data do programa: '
   write(*,*) 'Ultima modificacao: '
   write(*,*)

   ! insira seus comandos
   write(*,*) 'numeros pares'
   repetir: do n=1,10
      if(mod(n,2)/= 0) cycle repetir
         write(*,*) ''
      write(*,*) n
   end do repetir

end program main
