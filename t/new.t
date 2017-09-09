use warnings;
use strict;
use Test::More tests => 5;

use Geo::OSM::Primitive::Node;
use Geo::OSM::Primitive::Relation;

my $osm_node = Geo::OSM::Primitive::Node->new(42, 47.509, 8.6431);

is($osm_node->{id }, 42     , 'node id'       );
is($osm_node->{lat}, 47.509 , 'node lattitude');
is($osm_node->{lon},  8.6431, 'node longitude');

my $osm_way = Geo::OSM::Primitive::Relation->new(99);
is ($osm_way->{id}, 99, 'Way id = 99');

my $osm_rel = Geo::OSM::Primitive::Relation->new(100);
is ($osm_rel->{id}, 100, 'Relation id = 100');
