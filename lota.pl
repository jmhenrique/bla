#!/usr/bin/perl 

use strict;
use warnings;


#checar argumento
my $param = $ARGV[0];


unless (defined $param ) { print "Insira o caminho do arquivo a ser lido\n"; exit };
unless (-e $param) { print "Não consigo ler o arquivo $param\n"; exit ;}



#####################nao faz nada ainda 

my @d=() ; 
my @total25=();
my $arquivo = shift;
my @array;
my $elemento=0;
my $aa; 
my $ab;
my $count;
# if ($arquivo =~ /^([-\@\w.]+)$/) { $arquivo = $1; } 

# else{die "arquivo contem caracteres proibidos" ;}

open(my $fh, '<:encoding(UTF-8)', $arquivo)  
or die "Não foi possível abrir o arquivo '$arquivo' $!";
chomp(@array = <$fh>);
# 
# while( my $linha = <$fh>)  {   
#     print $linha;    
# #     last if $. == 2;
# }
close $fh;

s/#0/ /g for @array;
s/#/ /g for @array;


s/0([0-9])/$1/g for @array;

#inicializa o vetor resposta
foreach my $i (0..24) { $total25[$i]=0; } 
   foreach $aa (@array)  { 
      @d=split(' ',$aa);
      $count=0;
      foreach $elemento (@d)  {
         $total25[$elemento]++;
         $count ++ ;
         } 
# print "=================\n";
    }

$count=1;
shift @total25 ; 
foreach $ab (@total25) { print "$count $ab\n" ; $count++} 