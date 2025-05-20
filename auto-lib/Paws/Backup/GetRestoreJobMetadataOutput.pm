
package Paws::Backup::GetRestoreJobMetadataOutput;
  use Moose;
  has Metadata => (is => 'ro', isa => 'Paws::Backup::Metadata');
  has RestoreJobId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::GetRestoreJobMetadataOutput

=head1 ATTRIBUTES


=head2 Metadata => L<Paws::Backup::Metadata>

This contains the metadata of the specified backup job.


=head2 RestoreJobId => Str

This is a unique identifier of a restore job within Backup.


=head2 _request_id => Str


=cut

