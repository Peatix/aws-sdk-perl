
package Paws::CustomerProfiles::GetSegmentEstimateResponse;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str');
  has Estimate => (is => 'ro', isa => 'Str');
  has EstimateId => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusCode => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetSegmentEstimateResponse

=head1 ATTRIBUTES


=head2 DomainName => Str

The unique name of the domain.


=head2 Estimate => Str

The estimated number of profiles contained in the segment.


=head2 EstimateId => Str

The C<QueryId> which is the same as the value passed in C<QueryId>.


=head2 Message => Str

The error message if there is any error.


=head2 Status => Str

The current status of the query.

Valid values are: C<"RUNNING">, C<"SUCCEEDED">, C<"FAILED">
=head2 StatusCode => Int

The status code of the segment estimate.


=head2 _request_id => Str


=cut

