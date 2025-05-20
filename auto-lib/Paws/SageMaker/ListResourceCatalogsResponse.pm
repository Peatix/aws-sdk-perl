
package Paws::SageMaker::ListResourceCatalogsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceCatalogs => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ResourceCatalog]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListResourceCatalogsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to resume pagination of C<ListResourceCatalogs> results.


=head2 ResourceCatalogs => ArrayRef[L<Paws::SageMaker::ResourceCatalog>]

A list of the requested C<ResourceCatalog>s.


=head2 _request_id => Str


=cut

1;