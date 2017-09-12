use warnings;
use strict;
use Test::More tests => 7;

use Geo::OSM::Primitive::Node;
use Geo::OSM::Primitive::Way ;

my $node_1 = Geo::OSM::Primitive::Node->new(42, 4.2, 2.4);
my $node_2 = Geo::OSM::Primitive::Node->new(43, 4.3, 3.4);
my $node_3 = Geo::OSM::Primitive::Node->new(44, 4.4, 4.4);
my $node_4 = Geo::OSM::Primitive::Node->new(45, 4.5, 5.4);

my $way   = Geo::OSM::Primitive::Way ->new(99);

$way->_set_cache_nodes($node_1, $node_2, $node_3, $node_4);

my @nodes = $way->nodes();

is (scalar @nodes, 4, '4 nodes');

is ($nodes[0]->{id}, 42, 'node 0: id 42');
is ($nodes[1]->{id}, 43, 'node 0: id 43');
is ($nodes[2]->{id}, 44, 'node 0: id 44');
is ($nodes[3]->{id}, 45, 'node 0: id 45');

is ($nodes[1]->lat, 4.3, 'lat of node 1: 4.3');
is ($nodes[1]->lon, 3.4, 'lat of node 1: 4.3');
