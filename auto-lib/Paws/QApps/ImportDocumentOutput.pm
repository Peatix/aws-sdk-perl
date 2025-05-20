
package Paws::QApps::ImportDocumentOutput;
  use Moose;
  has FileId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fileId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::ImportDocumentOutput

=head1 ATTRIBUTES


=head2 FileId => Str

The unique identifier assigned to the uploaded file.


=head2 _request_id => Str


=cut

