
package Paws::GlobalAccelerator::ListCrossAccountResourcesResponse;
  use Moose;
  has CrossAccountResources => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::CrossAccountResource]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::ListCrossAccountResourcesResponse

=head1 ATTRIBUTES


=head2 CrossAccountResources => ArrayRef[L<Paws::GlobalAccelerator::CrossAccountResource>]

The cross-account resources used with an accelerator.


=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.


=head2 _request_id => Str


=cut

1;