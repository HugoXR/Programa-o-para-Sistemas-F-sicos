!  graficognuplot.f90
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
   real :: pontos, ponto
   integer :: ver, estado, estado2
   real :: x, y
   real, PARAMETER :: Pi = 3.1415927 
   real :: valores = Pi
   write(*,*)
   write(*,*) 'Objetivo do programa: '
   write(*,*)
   write(*,*) 'Autor: '
   write(*,*) 'Matricula: '
   write(*,*) 'Data do programa: '
   write(*,*) 'Ultima modificacao: '
   write(*,*)

   ! insira seus comandos
   
   write(*,*) 'Entre com o numero de pontos'
   read(*,*) pontos
   
   open(unit = 10, file='Dados.txt', status='unknown', iostat=estado)
   open(unit = 11, file='plot.plt', status='unknown', iostat=estado2)
   
   if(estado /= 0) stop
   if(estado2 /= 0) stop
   
   ponto = 1    
   do 
      if(ponto >= pontos) exit
      x = ponto * valores
      y = sin(x)
      write(10,40) x, y
      40 format (2 (1PE10.2)) 
      ponto = ponto + 0.5
      write(*,*) ponto
   end do
    
     write(11, *) 'set border linewidth 1.5'
     write(11, *) 'set style line 1 linecolor rgb "#0060ad" linetype 1 linewidth 2'
     write(11, *) 'set title "Grafico Sin(x)"'
     write(11, *) 'set xlabel "X"'
     write(11, *) 'set ylabel "sin(x)"'
     write(11, *) 'm="Dados.txt"'
     write(11, *) 'set xrange [0:',x,']'
     write(11, *) 'plot sin(x) with lines linestyle 1'
   
   close(10)
   close(11)
   
   ver = system('gnuplot -p plot.plt')   
end program main
