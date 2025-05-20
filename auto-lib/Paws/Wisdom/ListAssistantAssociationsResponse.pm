
package Paws::Wisdom::ListAssistantAssociationsResponse;
  use Moose;
  has AssistantAssociationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Wisdom::AssistantAssociationSummary]', traits => ['NameInRequest'], request_name => 'assistantAssociationSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::ListAssistantAssociationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssistantAssociationSummaries => ArrayRef[L<Paws::Wisdom::AssistantAssociationSummary>]

Summary information about assistant associations.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

