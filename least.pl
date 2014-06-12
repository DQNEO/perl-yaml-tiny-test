#!/usr/bin/env perl

use YAML::Tiny;
use Encode;

$yamltext = Encode::encode('UTF8',do {local $/; open my $fh,'<:encoding(cp932)', "sjis.yml"; <$fh>;});
$tree = YAML::Tiny->read_string($yamltext);
print $tree->[0]{'test'}[0]{'str'};
