
package Paws::ARCZonalShift::UpdateZonalAutoshiftConfigurationResponse;
  use Moose;
  has ResourceIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceIdentifier', required => 1);
  has ZonalAutoshiftStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'zonalAutoshiftStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ARCZonalShift::UpdateZonalAutoshiftConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceIdentifier => Str

The identifier for the resource that you updated the zonal autoshift
configuration for. The identifier is the Amazon Resource Name (ARN) for
the resource.


=head2 B<REQUIRED> ZonalAutoshiftStatus => Str

The updated zonal autoshift status for the resource.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 _request_id => Str


=cut

