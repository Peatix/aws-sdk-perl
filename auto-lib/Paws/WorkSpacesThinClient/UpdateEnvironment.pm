
package Paws::WorkSpacesThinClient::UpdateEnvironment;
  use Moose;
  has DesiredSoftwareSetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'desiredSoftwareSetId');
  has DesktopArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'desktopArn');
  has DesktopEndpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'desktopEndpoint');
  has DeviceCreationTags => (is => 'ro', isa => 'Paws::WorkSpacesThinClient::DeviceCreationTagsMap', traits => ['NameInRequest'], request_name => 'deviceCreationTags');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has MaintenanceWindow => (is => 'ro', isa => 'Paws::WorkSpacesThinClient::MaintenanceWindow', traits => ['NameInRequest'], request_name => 'maintenanceWindow');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has SoftwareSetUpdateMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'softwareSetUpdateMode');
  has SoftwareSetUpdateSchedule => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'softwareSetUpdateSchedule');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/environments/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpacesThinClient::UpdateEnvironmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesThinClient::UpdateEnvironment - Arguments for method UpdateEnvironment on L<Paws::WorkSpacesThinClient>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEnvironment on the
L<Amazon WorkSpaces Thin Client|Paws::WorkSpacesThinClient> service. Use the attributes of this class
as arguments to method UpdateEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEnvironment.

=head1 SYNOPSIS

    my $thinclient = Paws->service('WorkSpacesThinClient');
    my $UpdateEnvironmentResponse = $thinclient->UpdateEnvironment(
      Id                   => 'MyEnvironmentId',
      DesiredSoftwareSetId => 'MySoftwareSetIdOrEmptyString',    # OPTIONAL
      DesktopArn           => 'MyArn',                           # OPTIONAL
      DesktopEndpoint      => 'MyDesktopEndpoint',               # OPTIONAL
      DeviceCreationTags   => {
        'MyDeviceCreationTagKey' =>
          'MyDeviceCreationTagValue',   # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      MaintenanceWindow => {
        Type          => 'SYSTEM',    # values: SYSTEM, CUSTOM
        ApplyTimeOf   => 'UTC',       # values: UTC, DEVICE; OPTIONAL
        DaysOfTheWeek => [
          'MONDAY',
          ... # values: MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
        ],    # min: 1, max: 7; OPTIONAL
        EndTimeHour     => 1,    # max: 23; OPTIONAL
        EndTimeMinute   => 1,    # max: 59; OPTIONAL
        StartTimeHour   => 1,    # max: 23; OPTIONAL
        StartTimeMinute => 1,    # max: 59; OPTIONAL
      },    # OPTIONAL
      Name                      => 'MyEnvironmentName',         # OPTIONAL
      SoftwareSetUpdateMode     => 'USE_LATEST',                # OPTIONAL
      SoftwareSetUpdateSchedule => 'USE_MAINTENANCE_WINDOW',    # OPTIONAL
    );

    # Results:
    my $Environment = $UpdateEnvironmentResponse->Environment;

    # Returns a L<Paws::WorkSpacesThinClient::UpdateEnvironmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/thinclient/UpdateEnvironment>

=head1 ATTRIBUTES


=head2 DesiredSoftwareSetId => Str

The ID of the software set to apply.



=head2 DesktopArn => Str

The Amazon Resource Name (ARN) of the desktop to stream from Amazon
WorkSpaces, WorkSpaces Secure Browser, or AppStream 2.0.



=head2 DesktopEndpoint => Str

The URL for the identity provider login (only for environments that use
AppStream 2.0).



=head2 DeviceCreationTags => L<Paws::WorkSpacesThinClient::DeviceCreationTagsMap>

A map of the key-value pairs of the tag or tags to assign to the newly
created devices for this environment.



=head2 B<REQUIRED> Id => Str

The ID of the environment to update.



=head2 MaintenanceWindow => L<Paws::WorkSpacesThinClient::MaintenanceWindow>

A specification for a time window to apply software updates.



=head2 Name => Str

The name of the environment to update.



=head2 SoftwareSetUpdateMode => Str

An option to define which software updates to apply.

Valid values are: C<"USE_LATEST">, C<"USE_DESIRED">

=head2 SoftwareSetUpdateSchedule => Str

An option to define if software updates should be applied within a
maintenance window.

Valid values are: C<"USE_MAINTENANCE_WINDOW">, C<"APPLY_IMMEDIATELY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEnvironment in L<Paws::WorkSpacesThinClient>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

