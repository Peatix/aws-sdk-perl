
package Paws::Omics::DeleteAnnotationStoreVersionsResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Omics::VersionDeleteError]', traits => ['NameInRequest'], request_name => 'errors');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::DeleteAnnotationStoreVersionsResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::Omics::VersionDeleteError>]

Any errors that occur when attempting to delete an annotation store
version.


=head2 _request_id => Str


=cut

