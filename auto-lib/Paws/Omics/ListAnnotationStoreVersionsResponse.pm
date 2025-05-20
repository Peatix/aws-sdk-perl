
package Paws::Omics::ListAnnotationStoreVersionsResponse;
  use Moose;
  has AnnotationStoreVersions => (is => 'ro', isa => 'ArrayRef[Paws::Omics::AnnotationStoreVersionItem]', traits => ['NameInRequest'], request_name => 'annotationStoreVersions');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListAnnotationStoreVersionsResponse

=head1 ATTRIBUTES


=head2 AnnotationStoreVersions => ArrayRef[L<Paws::Omics::AnnotationStoreVersionItem>]

Lists all versions of an annotation store.


=head2 NextToken => Str

Specifies the pagination token from a previous request to retrieve the
next page of results.


=head2 _request_id => Str


=cut

