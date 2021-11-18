!  Massa_Remanescente_Meia_Vida.f90
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


program massa_remanescente
   implicit none
   !integer ::
   real :: MassaInicial ! Massa inicial da substância em gramas
   real :: VidaMedia ! Quantidade de massa radioativa perdida apos x dias
   real :: Tempo ! Tempo em dias
   real :: Residuo ! Massa radioativa residual do isotopo em gramas
   
   write(*,*)
   write(*,*) 'Objetivo do programa: Calcular a quantidade de substancia radioativa restante'
   write(*,*)
   write(*,*) 'Autor: Hugo Xavier Rodrigues'
   write(*,*) 'Matricula: 190108622'
   write(*,*) 'Data do programa: 04-09-2020'
   write(*,*) 'Ultima modificacao: 04-09-2020'
   write(*,*)

   ! insira seus comandos
   
   write(*,*) 'Digite a vida média do isotopo em dias: '
   read(*,*) VidaMedia
   
   write(*,*) 'Digite a massa inicial do isotopo em gramas: '
   read(*,*) MassaInicial
   
   write(*,*) 'Digite o tempo decorrido em dias: '
   read(*,*) Tempo
   
   ! Calculo da massa residual	
   Residuo = MassaInicial * 0.5 ** (Tempo/VidaMedia)
   
   write(*,*) 'Massa Inicial = ', MassaInicial, 'gramas' 
   write(*,*) 'Vida Media do isotopo = ', VidaMedia, 'dias'
   write(*,*) 'Tempo = ', Tempo, 'dias'
   
   write(*,*) 'Quantidade Residual = ', Residuo
   
end program massa_remanescente
