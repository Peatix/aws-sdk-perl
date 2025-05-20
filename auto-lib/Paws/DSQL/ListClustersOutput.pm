
package Paws::DSQL::ListClustersOutput;
  use Moose;
  has Clusters => (is => 'ro', isa => 'ArrayRef[Paws::DSQL::ClusterSummary]', traits => ['NameInRequest'], request_name => 'clusters', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DSQL::ListClustersOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Clusters => ArrayRef[L<Paws::DSQL::ClusterSummary>]

An array of the returned clusters.


=head2 NextToken => Str

If nextToken is returned, there are more results available. The value
of nextToken is a unique pagination token for each page. To retrieve
the next page, make the call again using the returned token.


=head2 _request_id => Str


=cut

