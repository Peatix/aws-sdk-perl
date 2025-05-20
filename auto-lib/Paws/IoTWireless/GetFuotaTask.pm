
package Paws::IoTWireless::GetFuotaTask;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFuotaTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/fuota-tasks/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::GetFuotaTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetFuotaTask - Arguments for method GetFuotaTask on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFuotaTask on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method GetFuotaTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFuotaTask.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $GetFuotaTaskResponse = $api . iotwireless->GetFuotaTask(
      Id => 'MyFuotaTaskId',

    );

    # Results:
    my $Arn                 = $GetFuotaTaskResponse->Arn;
    my $CreatedAt           = $GetFuotaTaskResponse->CreatedAt;
    my $Description         = $GetFuotaTaskResponse->Description;
    my $Descriptor          = $GetFuotaTaskResponse->Descriptor;
    my $FirmwareUpdateImage = $GetFuotaTaskResponse->FirmwareUpdateImage;
    my $FirmwareUpdateRole  = $GetFuotaTaskResponse->FirmwareUpdateRole;
    my $FragmentIntervalMS  = $GetFuotaTaskResponse->FragmentIntervalMS;
    my $FragmentSizeBytes   = $GetFuotaTaskResponse->FragmentSizeBytes;
    my $Id                  = $GetFuotaTaskResponse->Id;
    my $LoRaWAN             = $GetFuotaTaskResponse->LoRaWAN;
    my $Name                = $GetFuotaTaskResponse->Name;
    my $RedundancyPercent   = $GetFuotaTaskResponse->RedundancyPercent;
    my $Status              = $GetFuotaTaskResponse->Status;

    # Returns a L<Paws::IoTWireless::GetFuotaTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/GetFuotaTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFuotaTask in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

