
package Paws::DevOpsGuru::GetResourceCollectionResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceCollection => (is => 'ro', isa => 'Paws::DevOpsGuru::ResourceCollectionFilter');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::GetResourceCollectionResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 ResourceCollection => L<Paws::DevOpsGuru::ResourceCollectionFilter>

The requested list of Amazon Web Services resource collections. The two
types of Amazon Web Services resource collections supported are Amazon
Web Services CloudFormation stacks and Amazon Web Services resources
that contain the same Amazon Web Services tag. DevOps Guru can be
configured to analyze the Amazon Web Services resources that are
defined in the stacks or that are tagged using the same tag I<key>. You
can specify up to 500 Amazon Web Services CloudFormation stacks.


=head2 _request_id => Str


=cut

