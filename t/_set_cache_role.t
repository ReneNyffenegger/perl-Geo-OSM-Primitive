use warnings;
use strict;

use Geo::OSM::Primitive::Relation;
use Geo::OSM::Primitive::Way;
use Geo::OSM::Primitive::Node;

use Test::More tests => 9;

my $rel_0 = Geo::OSM::Primitive::Relation->new(100);
my $rel_1 = Geo::OSM::Primitive::Relation->new(101);
my $rel_2 = Geo::OSM::Primitive::Relation->new(102);

my $way   = Geo::OSM::Primitive::Node    ->new(200);
my $nod   = Geo::OSM::Primitive::Way     ->new(201);
my $rel   = Geo::OSM::Primitive::Relation->new(202);


$way->_set_cache_role($rel_0, 'foo');
$nod->_set_cache_role($rel_0, 'bar');
$rel->_set_cache_role($rel_0, 'baz');

$way->_set_cache_role($rel_1, 'oof');
$nod->_set_cache_role($rel_1, 'rab');
$rel->_set_cache_role($rel_1, 'zab');

is ($way->role($rel_0), 'foo');
is ($nod->role($rel_0), 'bar');
is ($rel->role($rel_0), 'baz');

is ($way->role($rel_1), 'oof');
is ($nod->role($rel_1), 'rab');
is ($rel->role($rel_1), 'zab');

is ($way->role($rel_2), undef);
is ($nod->role($rel_2), undef);
is ($rel->role($rel_2), undef);
