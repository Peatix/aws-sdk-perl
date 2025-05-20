
package Paws::ResourceExplorer2::SearchOutput;
  use Moose;
  has Count => (is => 'ro', isa => 'Paws::ResourceExplorer2::ResourceCount');
  has NextToken => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::ResourceExplorer2::Resource]');
  has ViewArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::SearchOutput

=head1 ATTRIBUTES


=head2 Count => L<Paws::ResourceExplorer2::ResourceCount>

The number of resources that match the query.


=head2 NextToken => Str

If present, indicates that more output is available than is included in
the current response. Use this value in the C<NextToken> request
parameter in a subsequent call to the operation to get the next part of
the output. You should repeat this until the C<NextToken> response
element comes back as C<null>. The pagination tokens expire after 24
hours.


=head2 Resources => ArrayRef[L<Paws::ResourceExplorer2::Resource>]

The list of structures that describe the resources that match the
query.


=head2 ViewArn => Str

The Amazon resource name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the view that this operation used to perform the search.


=head2 _request_id => Str


=cut

