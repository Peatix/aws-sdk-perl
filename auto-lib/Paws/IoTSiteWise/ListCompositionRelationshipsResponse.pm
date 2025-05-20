
package Paws::IoTSiteWise::ListCompositionRelationshipsResponse;
  use Moose;
  has CompositionRelationshipSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::CompositionRelationshipSummary]', traits => ['NameInRequest'], request_name => 'compositionRelationshipSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListCompositionRelationshipsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CompositionRelationshipSummaries => ArrayRef[L<Paws::IoTSiteWise::CompositionRelationshipSummary>]

A list that summarizes each composition relationship.


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut

