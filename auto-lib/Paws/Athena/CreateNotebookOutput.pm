
package Paws::Athena::CreateNotebookOutput;
  use Moose;
  has NotebookId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::CreateNotebookOutput

=head1 ATTRIBUTES


=head2 NotebookId => Str

A unique identifier for the notebook.


=head2 _request_id => Str


=cut

1;