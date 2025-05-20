
package Paws::QConnect::ListAssistantsResponse;
  use Moose;
  has AssistantSummaries => (is => 'ro', isa => 'ArrayRef[Paws::QConnect::AssistantSummary]', traits => ['NameInRequest'], request_name => 'assistantSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::ListAssistantsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssistantSummaries => ArrayRef[L<Paws::QConnect::AssistantSummary>]

Information about the assistants.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

