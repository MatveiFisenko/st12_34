#!/usr/bin/perl

use strict;
use warnings;
use File::Path;
use Text::CSV;

my $orig_dir = shift;
my $target_dir = shift;
my $tr = shift;

die "Usage: cvs2php.pl <original_lang_dir> <target_lang_dir> <translation_file>\n"
    unless defined $orig_dir and defined $target_dir and defined $tr;
  
open TR, $tr or die "Can't open translation file: $!\n";
my %trans;
my $csv = Text::CSV->new ({ binary  => 1 });
while(<TR>) {
    s/[\r\n]//g;
    next if /^\s*$/;
    $csv->parse($_) or die "Can't parse line '$_' ".Text::CSV->error_diag()."\n";
    my @f = $csv->fields;
    $f[0] =~ s/(?<!\\)'//g;
    $f[1] =~ s/^\s*"*|\s{2,}$|"*$//g;
    $trans{$f[0]} = $f[1];
}
close TR;
#foreach my $t (sort {length($b) <=> length($a)} keys %trans) { print "$t:\t$trans{$t}\n"; } exit;

opendir(OD,$orig_dir) or die "Can't open original directory: $!\n";
mkpath($target_dir) unless -d $target_dir;
while($_ = readdir(OD)) {
    next if /^\./;
    open(S,"$orig_dir/$_") or die "Can't open file '$orig_dir/$_': $!\n";
    binmode(S);
    open(D,">$target_dir/$_") or die "Can't open file '$target_dir/$_': $!\n";
    while(my $l = <S>) {
        $l =~ s/\* en_US/* ru_RU/; # Suddenly!
        $l =~ s/english_UNITEDSTATES/russian_RUSSIAN/;
        foreach my $t (sort {length($b) <=> length($a)} keys %trans) {
            last if($l =~ s/(?<==> ')\s*\Q$t\E\s*/$trans{$t}/); # Dirty hack due to look-behind pattern limitation -- only fixed width implemented
            last if($l =~ s/(?<==>')\s*\Q$t\E\s*/$trans{$t}/);
            last if($l =~ s/(?<==> ")\s*\Q$t\E\s*/$trans{$t}/);
            last if($l =~ s/(?<==>")\s*\Q$t\E\s*/$trans{$t}/);
        }
        print D $l;
    }
    close D;
    close S;
    print "File '$_' translated\n";
}
closedir(OD);
