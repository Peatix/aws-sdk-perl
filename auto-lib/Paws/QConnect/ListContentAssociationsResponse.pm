
package Paws::QConnect::ListContentAssociationsResponse;
  use Moose;
  has ContentAssociationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::QConnect::ContentAssociationSummary]', traits => ['NameInRequest'], request_name => 'contentAssociationSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::ListContentAssociationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContentAssociationSummaries => ArrayRef[L<Paws::QConnect::ContentAssociationSummary>]

Summary information about content associations.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

