use warnings;
use strict;
use Test::More tests => 4;

use Geo::OSM::Primitive::Node;
use Geo::OSM::Primitive::Way ;

my $node_1 = Geo::OSM::Primitive::Node->new(42, 9.2, 6.1);
my $node_2 = Geo::OSM::Primitive::Node->new(43, 9.3, 7.1);
my $node_3 = Geo::OSM::Primitive::Node->new(44, 9.4, 8.1);
my $node_4 = Geo::OSM::Primitive::Node->new(45, 9.5, 9.1);

my $way = Geo::OSM::Primitive::Way->new(42, 4.2, 2.4);
$way->_set_cache_nodes($node_1, $node_2, $node_3, $node_4);

my ($lat_start, $lon_start, $lat_end, $lon_end) = $way -> start_end_coordinates();

is($lat_start, 9.2, 'lat start = 9.2');
is($lon_start, 6.1, 'lon start = 6.1');
is($lat_end  , 9.5, 'lat end   = 9.5');
is($lon_end  , 9.1, 'lon end   = 9.1');
