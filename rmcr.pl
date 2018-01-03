#!/usr/bin/perl

$file=$ARGV[0];

open(FILE, $file);

open(OUTFILE,">tmp.dat");

$line = <FILE>;
$line =~ s/\r/\n/g;
  
printf OUTFILE "$line\n";

close(FILE);
close(OUTFILE);

open (FILE, "tmp.dat");

while (<FILE>) {
  ##print "$_";
}
