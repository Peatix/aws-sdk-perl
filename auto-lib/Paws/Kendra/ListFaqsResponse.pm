
package Paws::Kendra::ListFaqsResponse;
  use Moose;
  has FaqSummaryItems => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::FaqSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ListFaqsResponse

=head1 ATTRIBUTES


=head2 FaqSummaryItems => ArrayRef[L<Paws::Kendra::FaqSummary>]

Summary information about the FAQs for a specified index.


=head2 NextToken => Str

If the response is truncated, Amazon Kendra returns this token that you
can use in the subsequent request to retrieve the next set of FAQs.


=head2 _request_id => Str


=cut

1;