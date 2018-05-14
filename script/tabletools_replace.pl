#!/usr/bin/perl -w

use strict;
use warnings;
my $usage = <<"USAGE";
		Program : $0
        Discription: change first index 
        Usage:perl $0 indexvsindex file colnumofindex final_col_num_of_index
USAGE

if (!$ARGV[1] || $ARGV[0] eq "-h") {
	print "$usage";	
	exit;
}

my %indexchange;

my $index_file = shift;
my $change_file =shift;
my $col_index =shift;
open (FIN, "<$index_file");
while(<FIN>){
	chomp;
	my $line = $_;
	if($_=~/^([^\t]*)\t([\s\S]*)$/){
		$indexchange{$1} = $2;
		# print $1."\n";
	}else{
		die "the $index_file format is wrong";				
	}		
}
close FIN;

open (FIN2, "<$change_file");
open (OUT1, ">$change_file.new");


while(<FIN2>){
	chomp;
	#print $_;
	my @line=split(/\t/,$_);
	#print $#line;
	if($#line >= $col_index  && $line[$col_index] ne ""){
		if (exists $indexchange{$line[$col_index]}){
			#print $line[$col_index]."\n";
			#print $indexchange{$line[$col_index]}."\n";
			#print $1;
			$line[$col_index] = $indexchange{$line[$col_index]};
			my $out = join("\t",@line);
			print OUT1 $out."\n";
		}else{
			my $out = join("\t",@line);
			print OUT1 "$out\n";
		}
	}else{
		if (exists $indexchange{$_}){
			#print $1;
			print OUT1 "$indexchange{$_}"."\n";
		}else{
			print OUT1 "$_"."\n";
		}
	}
}	
close FIN2;
close OUT1;
