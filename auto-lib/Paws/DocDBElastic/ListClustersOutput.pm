
package Paws::DocDBElastic::ListClustersOutput;
  use Moose;
  has Clusters => (is => 'ro', isa => 'ArrayRef[Paws::DocDBElastic::ClusterInList]', traits => ['NameInRequest'], request_name => 'clusters');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDBElastic::ListClustersOutput

=head1 ATTRIBUTES


=head2 Clusters => ArrayRef[L<Paws::DocDBElastic::ClusterInList>]

A list of Amazon DocumentDB elastic clusters.


=head2 NextToken => Str

A pagination token provided by a previous request. If this parameter is
specified, the response includes only records beyond this token, up to
the value specified by C<max-results>.

If there is no more data in the responce, the C<nextToken> will not be
returned.


=head2 _request_id => Str


=cut

