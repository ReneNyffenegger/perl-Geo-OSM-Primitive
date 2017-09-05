# Encoding and name #_{

=encoding utf8
=head1 NAME

Geo::OSM::Primitive - Abstract base classes for the three Open Street Map primitives: L<node|Geo::OSM::Primitive::Node>, L<way|Geo::OSM::Primitive::Way> and L<relation|Geo::OSM::Primitive::Relation>.

=cut
package Geo::OSM::Primitive;
#_}
#_{ use …
use warnings;
use strict;

use utf8;
use Carp;

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

    new($osm_id);


=cut

#_}

  my $class = shift;
  my $id    = shift;

  my $self = {};
  bless $self, $class;

  croak "Wrong class $class" unless $self->isa('Geo::OSM::Primitive');

  $self->{id} = $id;

  return $self;

} #_}

#_}
#_{ POD: Author

=head1 AUTHOR

René Nyffenegger

=cut

#_}
#_{ POD: See also

=head1 SEE ALSO

L<Geo::OSM::Render> is a base class to render osm data. L<Geo::OSM::Render::SVG> is a derivation of that base class to
render SVG files.

L<Geo::OSM::DBI> can be used to store Open Street Map data in a database. (It should be database independant (hence DBI), yet currently, it probably only works
with SQLite.

=cut

#_}
#_{ POD: Copyright and license

=head1 COPYRIGHT AND LICENSE
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
