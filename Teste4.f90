!  Teste4.f90
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
   integer :: estado, contador
   !real ::
   character (len=33) :: nome_arquivo, x
   write(*,*)
   write(*,*) 'Objetivo do programa: '
   write(*,*)
   write(*,*) 'Autor: '
   write(*,*) 'Matricula: '
   write(*,*) 'Data do programa: '
   write(*,*) 'Ultima modificacao: '
   write(*,*)

   ! insira seus comandos
   write(*,*) 'Escreva o nome do arquivo: '
   read(*,*) nome_arquivo
   contador = 0
   open(unit = 11, file=nome_arquivo, status='old', iostat=estado)
   if(estado /= 0) stop 'Erro'
   
   do
      read(11, *, iostat=estado) x
      if(estado /= 0) exit
      write(*,*) x
      contador = contador + 1
   end do
   
   write(*,*)
   write(*,*) 'Lidos e tranferidos', contador, ' dados'
   write(*,*)
   close(11)
   
end program main
