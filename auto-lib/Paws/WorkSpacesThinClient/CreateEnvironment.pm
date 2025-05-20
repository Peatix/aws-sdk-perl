
package Paws::WorkSpacesThinClient::CreateEnvironment;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DesiredSoftwareSetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'desiredSoftwareSetId');
  has DesktopArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'desktopArn', required => 1);
  has DesktopEndpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'desktopEndpoint');
  has DeviceCreationTags => (is => 'ro', isa => 'Paws::WorkSpacesThinClient::DeviceCreationTagsMap', traits => ['NameInRequest'], request_name => 'deviceCreationTags');
  has KmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyArn');
  has MaintenanceWindow => (is => 'ro', isa => 'Paws::WorkSpacesThinClient::MaintenanceWindow', traits => ['NameInRequest'], request_name => 'maintenanceWindow');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has SoftwareSetUpdateMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'softwareSetUpdateMode');
  has SoftwareSetUpdateSchedule => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'softwareSetUpdateSchedule');
  has Tags => (is => 'ro', isa => 'Paws::WorkSpacesThinClient::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/environments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpacesThinClient::CreateEnvironmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesThinClient::CreateEnvironment - Arguments for method CreateEnvironment on L<Paws::WorkSpacesThinClient>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEnvironment on the
L<Amazon WorkSpaces Thin Client|Paws::WorkSpacesThinClient> service. Use the attributes of this class
as arguments to method CreateEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEnvironment.

=head1 SYNOPSIS

    my $thinclient = Paws->service('WorkSpacesThinClient');
    my $CreateEnvironmentResponse = $thinclient->CreateEnvironment(
      DesktopArn           => 'MyArn',
      ClientToken          => 'MyClientToken',        # OPTIONAL
      DesiredSoftwareSetId => 'MySoftwareSetId',      # OPTIONAL
      DesktopEndpoint      => 'MyDesktopEndpoint',    # OPTIONAL
      DeviceCreationTags   => {
        'MyDeviceCreationTagKey' =>
          'MyDeviceCreationTagValue',   # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      KmsKeyArn         => 'MyKmsKeyArn',    # OPTIONAL
      MaintenanceWindow => {
        Type          => 'SYSTEM',           # values: SYSTEM, CUSTOM
        ApplyTimeOf   => 'UTC',              # values: UTC, DEVICE; OPTIONAL
        DaysOfTheWeek => [
          'MONDAY',
          ... # values: MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
        ],    # min: 1, max: 7; OPTIONAL
        EndTimeHour     => 1,    # max: 23; OPTIONAL
        EndTimeMinute   => 1,    # max: 59; OPTIONAL
        StartTimeHour   => 1,    # max: 23; OPTIONAL
        StartTimeMinute => 1,    # max: 59; OPTIONAL
      },    # OPTIONAL
      Name                      => 'MyEnvironmentName',              # OPTIONAL
      SoftwareSetUpdateMode     => 'USE_LATEST',                     # OPTIONAL
      SoftwareSetUpdateSchedule => 'USE_MAINTENANCE_WINDOW',         # OPTIONAL
      Tags                      => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $Environment = $CreateEnvironmentResponse->Environment;

    # Returns a L<Paws::WorkSpacesThinClient::CreateEnvironmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/thinclient/CreateEnvironment>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Specifies a unique, case-sensitive identifier that you provide to
ensure the idempotency of the request. This lets you safely retry the
request without accidentally performing the same operation a second
time. Passing the same value to a later call to an operation requires
that you also pass the same value for all other parameters. We
recommend that you use a UUID type of value
(https://wikipedia.org/wiki/Universally_unique_identifier).

If you don't provide this value, then Amazon Web Services generates a
random one for you.

If you retry the operation with the same C<ClientToken>, but with
different parameters, the retry fails with an
C<IdempotentParameterMismatch> error.



=head2 DesiredSoftwareSetId => Str

The ID of the software set to apply.



=head2 B<REQUIRED> DesktopArn => Str

The Amazon Resource Name (ARN) of the desktop to stream from Amazon
WorkSpaces, WorkSpaces Secure Browser, or AppStream 2.0.



=head2 DesktopEndpoint => Str

The URL for the identity provider login (only for environments that use
AppStream 2.0).



=head2 DeviceCreationTags => L<Paws::WorkSpacesThinClient::DeviceCreationTagsMap>

A map of the key-value pairs of the tag or tags to assign to the newly
created devices for this environment.



=head2 KmsKeyArn => Str

The Amazon Resource Name (ARN) of the Key Management Service key to use
to encrypt the environment.



=head2 MaintenanceWindow => L<Paws::WorkSpacesThinClient::MaintenanceWindow>

A specification for a time window to apply software updates.



=head2 Name => Str

The name for the environment.



=head2 SoftwareSetUpdateMode => Str

An option to define which software updates to apply.

Valid values are: C<"USE_LATEST">, C<"USE_DESIRED">

=head2 SoftwareSetUpdateSchedule => Str

An option to define if software updates should be applied within a
maintenance window.

Valid values are: C<"USE_MAINTENANCE_WINDOW">, C<"APPLY_IMMEDIATELY">

=head2 Tags => L<Paws::WorkSpacesThinClient::TagsMap>

A map of the key-value pairs of the tag or tags to assign to the
resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEnvironment in L<Paws::WorkSpacesThinClient>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

