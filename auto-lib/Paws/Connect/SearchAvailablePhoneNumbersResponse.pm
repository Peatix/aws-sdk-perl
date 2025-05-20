
package Paws::Connect::SearchAvailablePhoneNumbersResponse;
  use Moose;
  has AvailableNumbersList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::AvailableNumberSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchAvailablePhoneNumbersResponse

=head1 ATTRIBUTES


=head2 AvailableNumbersList => ArrayRef[L<Paws::Connect::AvailableNumberSummary>]

A list of available phone numbers that you can claim to your Amazon
Connect instance or traffic distribution group.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

