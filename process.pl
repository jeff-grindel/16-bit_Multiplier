#!/usr/bin/env perl
use strict;
use warnings FATAL => 'all';

print "\n Processing Data \n";
my $infile = $ARGV[0] or die "$0 Usage:\n\t$0 <input file>\n\n";               

open my $in,  "<", $infile     or die $!;  
open my $out, ">", $infile.".out" or die $!;

while (<$in>) {
	
    s/\s+\Z/\n/;
    s/ +/,/g;
	s/\n//g;
	s/,index,/\nindex\t/;
	s/,1,/\n1,/;
	s/,2,/\n2,/;
	s/,3,/\n3,/;
	s/,4,/\n4,/;
	s/,5,/\n5,/;
	s/,6,/\n6,/;
	s/,7,/\n7,/;
	s/,8,/\n8,/;
	s/,9,/\n9,/;
	s/,10,/\n10,/;
	    
	print $out $_;
    }

close $in; 
close $out; 
 
print "\n Done!\n";
