use Test::More tests => 3;

use Geo::OSM::Primitive::Node;

my $osm_node = Geo::OSM::Primitive::Node->new(42, 47.509, 8.6431);

is($osm_node->{id }, 42     , 'node id'       );
is($osm_node->{lat}, 47.509 , 'node lattitude');
is($osm_node->{lon},  8.6431, 'node longitude');
