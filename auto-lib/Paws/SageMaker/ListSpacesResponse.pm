
package Paws::SageMaker::ListSpacesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Spaces => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::SpaceDetails]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListSpacesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the previous response was truncated, you will receive this token.
Use it in your next request to receive the next set of results.


=head2 Spaces => ArrayRef[L<Paws::SageMaker::SpaceDetails>]

The list of spaces.


=head2 _request_id => Str


=cut

1;