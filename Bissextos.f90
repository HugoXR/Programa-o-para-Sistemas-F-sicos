!  Bissextos.f90
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
   logical :: bissexto !Verdadeiro se o ano e bissexto, e falso se nao for
   integer :: dia !Dia do ano
   integer :: mes !Mes do ano
   integer :: ano !Ano
   integer :: diaAno !Dia do Ano equivalente a dada inserida
   integer :: estado !Estado do primeiro arquivo
   integer :: estado2  !Estado do novo arquivo
   character (len=33) :: nomeArquivo !Nome do arquivo
   character (len=33) :: nomeArquivoNovo !Nome do arquivo novo
   character (len=33) :: nomeMes !Nome do mes
   !real ::
   
   write(*,*)
   write(*,*) 'Objetivo do programa: Ler uma data no formato DD MM AAAA e'
   write(*,*) 'calcular o dia do ano equivalente a esta data'
   write(*,*) 
   write(*,*) 'Autor: Hugo Xavier Rodrigues'
   write(*,*) 'Matricula: 190108622'
   write(*,*) 'Data do programa: 23-10-2020'
   write(*,*) 'Ultima modificacao: 30-10-2020'
   write(*,*)

   !insira seus comandos
   
   !Inserindo o nome do arquivo a ser lido
   write(*,*) 'Escreva o nome do arquivo a ser lido: '
   read(*,*) nomeArquivo
   
   !Inserindo o nome do arquivo a ser criado
   write(*,*) 'Escreva o nome do arquivo a ser criado: '
   read(*,*) nomeArquivoNovo
   
   !Abrindo ou criando arquivos
   open(unit = 11, file=nomeArquivo, status='old', iostat=estado)
   open(unit=10, file=nomeArquivoNovo, status='unknown', iostat=estado2)
   
   !Verificando se abriu, ou criou, os arquivos
   if(estado /= 0) stop 'Erro'
   if(estado2 /= 0) stop 'Erro'
   
   
   do
      !Lendo dia, mes e o ano do arquivo
      read(11, *, iostat=estado) dia, mes, ano
      
      !Sai do loop caso nao consiga ler
      if(estado /= 0) exit
      
      !Sai do loop caso o mes < 0 ou mes > 12
      if(mes > 12 .or. mes < 0) then
         write(*,*) 'Mes = ', mes, ' é invalido'
         stop
      end if
      
      !Verifica se o ano e bissexto
      if(int(ano / 4) * 4 == ano) then
         if(int(ano / 100) * 100 == ano) then
            if(int(ano / 400) * 400 == ano) then
               bissexto = .TRUE.
            else
               bissexto = .FALSE.
            end if
         else
            bissexto = .TRUE.
         end if
      else
         bissexto = .FALSE.
      end if  
      
      !Valida o dia apartir do mes
      if (dia > 31) then
         write(*,*) 'Dia = ', dia, ' no Mes =', mes,' do Ano =', ano,' é invalido'
         stop
      else if(((mes < 7) .and. (mod(mes,2) == 0) .and. (dia > 30)) .or. ((mes > 7) .and. (mod(mes,2) /= 0) .and. (dia > 30))) then
         write(*,*) 'Dia = ', dia, ' no Mes =', mes,' do Ano =', ano,' é invalido'
         stop
      else
         !Atribui o dia do ano equivalente a data, e atribui o nome do mes  
         select case(mes) 
         case(1)
            nomeMes = 'janeiro'
            diaAno = dia   
         case(2) 
            nomeMes = 'fevereiro'
            if((bissexto) .and. (dia <= 29)) then
               diaAno = 31 + dia
            else if(dia > 28) then
               write(*,*) 'Dia = ', dia, ' no Mes =', mes,' do Ano =', ano,' é invalido'
               stop
            else
               diaAno = 31 + dia
            end if
         case(3)
            nomeMes = 'marco'
            if(bissexto) then
               diaAno = 31 + 29 + dia
            else
               diaAno = 31 + 28 + dia
            end if   
         case(4)
            nomeMes = 'abril'
               if(bissexto) then
                  diaAno = 31 + 29 + 31 + dia
               else
                  diaAno = 31 + 28 + 31 + dia
               end if
         case(5)
           nomeMes = 'maio'
            if(bissexto) then
               diaAno = 31 + 29 + 31 + 30 + dia
            else
               diaAno = 31 + 28 + 31 + 30 + dia
            end if 
         case(6)
            nomeMes = 'junho'
            if(bissexto) then
               diaAno = 31 + 29 + 31 + 30 + 31 + dia
            else
               diaAno = 31 + 28 + 31 + 30 + 31 + dia
            end if

         case(7)
            nomeMes = 'julho'
            if(bissexto) then
               diaAno = 31 + 29 + 31 + 30 + 31 + 30 + dia
            else
               diaAno = 31 + 28 + 31 + 30 + 31 + 30 + dia
            end if
         case(8)
            nomeMes = 'agosto'
            if(bissexto) then
               diaAno = 31 + 28 + 31 + 30 + 31 + 30 + 31 + dia
            else
               diaAno = 31 + 28 + 31 + 30 + 31 + 30 + 31 + dia
            end if 
         case(9)
            nomeMes = 'setembro'
            if(bissexto) then
               diaAno = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + dia
            else
               diaAno = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + dia
            end if
         case(10)
            nomeMes = 'outubro'
            if(bissexto) then
               diaAno = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + dia
            else
               diaAno = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + dia
            end if 
         case(11)
            nomeMes = 'novembro'
            if(bissexto) then
               diaAno = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + dia
            else
               diaAno = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + dia
            end if
         case(12)
            nomeMes = 'dezembro'
            if(bissexto) then
               diaAno = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + 30 + dia
            else
               diaAno = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + 30 + dia
            end if 
         end select  
     end if 
     
     !Escrevendo os dados tratados no novo arquivo
     write(10,*) 'Para a data: ',dia,' de '//nomeMes//'de', ano
     write(10,*) 'O dia do ano é:', diaAno
     write(10,*)
      
   end do
   
   !Fechando os arquivos
   close(11)
   close(10)

end program main
