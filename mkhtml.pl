#!/usr/bin/perl
$file = $ARGV[0];

open (INF, $file);
open (OUTF, ">test.html");

$line = <INF>;
$line =~ s/by /\nby\n/;
print "$line\n";

print OUTF "<HTML>\n";
print OUTF "<TITLE>\n";
print OUTF "$line\n";
print OUTF "</TITLE>\n";
print OUTF "<BODY>\n";
print OUTF "<center><h2>****</h2></center>";
while (<INF>) {
  $len = length($_);
  if ( $len < 32 ) {
    if ( m/C[Hh][Aa][Pp][Tt][Ee][Rr]/ ) {
     print OUTF "<h2>$_</h2>"
    } elsif ( m/I[Nn][Tt][Rr][Oo][Dd][Uu][Cc][Tt][Ii][Oo][Nn]/ ) {
     print OUTF "<h2>$_</h2>"
    } elsif ( m/C[Oo][Nn][Cc][Ll][Uu][Ss][Ii][Oo][Nn]/ ) {
      print OUTF "<h2>$_</h2>"
    } elsif ( m/F[Oo][Rr][Ee][Ww][Aa][Rr][Dd]/ ) {
     print OUTF "<h2>$_</h2>"
    } elsif ( m/F[Oo][Rr][Ee][Ww][Oo][Rr][Dd]/ ) {
     print OUTF "<h2>$_</h2>"
    } elsif ( m/P[Rr][Oo][Ll][Oo][Gg][Uu][Ee]/ ) {
      print OUTF "<h2>$_</h2>"
    } else {
      print OUTF "<p>$_</p>";
    }
  } else {
    print OUTF "<p>$_</p>";
  }
}
print OUTF "</BODY>\n</HTML>\n";
close(OUTF);
close(INF);
