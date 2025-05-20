
package Paws::XRay::GetIndexingRulesResult;
  use Moose;
  has IndexingRules => (is => 'ro', isa => 'ArrayRef[Paws::XRay::IndexingRule]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetIndexingRulesResult

=head1 ATTRIBUTES


=head2 IndexingRules => ArrayRef[L<Paws::XRay::IndexingRule>]

Retrieves all indexing rules.


=head2 NextToken => Str

Specify the pagination token returned by a previous request to retrieve
the next page of indexes.


=head2 _request_id => Str


=cut

