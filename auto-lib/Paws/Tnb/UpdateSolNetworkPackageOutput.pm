
package Paws::Tnb::UpdateSolNetworkPackageOutput;
  use Moose;
  has NsdOperationalState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsdOperationalState', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::UpdateSolNetworkPackageOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> NsdOperationalState => Str

Operational state of the network service descriptor in the network
package.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 _request_id => Str


=cut

