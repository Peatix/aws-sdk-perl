
package Paws::GreengrassV2::GetCoreDeviceResponse;
  use Moose;
  has Architecture => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'architecture');
  has CoreDeviceThingName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'coreDeviceThingName');
  has CoreVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'coreVersion');
  has LastStatusUpdateTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastStatusUpdateTimestamp');
  has Platform => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'platform');
  has Runtime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'runtime');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Tags => (is => 'ro', isa => 'Paws::GreengrassV2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::GetCoreDeviceResponse

=head1 ATTRIBUTES


=head2 Architecture => Str

The computer architecture of the core device.


=head2 CoreDeviceThingName => Str

The name of the core device. This is also the name of the IoT thing.


=head2 CoreVersion => Str

The version of the IoT Greengrass Core software that the core device
runs. This version is equivalent to the version of the Greengrass
nucleus component that runs on the core device. For more information,
see the Greengrass nucleus component
(https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html)
in the I<IoT Greengrass V2 Developer Guide>.


=head2 LastStatusUpdateTimestamp => Str

The time at which the core device's status last updated, expressed in
ISO 8601 format.


=head2 Platform => Str

The operating system platform that the core device runs.


=head2 Runtime => Str

The runtime for the core device. The runtime can be:

=over

=item *

C<aws_nucleus_classic>

=item *

C<aws_nucleus_lite>

=back



=head2 Status => Str

The status of the core device. The core device status can be:

=over

=item *

C<HEALTHY> E<ndash> The IoT Greengrass Core software and all components
run on the core device without issue.

=item *

C<UNHEALTHY> E<ndash> The IoT Greengrass Core software or a component
is in a failed state on the core device.

=back


Valid values are: C<"HEALTHY">, C<"UNHEALTHY">
=head2 Tags => L<Paws::GreengrassV2::TagMap>

A list of key-value pairs that contain metadata for the resource. For
more information, see Tag your resources
(https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html)
in the I<IoT Greengrass V2 Developer Guide>.


=head2 _request_id => Str


=cut

