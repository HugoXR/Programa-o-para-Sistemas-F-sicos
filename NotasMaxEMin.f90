!  NotasMaxEMin.f90
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
   integer :: estado !Estado do arquivo de entrada
   integer :: estado2  !Estado do arquivo de saida
   integer :: i !Indice de colunas da matriz alunos
   integer :: j !Indice de linhas da matriz alunos
   integer :: contador !Contador da quantidade de alunos
   integer :: matricula !Matricula do aluno
   integer :: valorMatricula !Valor Temporario da matricula
   integer :: valorNota !Valor Temporario da nota
   integer :: nota !Nota do aluno
   real :: media !Media dos alunos
   real :: desvioPadrao !Desvio padrao dos alunos
   integer :: notaMin !Menor nota dentre os alunos
   integer :: matriculaMin !Matricula de menor nota 
   integer :: matriculaMax !Matricula de maior nota
   integer :: notaMax !Maior nota dentre os alunos
   integer, parameter :: TAMANHOLINHAS = 2 !Quantidade de linhas da matriz
   integer, parameter :: TAMANHOCOLUNAS = 50 !Quantidade de colunas da matriz
   integer, dimension(TAMANHOCOLUNAS, TAMANHOLINHAS) :: alunos !Matriz com as notas e matriculas dos alunos
   character (len=30) :: nomeArquivoEntrada !Nome do arquivo de entrada
   character (len=30) :: nomeArquivoSaida !Nome do arquivo de saida
   
   write(*,*)
   write(*,*) 'Objetivo do programa: Pegar a nota e a matricula de alguns alunos e'
   write(*,*) 'exibir a menor e a maior nota dentre eles, alem da media e o desvio'
   write(*,*) 'padrao das notas destes alunos'
   write(*,*)  
   write(*,*) 'Autor: Hugo Xavier Rodrigues'
   write(*,*) 'Matricula: 190108622'
   write(*,*) 'Data do programa: 07/11/2020'
   write(*,*) 'Ultima modificacao: 13/11/2020'
   write(*,*)

   ! insira seus comandos
   
   !Lendo o nome do arquivo de entrada
   write(*,*) 'Digite o nome do arquivo de entrada: '
   read(*,*) nomeArquivoEntrada
   
   !Lendo o nome do arquivo de saida
   write(*,*) 'Digite o nome do arquivo de saída: '
   read(*,*) nomeArquivoSaida
   
   !Inicializando contador de alunos
   contador = 0
   
   !Abrindo o arquivo de entrada e abrindo e/ou criando o arquivo de saida
   open(unit = 10, file=nomeArquivoEntrada, status='old', iostat=estado)
   open(unit = 11, file=nomeArquivoSaida, status='unknown', iostat=estado2)

   !Verificando se abriu, ou criou, os arquivos
   if(estado /= 0) stop 'Erro'
   if(estado2 /= 0) stop 'Erro'
   
   
   do
      !Lendo a matricula e a nota dos alunos
      read(10, *, iostat=estado) matricula, nota
   
      !Verificando se ainda há linhas
      if(estado /= 0) exit
      
      !Verificando se a matricula e nota sao validas
      if(matricula < 0 .or. nota < 0 .or. nota > 100) then
         write(*,*) 'Nota ou Matricula Invalida'
         stop
      end if
      
      !Contando a quantidade de alunos
      contador = contador + 1
      
      !Atribuindo a nota e matricula do aluno na matriz alunos
      alunos(contador, 2) = nota 
      alunos(contador, 1) = matricula
      
   end do
   
   !Verificando se ha valores validos no arquivo de entrada
   if(contador <= 0) then
      write(*,*) 'Nao ha valores validos no arquivo de entrada'
      stop
   end if
   
   !Ordenando de forma decrescente as notas dos alunos
   do i=1,(contador - 1)
      do j= i+1, contador
         if(alunos(j, 2) > alunos(i, 2)) then
            valorMatricula = alunos(j, 1)  
            valorNota = alunos(j, 2)
            alunos(j, 1) = alunos(i, 1)
            alunos(j, 2) = alunos(i, 2)
            alunos(i, 1) = valorMatricula
            alunos(i, 2) = valorNota
         end if
       end do  
   end do
   
   !Atribuindo as notas maximas e minimas dos alunos e devidas matriculas
   notaMin = alunos(contador, 2)
   matriculaMin = alunos(contador, 1)
   notaMax = alunos(1, 2)
   matriculaMax = alunos(1, 1)
   
   !Exibindo a matricula e notas correspondentes
   do j=1,contador
      
      write(11, *) 'Aluno de numero ', j
      write(11,*) 'Matricula: ', alunos(j, 1)
      write(11,*) 'Nota : ', alunos(j, 2) 
      write(11,*)
      
   end do
   
   !Exibindo a quantidade total de alunos
   write(11,*) 'A quantidade total de alunos e de', contador
   write(11,*)
   
   !Exibindo a menor e maior nota dentre os alunos
   write(11,*) 'Menor Nota'
   write(11,*) 'Matricula: ', matriculaMin
   write(11,*) 'Nota: ', notaMin
   write(11,*) 
   write(11,*) 'Maior Nota'
   write(11,*) 'Matricula: ', matriculaMax
   write(11,*) 'Nota', notaMax
   write(11,*)
   
   !Inicializando a media
   media = 0
   
   !Somando todas as notas dos alunos
   do i=1, contador      
      media = media + alunos(i, 2)
   end do
   
   !Calculando a media das notas dos alunos
   media = media/contador
   
   !Exibindo a media das notas dos alunos
   write(11,*) 'A media destes alunos e: ', media
   
   !Inicializando o desvio padrao
   desvioPadrao = 0
   if(contador <= 1) then
      continue
   else
      !Calculando o somatorio de (notas - media) ao quadrado
      do i=1, contador
         desvioPadrao = desvioPadrao + ((alunos(i, 2) - media)**2)
      end do
      
      !Calculando o desvio padrao das notas dos alunos
      desvioPadrao = sqrt(desvioPadrao / (contador - 1))
   end if
   
   !Exibindo o desvio padrao das notas dos alunos
   write(11, *) 'E o Desvio Padrao e de: ', desvioPadrao
   
end program main
