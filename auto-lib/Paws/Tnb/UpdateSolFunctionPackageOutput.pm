
package Paws::Tnb::UpdateSolFunctionPackageOutput;
  use Moose;
  has OperationalState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operationalState', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::UpdateSolFunctionPackageOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> OperationalState => Str

Operational state of the function package.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 _request_id => Str


=cut

