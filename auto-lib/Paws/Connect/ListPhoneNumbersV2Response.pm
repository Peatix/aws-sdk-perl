
package Paws::Connect::ListPhoneNumbersV2Response;
  use Moose;
  has ListPhoneNumbersSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::ListPhoneNumbersSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListPhoneNumbersV2Response

=head1 ATTRIBUTES


=head2 ListPhoneNumbersSummaryList => ArrayRef[L<Paws::Connect::ListPhoneNumbersSummary>]

Information about phone numbers that have been claimed to your Amazon
Connect instances or traffic distribution groups.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

