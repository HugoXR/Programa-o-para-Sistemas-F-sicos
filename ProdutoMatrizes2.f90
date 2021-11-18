!  ProdutoMatrizes2.f90
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
   integer :: estado2 !Estado do arquivo de saida
   integer :: indiceColuna !Indice da coluna das matrizes
   integer :: indiceLinha !Indice da linha das matrizes
   integer :: indiceLinhaMatrizProduto !Indice da linha da matriz resultante do produto
   integer :: qtdColunas !Quantidade Total de Colunas da matriz
   integer :: qtdLinhas !Quantidade Total de Linhas da matriz
   real :: soma !Soma do produto entre os elementos da linha pela coluna das matrizes
   real, dimension(1000,1000) :: matrizA !Primeira e Terceira Matriz 
   real, dimension(1000,1000) :: matrizB !Segunda e Quarta Matriz
   integer, dimension(1000,1000) :: matrizC !Matriz Resultante do produto da primeira pela segunda e da terceira pela quarta
   character (len=30) :: nomeArquivoEntrada !Nome do arquivo de entrada
   character (len=30) :: nomeArquivoSaida !Nome do arquivo de saida
   !real ::
   
   write(*,*)
   write(*,*) 'Objetivo do programa: Ler as matrizes quadradas de um arquivo e calcular'
   write(*,*) 'o produto entre as duas, das matrizes dadas e escrever em um arquivo de'
   write(*,*) 'saída'
   write(*,*)
   write(*,*) 'Autor: Hugo Xavier Rodrigues'
   write(*,*) 'Matricula: 190108622'
   write(*,*) 'Data do programa: 26/11/2020'
   write(*,*) 'Ultima modificacao: 26/11/2020'
   write(*,*)

   ! insira seus comandos
   
   !Lendo nome do arquivo de entrada
   write(*,*) 'Digite o nome do arquivo de entrada: '
   read(*,*) nomeArquivoEntrada
   
   !Lendo nome do arquivo de saida
   write(*,*) 'Digite o nome do arquivo de saida: '
   read(*,*) nomeArquivoSaida
   
   
   !Abrindo o arquivo de entrada e abrindo e/ou criando o arquivo de saida
   open(unit = 10, file=nomeArquivoEntrada, status='old', iostat=estado)
   open(unit = 11, file=nomeArquivoSaida, status='unknown', iostat=estado2)
   

   !Verificando se abriu, ou criou, os arquivos
   if(estado /= 0) stop 'Erro'
   if(estado2 /= 0) stop 'Erro'
   
      do
         !Lendo a quantidade de linhas e colunas das matrizes
         read(10, *, iostat=estado) qtdLinhas, qtdColunas 
         
         if(estado /= 0) exit
         
         if(qtdLinhas /= qtdColunas) then
            write(*,*) 'Erro, deve-se inserir uma matriz quadrada'
            exit   
         end if
         
         if(qtdLinhas > 1000 .or. qtdColunas > 1000) then
            write(*,*) 'Erro, a matriz deve ter uma quantidade de linhas e colunas'
            write(*,*) 'menor que 1000'
            exit   
         end if
         
         !Lendo os valores dos elementos das duas matrizes dada
         do indiceLinha = 1, qtdLinhas
            read(10, *) (matrizA(indiceLinha, indiceColuna), indiceColuna=1, qtdColunas),&
            (matrizB(indiceLinha,indiceColuna), indiceColuna=1, qtdColunas)
         end do 
   
         !Calculando o produto das duas matrizes e atribuindo a uma terceira matriz
         do indiceLinhaMatrizProduto = 1, qtdLinhas
            do indiceLinha = 1, qtdLinhas
               soma = 0
               do indiceColuna = 1, qtdColunas
                  soma = soma + (matrizA(indiceLinhaMatrizProduto,indiceColuna)*matrizB(indiceColuna,indiceLinha))
               end do
               matrizC(indiceLinhaMatrizProduto, indiceLinha) = int(soma)
            end do
         end do
      
         !Imprimindo a quantidade de linhas e colunas das matrizes
         write(11, *) 'Matrizes ', qtdLinhas,'x',qtdColunas,' : '
         write(11,*) '-----------------------------------------------------'
   
         !Imprimindo a primeira matriz A
         write(11,*) 'Matriz A'
         do indiceLinha =  1, qtdLinhas
            write(11,*) '|',(matrizA(indiceLinha, indiceColuna), indiceColuna=1, qtdColunas),'|'
         end do 
   
         write(11,*) '-----------------------------------------------------'
   
         !Imprimindo a segunda matriz B
         write(11,*) 'Matriz B'
         do indiceLinha =  1, qtdLinhas
            write(11,*) '|',(matrizB(indiceLinha, indiceColuna), indiceColuna=1, qtdColunas),'|'
         end do 
  
         write(11,*) '-----------------------------------------------------'
  
         !Imprimindo a matriz C resultante do produto de A com B
         write(11,*) 'Matriz C = A*B ='
         do indiceLinha =  1, qtdLinhas
            write(11,*) '|',(matrizC(indiceLinha, indiceColuna), indiceColuna=1, qtdColunas),'|'
         end do 
   
         write(11,*) '-----------------------------------------------------'

         write(11,*) '======================================================'
      
      end do


end program main
