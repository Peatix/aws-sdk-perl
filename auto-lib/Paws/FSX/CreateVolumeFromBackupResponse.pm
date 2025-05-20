
package Paws::FSX::CreateVolumeFromBackupResponse;
  use Moose;
  has Volume => (is => 'ro', isa => 'Paws::FSX::Volume');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CreateVolumeFromBackupResponse

=head1 ATTRIBUTES


=head2 Volume => L<Paws::FSX::Volume>

Returned after a successful C<CreateVolumeFromBackup> API operation,
describing the volume just created.


=head2 _request_id => Str


=cut

1;