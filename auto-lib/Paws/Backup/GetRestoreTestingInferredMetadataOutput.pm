
package Paws::Backup::GetRestoreTestingInferredMetadataOutput;
  use Moose;
  has InferredMetadata => (is => 'ro', isa => 'Paws::Backup::StringMap', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::GetRestoreTestingInferredMetadataOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> InferredMetadata => L<Paws::Backup::StringMap>

This is a string map of the metadata inferred from the request.


=head2 _request_id => Str


=cut

