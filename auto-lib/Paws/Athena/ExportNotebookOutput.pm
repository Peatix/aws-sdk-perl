
package Paws::Athena::ExportNotebookOutput;
  use Moose;
  has NotebookMetadata => (is => 'ro', isa => 'Paws::Athena::NotebookMetadata');
  has Payload => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::ExportNotebookOutput

=head1 ATTRIBUTES


=head2 NotebookMetadata => L<Paws::Athena::NotebookMetadata>

The notebook metadata, including notebook ID, notebook name, and
workgroup name.


=head2 Payload => Str

The content of the exported notebook.


=head2 _request_id => Str


=cut

1;