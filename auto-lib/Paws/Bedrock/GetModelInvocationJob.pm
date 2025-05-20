
package Paws::Bedrock::GetModelInvocationJob;
  use Moose;
  has JobIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetModelInvocationJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/model-invocation-job/{jobIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::GetModelInvocationJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetModelInvocationJob - Arguments for method GetModelInvocationJob on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetModelInvocationJob on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method GetModelInvocationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetModelInvocationJob.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $GetModelInvocationJobResponse = $bedrock->GetModelInvocationJob(
      JobIdentifier => 'MyModelInvocationJobIdentifier',

    );

    # Results:
    my $ClientRequestToken = $GetModelInvocationJobResponse->ClientRequestToken;
    my $EndTime            = $GetModelInvocationJobResponse->EndTime;
    my $InputDataConfig    = $GetModelInvocationJobResponse->InputDataConfig;
    my $JobArn             = $GetModelInvocationJobResponse->JobArn;
    my $JobExpirationTime  = $GetModelInvocationJobResponse->JobExpirationTime;
    my $JobName            = $GetModelInvocationJobResponse->JobName;
    my $LastModifiedTime   = $GetModelInvocationJobResponse->LastModifiedTime;
    my $Message            = $GetModelInvocationJobResponse->Message;
    my $ModelId            = $GetModelInvocationJobResponse->ModelId;
    my $OutputDataConfig   = $GetModelInvocationJobResponse->OutputDataConfig;
    my $RoleArn            = $GetModelInvocationJobResponse->RoleArn;
    my $Status             = $GetModelInvocationJobResponse->Status;
    my $SubmitTime         = $GetModelInvocationJobResponse->SubmitTime;
    my $TimeoutDurationInHours =
      $GetModelInvocationJobResponse->TimeoutDurationInHours;
    my $VpcConfig = $GetModelInvocationJobResponse->VpcConfig;

    # Returns a L<Paws::Bedrock::GetModelInvocationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/GetModelInvocationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobIdentifier => Str

The Amazon Resource Name (ARN) of the batch inference job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetModelInvocationJob in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

