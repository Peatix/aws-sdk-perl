
package Paws::Panorama::ProvisionDeviceResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Certificates => (is => 'ro', isa => 'Str');
  has DeviceId => (is => 'ro', isa => 'Str');
  has IotThingName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::ProvisionDeviceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The device's ARN.


=head2 Certificates => Str

The device's configuration bundle.


=head2 DeviceId => Str

The device's ID.


=head2 IotThingName => Str

The device's IoT thing name.


=head2 B<REQUIRED> Status => Str

The device's status.

Valid values are: C<"AWAITING_PROVISIONING">, C<"PENDING">, C<"SUCCEEDED">, C<"FAILED">, C<"ERROR">, C<"DELETING">
=head2 _request_id => Str


=cut

