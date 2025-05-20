
package Paws::M2::GetBatchJobExecution;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has ExecutionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'executionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBatchJobExecution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/batch-job-executions/{executionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::M2::GetBatchJobExecutionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::GetBatchJobExecution - Arguments for method GetBatchJobExecution on L<Paws::M2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBatchJobExecution on the
L<AWSMainframeModernization|Paws::M2> service. Use the attributes of this class
as arguments to method GetBatchJobExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBatchJobExecution.

=head1 SYNOPSIS

    my $m2 = Paws->service('M2');
    my $GetBatchJobExecutionResponse = $m2->GetBatchJobExecution(
      ApplicationId => 'MyIdentifier',
      ExecutionId   => 'MyIdentifier',

    );

    # Results:
    my $ApplicationId      = $GetBatchJobExecutionResponse->ApplicationId;
    my $BatchJobIdentifier = $GetBatchJobExecutionResponse->BatchJobIdentifier;
    my $EndTime            = $GetBatchJobExecutionResponse->EndTime;
    my $ExecutionId        = $GetBatchJobExecutionResponse->ExecutionId;
    my $JobId              = $GetBatchJobExecutionResponse->JobId;
    my $JobName            = $GetBatchJobExecutionResponse->JobName;
    my $JobStepRestartMarker =
      $GetBatchJobExecutionResponse->JobStepRestartMarker;
    my $JobType      = $GetBatchJobExecutionResponse->JobType;
    my $JobUser      = $GetBatchJobExecutionResponse->JobUser;
    my $ReturnCode   = $GetBatchJobExecutionResponse->ReturnCode;
    my $StartTime    = $GetBatchJobExecutionResponse->StartTime;
    my $Status       = $GetBatchJobExecutionResponse->Status;
    my $StatusReason = $GetBatchJobExecutionResponse->StatusReason;

    # Returns a L<Paws::M2::GetBatchJobExecutionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/m2/GetBatchJobExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the application.



=head2 B<REQUIRED> ExecutionId => Str

The unique identifier of the batch job execution.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBatchJobExecution in L<Paws::M2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

