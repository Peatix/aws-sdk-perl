
package Paws::Connect::BatchGetAttachedFileMetadataResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Connect::AttachedFileError]');
  has Files => (is => 'ro', isa => 'ArrayRef[Paws::Connect::AttachedFile]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::BatchGetAttachedFileMetadataResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::Connect::AttachedFileError>]

List of errors of attached files that could not be retrieved.


=head2 Files => ArrayRef[L<Paws::Connect::AttachedFile>]

List of attached files that were successfully retrieved.


=head2 _request_id => Str


=cut

