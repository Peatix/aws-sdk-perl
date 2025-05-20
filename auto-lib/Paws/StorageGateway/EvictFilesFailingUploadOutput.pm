
package Paws::StorageGateway::EvictFilesFailingUploadOutput;
  use Moose;
  has NotificationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::EvictFilesFailingUploadOutput

=head1 ATTRIBUTES


=head2 NotificationId => Str

The randomly generated ID of the CloudWatch notification associated
with the cache clean operation. This ID is in UUID format.


=head2 _request_id => Str


=cut

1;