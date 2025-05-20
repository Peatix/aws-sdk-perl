
package Paws::Athena::ImportNotebookOutput;
  use Moose;
  has NotebookId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::ImportNotebookOutput

=head1 ATTRIBUTES


=head2 NotebookId => Str

The ID assigned to the imported notebook.


=head2 _request_id => Str


=cut

1;