
package Paws::IoTManagedIntegrations::GetManagedThingMetaDataResponse;
  use Moose;
  has ManagedThingId => (is => 'ro', isa => 'Str');
  has MetaData => (is => 'ro', isa => 'Paws::IoTManagedIntegrations::MetaData');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetManagedThingMetaDataResponse

=head1 ATTRIBUTES


=head2 ManagedThingId => Str

The managed thing id.


=head2 MetaData => L<Paws::IoTManagedIntegrations::MetaData>

The metadata for the managed thing.


=head2 _request_id => Str


=cut

