
package Paws::IoTWireless::CreateFuotaTask;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Descriptor => (is => 'ro', isa => 'Str');
  has FirmwareUpdateImage => (is => 'ro', isa => 'Str', required => 1);
  has FirmwareUpdateRole => (is => 'ro', isa => 'Str', required => 1);
  has FragmentIntervalMS => (is => 'ro', isa => 'Int');
  has FragmentSizeBytes => (is => 'ro', isa => 'Int');
  has LoRaWAN => (is => 'ro', isa => 'Paws::IoTWireless::LoRaWANFuotaTask');
  has Name => (is => 'ro', isa => 'Str');
  has RedundancyPercent => (is => 'ro', isa => 'Int');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFuotaTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/fuota-tasks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::CreateFuotaTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::CreateFuotaTask - Arguments for method CreateFuotaTask on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFuotaTask on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method CreateFuotaTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFuotaTask.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $CreateFuotaTaskResponse = $api . iotwireless->CreateFuotaTask(
      FirmwareUpdateImage => 'MyFirmwareUpdateImage',
      FirmwareUpdateRole  => 'MyFirmwareUpdateRole',
      ClientRequestToken  => 'MyClientRequestToken',    # OPTIONAL
      Description         => 'MyDescription',           # OPTIONAL
      Descriptor          => 'MyFileDescriptor',        # OPTIONAL
      FragmentIntervalMS  => 1,                         # OPTIONAL
      FragmentSizeBytes   => 1,                         # OPTIONAL
      LoRaWAN             => {
        RfRegion => 'EU868'
        , # values: EU868, US915, AU915, AS923-1, AS923-2, AS923-3, AS923-4, EU433, CN470, CN779, RU864, KR920, IN865; OPTIONAL
      },    # OPTIONAL
      Name              => 'MyFuotaTaskName',    # OPTIONAL
      RedundancyPercent => 1,                    # OPTIONAL
      Tags              => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Arn = $CreateFuotaTaskResponse->Arn;
    my $Id  = $CreateFuotaTaskResponse->Id;

    # Returns a L<Paws::IoTWireless::CreateFuotaTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/CreateFuotaTask>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str





=head2 Description => Str





=head2 Descriptor => Str





=head2 B<REQUIRED> FirmwareUpdateImage => Str





=head2 B<REQUIRED> FirmwareUpdateRole => Str





=head2 FragmentIntervalMS => Int





=head2 FragmentSizeBytes => Int





=head2 LoRaWAN => L<Paws::IoTWireless::LoRaWANFuotaTask>





=head2 Name => Str





=head2 RedundancyPercent => Int





=head2 Tags => ArrayRef[L<Paws::IoTWireless::Tag>]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFuotaTask in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

