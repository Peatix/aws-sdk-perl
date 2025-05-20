
package Paws::Bedrock::GetEvaluationJob;
  use Moose;
  has JobIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEvaluationJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/evaluation-jobs/{jobIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::GetEvaluationJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetEvaluationJob - Arguments for method GetEvaluationJob on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEvaluationJob on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method GetEvaluationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEvaluationJob.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $GetEvaluationJobResponse = $bedrock->GetEvaluationJob(
      JobIdentifier => 'MyEvaluationJobIdentifier',

    );

    # Results:
    my $ApplicationType = $GetEvaluationJobResponse->ApplicationType;
    my $CreationTime    = $GetEvaluationJobResponse->CreationTime;
    my $CustomerEncryptionKeyId =
      $GetEvaluationJobResponse->CustomerEncryptionKeyId;
    my $EvaluationConfig = $GetEvaluationJobResponse->EvaluationConfig;
    my $FailureMessages  = $GetEvaluationJobResponse->FailureMessages;
    my $InferenceConfig  = $GetEvaluationJobResponse->InferenceConfig;
    my $JobArn           = $GetEvaluationJobResponse->JobArn;
    my $JobDescription   = $GetEvaluationJobResponse->JobDescription;
    my $JobName          = $GetEvaluationJobResponse->JobName;
    my $JobType          = $GetEvaluationJobResponse->JobType;
    my $LastModifiedTime = $GetEvaluationJobResponse->LastModifiedTime;
    my $OutputDataConfig = $GetEvaluationJobResponse->OutputDataConfig;
    my $RoleArn          = $GetEvaluationJobResponse->RoleArn;
    my $Status           = $GetEvaluationJobResponse->Status;

    # Returns a L<Paws::Bedrock::GetEvaluationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/GetEvaluationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobIdentifier => Str

The Amazon Resource Name (ARN) of the evaluation job you want get
information on.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEvaluationJob in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

