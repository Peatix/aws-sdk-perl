
package Paws::Connect::DescribePhoneNumberResponse;
  use Moose;
  has ClaimedPhoneNumberSummary => (is => 'ro', isa => 'Paws::Connect::ClaimedPhoneNumberSummary');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribePhoneNumberResponse

=head1 ATTRIBUTES


=head2 ClaimedPhoneNumberSummary => L<Paws::Connect::ClaimedPhoneNumberSummary>

Information about a phone number that's been claimed to your Amazon
Connect instance or traffic distribution group.


=head2 _request_id => Str


=cut

