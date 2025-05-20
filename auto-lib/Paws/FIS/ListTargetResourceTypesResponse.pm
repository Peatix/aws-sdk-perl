
package Paws::FIS::ListTargetResourceTypesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TargetResourceTypes => (is => 'ro', isa => 'ArrayRef[Paws::FIS::TargetResourceTypeSummary]', traits => ['NameInRequest'], request_name => 'targetResourceTypes');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::ListTargetResourceTypesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 TargetResourceTypes => ArrayRef[L<Paws::FIS::TargetResourceTypeSummary>]

The target resource types.


=head2 _request_id => Str


=cut

