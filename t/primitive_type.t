use warnings;
use strict;
use Test::More tests => 3;

use Geo::OSM::Primitive::Node    ;
use Geo::OSM::Primitive::Way     ;
use Geo::OSM::Primitive::Relation;

my $nod   = Geo::OSM::Primitive::Way     ->new(1);
my $way   = Geo::OSM::Primitive::Node    ->new(2);
my $rel   = Geo::OSM::Primitive::Relation->new(3);

is($way->primitive_type(), 'nod', '$way is a way');
is($nod->primitive_type(), 'way', '$nod is a nod');
is($rel->primitive_type(), 'rel', '$rel is a rod');
