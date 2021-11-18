!  GorduraCorporal.f90
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


program gordura_corporal
   implicit none
   !integer ::
   character (len=33):: sexo !Sexo do Adulto
   character (len=33):: biotipo !Biotipo do Adulto
   real :: pesoMagro !Peso Magro em Kg do Adulto
   real :: pesoGordo !Peso Gordo em Kg do Adulto
   real :: pesoResidual !Peso Residual em Kg do Adulto
   real :: pesoTotal !Peso Total em Kg do Adulto
   real :: porcentagemDeGordura !Porcentagem de Gordura Corporal
   
   write(*,*)
   write(*,*) 'Objetivo do programa: Ler os dados acerca do peso e sexo de uma pessoa'
   write(*,*) 'a fim de calcular a porcentagem de gordura corporal e o retornar o biotipo'
   write(*,*) 'dela'
   write(*,*)
   write(*,*) 'Autor: Hugo Xavier Rodrigues'
   write(*,*) 'Matricula: 190108622'
   write(*,*) 'Data do programa: 17/10/2020'
   write(*,*) 'Ultima modificacao: 21/10/2020'
   write(*,*)

   ! insira seus comandos
   
   write(*,*) 'Digite o sexo da pessoa(F para feminino e M para masculino): '
   read(*,*) sexo ! F para Feminino e M para Masculino
   
   !Validacao para sexo diferente de M(m) para Masculino, ou F(f) para Feminino 
   if(sexo /= 'M' .and. sexo /= 'm' .and. sexo /= 'F' .and. sexo /= 'f') then
      stop 'Sexo Invalido'
   end if      
   
   write(*,*) 'Digite o peso magro da pessoa(em Kg): '
   read(*,*) pesoMagro
   
   !Validacao para que o peso seja maior ou igual a 0
   if(pesoMagro <= 0) then
      stop 'Peso Invalido'
   end if
   
   write(*,*) 'Digite o peso gordo da pessoa(em Kg): '
   read(*,*) pesoGordo
   
   !Validacao para que o peso seja maior ou igual a 0
   if(pesoMagro <= 0) then
      stop 'Peso Invalido'
   end if
   
   write(*,*) 'Digite o peso residual da pessoa(em Kg): '
   read(*,*) pesoResidual
   
   !Validacao para que o peso seja maior ou igual a 0
   if(pesoMagro <= 0) then
      stop 'Peso Invalido'
   end if
   
   pesoTotal = pesoMagro + pesoGordo + pesoResidual
   porcentagemDeGordura = (100*pesoGordo)/pesoTotal
   
   !Atribuicao do biotipo de acordo com o sexo e porcentagem de gordura
   if(sexo == 'M' .or. sexo == 'm') then
      if(porcentagemDeGordura < 2) then
         biotipo = 'Nao Especificado'
      else if(porcentagemDeGordura <= 5) then
         biotipo = 'Gordura essencial'
      else if(porcentagemDeGordura <= 13) then
         biotipo = 'Atletico'
      else if(porcentagemDeGordura <= 17) then
         biotipo = 'Em boa condicao fisica'
      else if(porcentagemDeGordura <= 24) then
         biotipo = 'Aceitavel'
      else if(porcentagemDeGordura > 25) then
         biotipo = 'Acima do peso'
      end if      
   else
      if(porcentagemDeGordura < 10) then
         biotipo = 'Nao Especificado'
      else if(porcentagemDeGordura <= 13) then
         biotipo = 'Gordura essencial'
      else if(porcentagemDeGordura <= 20) then
         biotipo = 'Atletico'
      else if(porcentagemDeGordura <= 24) then
         biotipo = 'Em boa condicao fisica'
      else if(porcentagemDeGordura <= 31) then
         biotipo = 'Aceitavel'
      else if(porcentagemDeGordura > 32) then
         biotipo = 'Acima do peso'
      end if      
   end if
   
   write(*,*) '------------------------------'
   if(sexo == 'f' .or. sexo == 'F') then
      write(*,*) 'Sexo Feminino'
   else
      write(*,*) 'Sexo Masculino'
   endif
   
   write(*,*) 'Peso Magro = ', pesoMagro, 'kg' 
   write(*,*) 'Peso Gordo = ', pesoGordo, 'kg'
   Write(*,*) 'Peso Residual = ', pesoResidual, 'kg'
   write(*,*) 'Peso Total = ', pesoTotal, 'kg'
   write(*,*) 'Porcentagem de Gordura = ', aint(porcentagemDeGordura), '%'
   write(*,*) 'Biotipo: ', biotipo
end program gordura_corporal
