use warnings;
use strict;

use Test::More tests => 2;

use Geo::OSM::Primitive::Node;

my $node = Geo::OSM::Primitive::Node->new(42, 6.7, 8.9);

is($node->lat, 6.7);
is($node->lon, 8.9);
