!  OrdenarVetores].f90
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
   integer, dimension(50) :: dados !Vetor com os dados lidos
   integer :: dado !Dado lido
   integer :: dadoTemp !Dado temporario
   integer :: contador !Contador da quantidade de dados
   integer :: estado !Estado do programa de entrada
   integer :: estado2 !Estado do programa de saida
   integer :: i, j !Indices do vetor
   character (len = 30) :: nomeArquivoEntrada !Nome arquivo de entrada
   character (len = 30) :: nomeArquivoSaida !Nome arquivo de saida
   !real ::
   write(*,*)
   write(*,*) 'Objetivo do programa: Ler os dados de um arquivo, verificar a'
   write(*,*) 'validade dos mesmos, ordena-los de forma crescente e imprimir em'
   write(*,*) 'um arquivo a quantidade de dados validos, os dados válidos lidos'
   write(*,*) 'e os dados lidos ordenados'
   write(*,*)
   write(*,*) 'Autor: Hugo Xavier Rodrigues'
   write(*,*) 'Matricula: 190108622'
   write(*,*) 'Data do programa: 18/11/2020'
   write(*,*) 'Ultima modificacao: 20/11/2020'
   write(*,*)

   ! insira seus comandos
   
   !Atribuindo nome do arquivo de entrada e saida
   write(*,*) 'Digite o nome do arquivo de entrada: '
   read(*,*) nomeArquivoEntrada
   write(*,*) 'Digite o nome do arquivo de saida: '
   read(*,*) nomeArquivoSaida
   
   
   !Abrindo o arquivo de entrada e abrindo e/ou criando o arquivo de saida
   open(unit = 10, file=nomeArquivoEntrada, status='old', iostat=estado)
   open(unit = 11, file=nomeArquivoSaida, status='unknown', iostat=estado2)
   
   !Verificando se abriu, ou criou, os arquivos
   if(estado /= 0) stop 'Erro'
   if(estado2 /= 0) stop 'Erro'
   
   contador = 0
   do
      !Lendo os dados
      read(10, *, iostat = estado) dado
      
      
      !Verificando se ainda há linhas
      if(estado /= 0) exit
      
      !Validando os dados      
      if(dado > 0) then
         contador = contador + 1  
         dados(contador) = dado
      else 
         continue
      end if 
            
   end do
   
   !Apresentando a quantidade de dados validos
   write(11,*) 'Quantidade de Dados Válidos'
   write(11,*) contador
   
   !Apresentando os dados lidos
   write(11,*) '----------------------------------------'
   write(11,*) 'Dados Lidos'
   do j=1,contador
      write(11,*) dados(j)
   end do
   
   !Ordenando os dados
   do i=1,contador
      do j=1,contador
         if(dados(j) > dados(i)) then
            dadoTemp = dados(i)
            dados(i) = dados(j)
            dados(j) = dadoTemp
         end if
      end do
   end do
   
   !Aoresentando os dados ordenados 
   write(11,*) '----------------------------------------'
   write(11,*) 'Dados ordenados'
   do i=1,contador
      write(11,*) dados(i)
   end do
end program main
