
package Paws::EKS::ListPodIdentityAssociationsResponse;
  use Moose;
  has Associations => (is => 'ro', isa => 'ArrayRef[Paws::EKS::PodIdentityAssociationSummary]', traits => ['NameInRequest'], request_name => 'associations');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::ListPodIdentityAssociationsResponse

=head1 ATTRIBUTES


=head2 Associations => ArrayRef[L<Paws::EKS::PodIdentityAssociationSummary>]

The list of summarized descriptions of the associations that are in the
cluster and match any filters that you provided.

Each summary is simplified by removing these fields compared to the
full C<PodIdentityAssociation>
(https://docs.aws.amazon.com/eks/latest/APIReference/API_PodIdentityAssociation.html):

=over

=item *

The IAM role: C<roleArn>

=item *

The timestamp that the association was created at: C<createdAt>

=item *

The most recent timestamp that the association was modified at:.
C<modifiedAt>

=item *

The tags on the association: C<tags>

=back



=head2 NextToken => Str

The C<nextToken> value to include in a future
C<ListPodIdentityAssociations> request. When the results of a
C<ListPodIdentityAssociations> request exceed C<maxResults>, you can
use this value to retrieve the next page of results. This value is
C<null> when there are no more results to return.

This token should be treated as an opaque identifier that is used only
to retrieve the next items in a list and not for other programmatic
purposes.


=head2 _request_id => Str


=cut

