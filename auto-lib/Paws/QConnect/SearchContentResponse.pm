
package Paws::QConnect::SearchContentResponse;
  use Moose;
  has ContentSummaries => (is => 'ro', isa => 'ArrayRef[Paws::QConnect::ContentSummary]', traits => ['NameInRequest'], request_name => 'contentSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::SearchContentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContentSummaries => ArrayRef[L<Paws::QConnect::ContentSummary>]

Summary information about the content.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

