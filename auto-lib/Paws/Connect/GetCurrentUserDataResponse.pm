
package Paws::Connect::GetCurrentUserDataResponse;
  use Moose;
  has ApproximateTotalCount => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has UserDataList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::UserData]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetCurrentUserDataResponse

=head1 ATTRIBUTES


=head2 ApproximateTotalCount => Int

The total count of the result, regardless of the current page size.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 UserDataList => ArrayRef[L<Paws::Connect::UserData>]

A list of the user data that is returned.


=head2 _request_id => Str


=cut

