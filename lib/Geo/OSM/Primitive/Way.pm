# Encoding and name #_{

=encoding utf8
=head1 NAME

Geo::OSM::Primitive::Way - Abstract base class for the Open Street Map data primitive I<way>.

=cut
package Geo::OSM::Primitive::Way;
our @ISA = qw(Geo::OSM::Primitive);
#_}
#_{ use …
use warnings;
use strict;

use utf8;
use Carp;
use Geo::OSM::Primitive;

#_}
our $VERSION = 0.01;
#_{ Synopsis

=head1 SYNOPSIS

    …

=cut
#_}
#_{ Overview

=head1 OVERVIEW

The idea is to encapsulte methods that use OpenStreetMap data (that is possibly stored in L<Geo::OSM::DBI>.

=cut

#_}
#_{ Methods

=head1 METHODS
=cut

sub new { #_{
#_{ POD

=head2 new

    my $way = Geo::OSM::Primitive::Way->new($osm_way_id);

=cut

#_}

  my $class = shift;
  my $id    = shift;

  my $self = $class->SUPER::new($id, 'way');
  croak "Wrong class $class" unless $self->isa('Geo::OSM::Primitive::Way');

  $self->{nodes} = [];

  return $self;

} #_}
# sub add_node { #_{
# #_{ POD
# 
# =head2 add_node
# 
#     my $node = Geo::OSM::Primitive::Node->new($osm_node_id …);
#     my $way  = Geo::OSM::Primitive::Way ->new($osm_way_id  …);
# 
#     $way->add_node($node);
# 
# =cut
# 
# #_}
# 
#   my $self = shift;
#   my $node = shift;
# 
#   croak "$node is not a Geo::OSM::Primitive::Node" unless $node->isa($node);
#   push @{$self->{nodes}}, $node;
# 
# } #_}
# sub cnt_nodes { #_{
# #_{ POD
# 
# =head2 cnt_nodes
# 
#     my $cnt_nodes_in_way = $way->cnt_nodes();
# 
# =cut
# 
# #_}
# 
#   my $self = shift;
# 
#   return scalar @{$self->{nodes}}
# 
# } #_}

#_}
#_{ POD: Copyright

=head1 Copyright
Copyright © 2017 René Nyffenegger, Switzerland. All rights reserved.
This program is free software; you can redistribute it and/or modify it
under the terms of the the Artistic License (2.0). You may obtain a
copy of the full license at: L<http://www.perlfoundation.org/artistic_license_2_0>
=cut

#_}
#_{ POD: Source Code

=head1 Source Code

The source code is on L<< github|https://github.com/ReneNyffenegger/perl-Geo-OSM-Primitive >>. Meaningful pull requests are welcome.

=cut

#_}

'tq84';
