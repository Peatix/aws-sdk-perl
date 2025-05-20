
package Paws::Athena::GetNotebookMetadataOutput;
  use Moose;
  has NotebookMetadata => (is => 'ro', isa => 'Paws::Athena::NotebookMetadata');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::GetNotebookMetadataOutput

=head1 ATTRIBUTES


=head2 NotebookMetadata => L<Paws::Athena::NotebookMetadata>

The metadata that is returned for the specified notebook ID.


=head2 _request_id => Str


=cut

1;