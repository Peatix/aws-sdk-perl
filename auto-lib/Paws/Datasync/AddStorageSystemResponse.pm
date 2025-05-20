
package Paws::Datasync::AddStorageSystemResponse;
  use Moose;
  has StorageSystemArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::AddStorageSystemResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> StorageSystemArn => Str

The ARN of the on-premises storage system that you can use with
DataSync Discovery.


=head2 _request_id => Str


=cut

1;