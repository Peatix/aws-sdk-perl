
package Paws::AuditManager::ListControlInsightsByControlDomainResponse;
  use Moose;
  has ControlInsightsMetadata => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::ControlInsightsMetadataItem]', traits => ['NameInRequest'], request_name => 'controlInsightsMetadata');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::ListControlInsightsByControlDomainResponse

=head1 ATTRIBUTES


=head2 ControlInsightsMetadata => ArrayRef[L<Paws::AuditManager::ControlInsightsMetadataItem>]

The control analytics data that the
C<ListControlInsightsByControlDomain> API returned.


=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.


=head2 _request_id => Str


=cut

