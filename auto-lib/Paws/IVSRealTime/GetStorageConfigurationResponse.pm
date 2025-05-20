
package Paws::IVSRealTime::GetStorageConfigurationResponse;
  use Moose;
  has StorageConfiguration => (is => 'ro', isa => 'Paws::IVSRealTime::StorageConfiguration', traits => ['NameInRequest'], request_name => 'storageConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::GetStorageConfigurationResponse

=head1 ATTRIBUTES


=head2 StorageConfiguration => L<Paws::IVSRealTime::StorageConfiguration>

The StorageConfiguration that was returned.


=head2 _request_id => Str


=cut

