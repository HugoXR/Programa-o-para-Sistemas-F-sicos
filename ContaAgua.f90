!  ContaAgua.f90
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
   character (len=30) :: nomeConsumidor !Nome do Consumidor
   character (len=30) :: nomeArquivoEntrada !Nome do arquivo de Entrada
   character (len=30) :: nomeArquivoSaida !Nome do arquivo de Saida
   character (len=100), dimension(7) :: cabecalho !Cabecalho da empresa de cobrancas
   integer :: leituraMesAnterior !Leitura do consumo de agua(em metros cubicos) do mes anterior
   integer :: leituraMesCorrente !Leitura do consumo de agua(em metros cubicos) do mes corrente
   integer :: quantidadeTotalConsumida !Quantidade de agua(em metros cubicos) total consumida no mes
   integer :: estado !Estado do arquivo de entrada
   integer :: estado2  !Estado do arquivo de saida
   integer :: i !indice de entrada ou saída das linhas do cabecalho
   real :: valorPagar !Valor que deve ser pago de acordo com o consumo
   
   write(*,*)
   write(*,*) 'Objetivo do programa: Receber o consumo de agua da cidade de Fravinzamaba'
   write(*,*) 'e, para cada consumidor, atraves da leitura do consumo de agua do mes anterior'
   write(*,*) 'e do mes corrente, calcular o consumo de agua mensal e determianar o valor da'
   write(*,*) 'conta correspondente a quantidade de agua(por metros cubicos) consumida'
   write(*,*)
   write(*,*) 'Autor: Hugo Xavier Rodrigues'
   write(*,*) 'Matricula: 190108622'
   write(*,*) 'Data do programa: 26/10/2020'
   write(*,*) 'Ultima modificacao: 05/11/2020'
   write(*,*)

   ! insira seus comandos
   
   !Lendo o nome do arquivo de entrada
   write(*,*) 'Digite o nome do arquivo de entrada: '
   read(*,*) nomeArquivoEntrada
   
   !Lendo o nome do arquivo de saida
   write(*,*) 'Digite o nome do arquivo de saída: '
   read(*,*) nomeArquivoSaida
   
   !Abrindo o arquivo de entrada e abrindo e/ou criando o arquivo de saida
   open(unit = 10, file=nomeArquivoEntrada, status='old', iostat=estado)
   open(unit = 11, file=nomeArquivoSaida, status='unknown', iostat=estado2)
   
   !Verificando se abriu, ou criou, os arquivos
   if(estado /= 0) stop 'Erro'
   if(estado2 /= 0) stop 'Erro'
   
   !Lendo o cabecalho
   do i=1,7
        read(10, *, iostat=estado) cabecalho(i)
   end do
   
   do
      !Lendo o nome do consumidor, a leitura do mes anterior e do mes corrente
      read(10,*, iostat=estado) nomeConsumidor, leituraMesAnterior, leituraMesCorrente 
      
      !Sai do loop caso nao consiga ler, ou seja, caso nao tenha mais linhas
      if(estado /= 0) exit
      
      !Sai do loop caso a leitura do mes corrente ou anterior seja menor que 0 ou maior que 10000
      if(leituraMesCorrente < 0 .or. leituraMesAnterior < 0 .or. leituraMesCorrente > 10000 .or. leituraMesAnterior > 10000) then
         do i=1,5
            write(11,*) cabecalho(i)
         end do 
         write(11,*)
         write(11,*) 'Leitura do consumidor ', nomeConsumidor, ' invalida'
         write(11,*) 'Leitura do Mes Corrente = ',leituraMesCorrente
         write(11,*) 'Leitura do Mes Anterior = ',leituraMesAnterior
         write(11,*) '-------------------------------------------------------------------------------------'
         cycle 
      end if
      
      !Calculando a quantidade de agua consumida no mes
      !Caso ultrapasse os 10000 metros cubicos(maximo que pode ser registrado pelo aparelho)     
      if(leituraMesCorrente < leituraMesAnterior) then
         quantidadeTotalConsumida = (leituraMesCorrente) + (10000 - leituraMesAnterior)
      else
         !Caso nao tenha ultrapassado os 10000 metros cubicos(maximo que pode ser registrado pelo aparelho)
         quantidadeTotalConsumida = leituraMesCorrente - leituraMesAnterior
      end if
            
      !Calculando o valor a pagar de acordo com a quantidade de agua consumida no mes
      if(quantidadeTotalConsumida <= 7) then 
         valorPagar = quantidadeTotalConsumida * (2.99)
      else if(quantidadeTotalConsumida <= 13) then
         valorPagar = (7 * 2.99) + ((quantidadeTotalConsumida - 7) * (3.59))
      else if(quantidadeTotalConsumida <= 20) then
         valorPagar = (7 * 2.99) + (6 * 3.59) + ((quantidadeTotalConsumida - 13) * (7.10))
      else if (quantidadeTotalConsumida <= 30) then
         valorPagar = (7 * 2.99) + (6 * 3.59) + (7 * 7.10) + ((quantidadeTotalConsumida - 20) * (10.66))
      else if (quantidadeTotalConsumida <= 45) then
         valorPagar = (7 * 2.99) + (6 * 3.59) + (7 * 7.10) + (10 * 10.66) + ((quantidadeTotalConsumida - 30) * 17.05)
      else
         valorPagar = (7 * 2.99) + (6 * 3.59) + (7 * 7.10) + (10 * 10.66) + (15 * 17.05) + ((quantidadeTotalConsumida - 45) * 23.87)
      end if
      
      !Imprime a parte importante do cabecalho
      do i=1,5
          write(11,*) cabecalho(i)
      end do
      
      !Imprime o nome do consumidor, a leitura do mes anterior e corrente, a quantidade de agua consumida no mes
      !e o valor a pagar
      write(11,*)
      write(11,*) 'Nome do consumidor: ', nomeConsumidor
      write(11,*) 'Leitura do consumo do mês anterior ', leituraMesAnterior
      write(11,*) 'Leitura do consumo do mẽs corrente: ', leituraMesCorrente
      write(11,*) 'Quantidade de agua(em metros cubicos) total consumida: ', quantidadeTotalConsumida
      write(11,*) 'Valor a pagar: ', valorPagar
      write(11,*) '-------------------------------------------------------------------------------------'
      
   end do
   
   !Fechando os arquivos
   close(10)
   close(11)
end program main
