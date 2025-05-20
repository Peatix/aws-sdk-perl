
package Paws::Panorama::CreateJobForDevices;
  use Moose;
  has DeviceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has DeviceJobConfig => (is => 'ro', isa => 'Paws::Panorama::DeviceJobConfig');
  has JobType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateJobForDevices');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Panorama::CreateJobForDevicesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::CreateJobForDevices - Arguments for method CreateJobForDevices on L<Paws::Panorama>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateJobForDevices on the
L<AWS Panorama|Paws::Panorama> service. Use the attributes of this class
as arguments to method CreateJobForDevices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateJobForDevices.

=head1 SYNOPSIS

    my $panorama = Paws->service('Panorama');
    my $CreateJobForDevicesResponse = $panorama->CreateJobForDevices(
      DeviceIds => [
        'MyDeviceId', ...    # min: 1, max: 255
      ],
      JobType         => 'OTA',
      DeviceJobConfig => {
        OTAJobConfig => {
          ImageVersion            => 'MyImageVersion',    # min: 1, max: 255
          AllowMajorVersionUpdate => 1,                   # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Jobs = $CreateJobForDevicesResponse->Jobs;

    # Returns a L<Paws::Panorama::CreateJobForDevicesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/panorama/CreateJobForDevices>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceIds => ArrayRef[Str|Undef]

ID of target device.



=head2 DeviceJobConfig => L<Paws::Panorama::DeviceJobConfig>

Configuration settings for a software update job.



=head2 B<REQUIRED> JobType => Str

The type of job to run.

Valid values are: C<"OTA">, C<"REBOOT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateJobForDevices in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

