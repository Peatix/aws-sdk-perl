
package Paws::Connect::SearchPromptsResponse;
  use Moose;
  has ApproximateTotalCount => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Prompts => (is => 'ro', isa => 'ArrayRef[Paws::Connect::Prompt]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchPromptsResponse

=head1 ATTRIBUTES


=head2 ApproximateTotalCount => Int

The total number of quick connects which matched your search query.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 Prompts => ArrayRef[L<Paws::Connect::Prompt>]

Information about the prompts.


=head2 _request_id => Str


=cut

