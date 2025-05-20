
package Paws::Connect::ListAnalyticsDataAssociationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::Connect::AnalyticsDataAssociationResult]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListAnalyticsDataAssociationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 Results => ArrayRef[L<Paws::Connect::AnalyticsDataAssociationResult>]

An array of successful results: C<DataSetId>, C<TargetAccountId>,
C<ResourceShareId>, C<ResourceShareArn>. This is a paginated API, so
C<nextToken> is given if there are more results to be returned.


=head2 _request_id => Str


=cut

