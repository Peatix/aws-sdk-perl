
package Paws::Deadline::CreateStorageProfileResponse;
  use Moose;
  has StorageProfileId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storageProfileId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CreateStorageProfileResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> StorageProfileId => Str

The storage profile ID.


=head2 _request_id => Str


=cut

