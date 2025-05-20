
package Paws::Braket::GetJob;
  use Moose;
  has AdditionalAttributeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'additionalAttributeNames');
  has JobArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/job/{jobArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Braket::GetJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Braket::GetJob - Arguments for method GetJob on L<Paws::Braket>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetJob on the
L<Braket|Paws::Braket> service. Use the attributes of this class
as arguments to method GetJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetJob.

=head1 SYNOPSIS

    my $braket = Paws->service('Braket');
    my $GetJobResponse = $braket->GetJob(
      JobArn                   => 'MyJobArn',
      AdditionalAttributeNames => [
        'QueueInfo', ...    # values: QueueInfo
      ],    # OPTIONAL
    );

    # Results:
    my $AlgorithmSpecification = $GetJobResponse->AlgorithmSpecification;
    my $Associations           = $GetJobResponse->Associations;
    my $BillableDuration       = $GetJobResponse->BillableDuration;
    my $CheckpointConfig       = $GetJobResponse->CheckpointConfig;
    my $CreatedAt              = $GetJobResponse->CreatedAt;
    my $DeviceConfig           = $GetJobResponse->DeviceConfig;
    my $EndedAt                = $GetJobResponse->EndedAt;
    my $Events                 = $GetJobResponse->Events;
    my $FailureReason          = $GetJobResponse->FailureReason;
    my $HyperParameters        = $GetJobResponse->HyperParameters;
    my $InputDataConfig        = $GetJobResponse->InputDataConfig;
    my $InstanceConfig         = $GetJobResponse->InstanceConfig;
    my $JobArn                 = $GetJobResponse->JobArn;
    my $JobName                = $GetJobResponse->JobName;
    my $OutputDataConfig       = $GetJobResponse->OutputDataConfig;
    my $QueueInfo              = $GetJobResponse->QueueInfo;
    my $RoleArn                = $GetJobResponse->RoleArn;
    my $StartedAt              = $GetJobResponse->StartedAt;
    my $Status                 = $GetJobResponse->Status;
    my $StoppingCondition      = $GetJobResponse->StoppingCondition;
    my $Tags                   = $GetJobResponse->Tags;

    # Returns a L<Paws::Braket::GetJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/braket/GetJob>

=head1 ATTRIBUTES


=head2 AdditionalAttributeNames => ArrayRef[Str|Undef]

A list of attributes to return information for.



=head2 B<REQUIRED> JobArn => Str

The ARN of the job to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetJob in L<Paws::Braket>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

