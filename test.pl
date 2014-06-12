#!/usr/bin/env perl

use strict;
use warnings;
use YAML::Tiny;
use Encode;

# on cygwin
my $output_enc = 'utf8';
# on active perl
# my $output_enc = 'cp932';

my $string =do {local $/; open my $fh,'<:encoding(cp932)', "sjis.yml"; <$fh>;};
my $tree = YAML::Tiny->read_string($string);
print Encode::encode($output_enc, $tree->[0]{'key'}), "\n";
