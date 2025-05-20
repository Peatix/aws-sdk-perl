
package Paws::AppStream::CreateFleet;
  use Moose;
  has ComputeCapacity => (is => 'ro', isa => 'Paws::AppStream::ComputeCapacity');
  has Description => (is => 'ro', isa => 'Str');
  has DisconnectTimeoutInSeconds => (is => 'ro', isa => 'Int');
  has DisplayName => (is => 'ro', isa => 'Str');
  has DomainJoinInfo => (is => 'ro', isa => 'Paws::AppStream::DomainJoinInfo');
  has EnableDefaultInternetAccess => (is => 'ro', isa => 'Bool');
  has FleetType => (is => 'ro', isa => 'Str');
  has IamRoleArn => (is => 'ro', isa => 'Str');
  has IdleDisconnectTimeoutInSeconds => (is => 'ro', isa => 'Int');
  has ImageArn => (is => 'ro', isa => 'Str');
  has ImageName => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has MaxConcurrentSessions => (is => 'ro', isa => 'Int');
  has MaxSessionsPerInstance => (is => 'ro', isa => 'Int');
  has MaxUserDurationInSeconds => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Platform => (is => 'ro', isa => 'Str');
  has SessionScriptS3Location => (is => 'ro', isa => 'Paws::AppStream::S3Location');
  has StreamView => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::AppStream::Tags');
  has UsbDeviceFilterStrings => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VpcConfig => (is => 'ro', isa => 'Paws::AppStream::VpcConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFleet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::CreateFleetResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateFleet - Arguments for method CreateFleet on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFleet on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method CreateFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFleet.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $CreateFleetResult = $appstream2->CreateFleet(
      InstanceType    => 'MyString',
      Name            => 'MyName',
      ComputeCapacity => {
        DesiredInstances => 1,    # OPTIONAL
        DesiredSessions  => 1,    # OPTIONAL
      },    # OPTIONAL
      Description                => 'MyDescription',    # OPTIONAL
      DisconnectTimeoutInSeconds => 1,                  # OPTIONAL
      DisplayName                => 'MyDisplayName',    # OPTIONAL
      DomainJoinInfo             => {
        DirectoryName                       => 'MyDirectoryName',    # OPTIONAL
        OrganizationalUnitDistinguishedName =>
          'MyOrganizationalUnitDistinguishedName',    # max: 2000; OPTIONAL
      },    # OPTIONAL
      EnableDefaultInternetAccess    => 1,              # OPTIONAL
      FleetType                      => 'ALWAYS_ON',    # OPTIONAL
      IamRoleArn                     => 'MyArn',        # OPTIONAL
      IdleDisconnectTimeoutInSeconds => 1,              # OPTIONAL
      ImageArn                       => 'MyArn',        # OPTIONAL
      ImageName                      => 'MyName',       # OPTIONAL
      MaxConcurrentSessions          => 1,              # OPTIONAL
      MaxSessionsPerInstance         => 1,              # OPTIONAL
      MaxUserDurationInSeconds       => 1,              # OPTIONAL
      Platform                       => 'WINDOWS',      # OPTIONAL
      SessionScriptS3Location        => {
        S3Bucket => 'MyS3Bucket',    # min: 3, max: 63
        S3Key    => 'MyS3Key',       # min: 1, max: 1024; OPTIONAL
      },    # OPTIONAL
      StreamView => 'APP',    # OPTIONAL
      Tags       => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      UsbDeviceFilterStrings => [
        'MyUsbDeviceFilterString', ...    # max: 100
      ],    # OPTIONAL
      VpcConfig => {
        SecurityGroupIds => [
          'MyString', ...    # min: 1
        ],    # max: 5; OPTIONAL
        SubnetIds => [
          'MyString', ...    # min: 1
        ],    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Fleet = $CreateFleetResult->Fleet;

    # Returns a L<Paws::AppStream::CreateFleetResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/CreateFleet>

=head1 ATTRIBUTES


=head2 ComputeCapacity => L<Paws::AppStream::ComputeCapacity>

The desired capacity for the fleet. This is not allowed for Elastic
fleets. For Elastic fleets, specify MaxConcurrentSessions instead.



=head2 Description => Str

The description to display.



=head2 DisconnectTimeoutInSeconds => Int

The amount of time that a streaming session remains active after users
disconnect. If users try to reconnect to the streaming session after a
disconnection or network interruption within this time interval, they
are connected to their previous session. Otherwise, they are connected
to a new session with a new streaming instance.

Specify a value between 60 and 36000.



=head2 DisplayName => Str

The fleet name to display.



=head2 DomainJoinInfo => L<Paws::AppStream::DomainJoinInfo>

The name of the directory and organizational unit (OU) to use to join
the fleet to a Microsoft Active Directory domain. This is not allowed
for Elastic fleets.



=head2 EnableDefaultInternetAccess => Bool

Enables or disables default internet access for the fleet.



=head2 FleetType => Str

The fleet type.

=over

=item ALWAYS_ON

Provides users with instant-on access to their apps. You are charged
for all running instances in your fleet, even if no users are streaming
apps.

=item ON_DEMAND

Provide users with access to applications after they connect, which
takes one to two minutes. You are charged for instance streaming when
users are connected and a small hourly fee for instances that are not
streaming apps.

=back


Valid values are: C<"ALWAYS_ON">, C<"ON_DEMAND">, C<"ELASTIC">

=head2 IamRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role to apply to the fleet.
To assume a role, a fleet instance calls the AWS Security Token Service
(STS) C<AssumeRole> API operation and passes the ARN of the role to
use. The operation creates a new session with temporary credentials.
AppStream 2.0 retrieves the temporary credentials and creates the
B<appstream_machine_role> credential profile on the instance.

For more information, see Using an IAM Role to Grant Permissions to
Applications and Scripts Running on AppStream 2.0 Streaming Instances
(https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html)
in the I<Amazon AppStream 2.0 Administration Guide>.



=head2 IdleDisconnectTimeoutInSeconds => Int

The amount of time that users can be idle (inactive) before they are
disconnected from their streaming session and the
C<DisconnectTimeoutInSeconds> time interval begins. Users are notified
before they are disconnected due to inactivity. If they try to
reconnect to the streaming session before the time interval specified
in C<DisconnectTimeoutInSeconds> elapses, they are connected to their
previous session. Users are considered idle when they stop providing
keyboard or mouse input during their streaming session. File uploads
and downloads, audio in, audio out, and pixels changing do not qualify
as user activity. If users continue to be idle after the time interval
in C<IdleDisconnectTimeoutInSeconds> elapses, they are disconnected.

To prevent users from being disconnected due to inactivity, specify a
value of 0. Otherwise, specify a value between 60 and 36000. The
default value is 0.

If you enable this feature, we recommend that you specify a value that
corresponds exactly to a whole number of minutes (for example, 60, 120,
and 180). If you don't do this, the value is rounded to the nearest
minute. For example, if you specify a value of 70, users are
disconnected after 1 minute of inactivity. If you specify a value that
is at the midpoint between two different minutes, the value is rounded
up. For example, if you specify a value of 90, users are disconnected
after 2 minutes of inactivity.



=head2 ImageArn => Str

The ARN of the public, private, or shared image to use.



=head2 ImageName => Str

The name of the image used to create the fleet.



=head2 B<REQUIRED> InstanceType => Str

The instance type to use when launching fleet instances. The following
instance types are available:

=over

=item *

stream.standard.small

=item *

stream.standard.medium

=item *

stream.standard.large

=item *

stream.standard.xlarge

=item *

stream.standard.2xlarge

=item *

stream.compute.large

=item *

stream.compute.xlarge

=item *

stream.compute.2xlarge

=item *

stream.compute.4xlarge

=item *

stream.compute.8xlarge

=item *

stream.memory.large

=item *

stream.memory.xlarge

=item *

stream.memory.2xlarge

=item *

stream.memory.4xlarge

=item *

stream.memory.8xlarge

=item *

stream.memory.z1d.large

=item *

stream.memory.z1d.xlarge

=item *

stream.memory.z1d.2xlarge

=item *

stream.memory.z1d.3xlarge

=item *

stream.memory.z1d.6xlarge

=item *

stream.memory.z1d.12xlarge

=item *

stream.graphics-design.large

=item *

stream.graphics-design.xlarge

=item *

stream.graphics-design.2xlarge

=item *

stream.graphics-design.4xlarge

=item *

stream.graphics-desktop.2xlarge

=item *

stream.graphics.g4dn.xlarge

=item *

stream.graphics.g4dn.2xlarge

=item *

stream.graphics.g4dn.4xlarge

=item *

stream.graphics.g4dn.8xlarge

=item *

stream.graphics.g4dn.12xlarge

=item *

stream.graphics.g4dn.16xlarge

=item *

stream.graphics.g5.xlarge

=item *

stream.graphics.g5.2xlarge

=item *

stream.graphics.g5.4xlarge

=item *

stream.graphics.g5.8xlarge

=item *

stream.graphics.g5.12xlarge

=item *

stream.graphics.g5.16xlarge

=item *

stream.graphics.g5.24xlarge

=item *

stream.graphics-pro.4xlarge

=item *

stream.graphics-pro.8xlarge

=item *

stream.graphics-pro.16xlarge

=back

The following instance types are available for Elastic fleets:

=over

=item *

stream.standard.small

=item *

stream.standard.medium

=item *

stream.standard.large

=item *

stream.standard.xlarge

=item *

stream.standard.2xlarge

=back




=head2 MaxConcurrentSessions => Int

The maximum concurrent sessions of the Elastic fleet. This is required
for Elastic fleets, and not allowed for other fleet types.



=head2 MaxSessionsPerInstance => Int

The maximum number of user sessions on an instance. This only applies
to multi-session fleets.



=head2 MaxUserDurationInSeconds => Int

The maximum amount of time that a streaming session can remain active,
in seconds. If users are still connected to a streaming instance five
minutes before this limit is reached, they are prompted to save any
open documents before being disconnected. After this time elapses, the
instance is terminated and replaced by a new instance.

Specify a value between 600 and 432000.



=head2 B<REQUIRED> Name => Str

A unique name for the fleet.



=head2 Platform => Str

The fleet platform. WINDOWS_SERVER_2019 and AMAZON_LINUX2 are supported
for Elastic fleets.

Valid values are: C<"WINDOWS">, C<"WINDOWS_SERVER_2016">, C<"WINDOWS_SERVER_2019">, C<"WINDOWS_SERVER_2022">, C<"AMAZON_LINUX2">, C<"RHEL8">, C<"ROCKY_LINUX8">

=head2 SessionScriptS3Location => L<Paws::AppStream::S3Location>

The S3 location of the session scripts configuration zip file. This
only applies to Elastic fleets.



=head2 StreamView => Str

The AppStream 2.0 view that is displayed to your users when they stream
from the fleet. When C<APP> is specified, only the windows of
applications opened by users display. When C<DESKTOP> is specified, the
standard desktop that is provided by the operating system displays.

The default value is C<APP>.

Valid values are: C<"APP">, C<"DESKTOP">

=head2 Tags => L<Paws::AppStream::Tags>

The tags to associate with the fleet. A tag is a key-value pair, and
the value is optional. For example, Environment=Test. If you do not
specify a value, Environment=.

If you do not specify a value, the value is set to an empty string.

Generally allowed characters are: letters, numbers, and spaces
representable in UTF-8, and the following special characters:

_ . : / = + \ - @

For more information, see Tagging Your Resources
(https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html)
in the I<Amazon AppStream 2.0 Administration Guide>.



=head2 UsbDeviceFilterStrings => ArrayRef[Str|Undef]

The USB device filter strings that specify which USB devices a user can
redirect to the fleet streaming session, when using the Windows native
client. This is allowed but not required for Elastic fleets.



=head2 VpcConfig => L<Paws::AppStream::VpcConfig>

The VPC configuration for the fleet. This is required for Elastic
fleets, but not required for other fleet types. Elastic fleets require
that you specify at least two subnets in different availability zones.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFleet in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

