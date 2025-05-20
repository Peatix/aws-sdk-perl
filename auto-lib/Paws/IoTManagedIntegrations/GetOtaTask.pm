
package Paws::IoTManagedIntegrations::GetOtaTask;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOtaTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ota-tasks/{Identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::GetOtaTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetOtaTask - Arguments for method GetOtaTask on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetOtaTask on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method GetOtaTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetOtaTask.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $GetOtaTaskResponse = $api . iotmanagedintegrations->GetOtaTask(
      Identifier => 'MyOtaTaskId',

    );

    # Results:
    my $CreatedAt            = $GetOtaTaskResponse->CreatedAt;
    my $Description          = $GetOtaTaskResponse->Description;
    my $LastUpdatedAt        = $GetOtaTaskResponse->LastUpdatedAt;
    my $OtaMechanism         = $GetOtaTaskResponse->OtaMechanism;
    my $OtaSchedulingConfig  = $GetOtaTaskResponse->OtaSchedulingConfig;
    my $OtaTargetQueryString = $GetOtaTaskResponse->OtaTargetQueryString;
    my $OtaTaskExecutionRetryConfig =
      $GetOtaTaskResponse->OtaTaskExecutionRetryConfig;
    my $OtaType               = $GetOtaTaskResponse->OtaType;
    my $Protocol              = $GetOtaTaskResponse->Protocol;
    my $S3Url                 = $GetOtaTaskResponse->S3Url;
    my $Status                = $GetOtaTaskResponse->Status;
    my $Target                = $GetOtaTaskResponse->Target;
    my $TaskArn               = $GetOtaTaskResponse->TaskArn;
    my $TaskConfigurationId   = $GetOtaTaskResponse->TaskConfigurationId;
    my $TaskId                = $GetOtaTaskResponse->TaskId;
    my $TaskProcessingDetails = $GetOtaTaskResponse->TaskProcessingDetails;

    # Returns a L<Paws::IoTManagedIntegrations::GetOtaTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/GetOtaTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The over-the-air (OTA) task id.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetOtaTask in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

