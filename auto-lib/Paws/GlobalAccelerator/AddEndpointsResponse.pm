
package Paws::GlobalAccelerator::AddEndpointsResponse;
  use Moose;
  has EndpointDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::EndpointDescription]');
  has EndpointGroupArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::AddEndpointsResponse

=head1 ATTRIBUTES


=head2 EndpointDescriptions => ArrayRef[L<Paws::GlobalAccelerator::EndpointDescription>]

The list of endpoint objects.


=head2 EndpointGroupArn => Str

The Amazon Resource Name (ARN) of the endpoint group.


=head2 _request_id => Str


=cut

1;