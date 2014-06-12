#!/usr/bin/env perl

use strict;
use warnings;
use YAML::Tiny;
use Encode;

my $yamltext = Encode::encode('UTF8',do {local $/; open my $fh,'<:encoding(cp932)', "sjis.yml"; <$fh>;});
my $tree = YAML::Tiny->read_string($yamltext);
print $tree->[0]{'str'};
