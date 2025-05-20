
package Paws::CustomerProfiles::CreateSegmentEstimateResponse;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str');
  has EstimateId => (is => 'ro', isa => 'Str');
  has StatusCode => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::CreateSegmentEstimateResponse

=head1 ATTRIBUTES


=head2 DomainName => Str

The unique name of the domain.


=head2 EstimateId => Str

A unique identifier for the resource. The value can be passed to
C<GetSegmentEstimate> to retrieve the result of segment estimate
status.


=head2 StatusCode => Int

The status code for the response.


=head2 _request_id => Str


=cut

