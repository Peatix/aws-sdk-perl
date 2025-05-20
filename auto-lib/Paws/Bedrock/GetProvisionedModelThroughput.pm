
package Paws::Bedrock::GetProvisionedModelThroughput;
  use Moose;
  has ProvisionedModelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'provisionedModelId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetProvisionedModelThroughput');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/provisioned-model-throughput/{provisionedModelId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::GetProvisionedModelThroughputResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetProvisionedModelThroughput - Arguments for method GetProvisionedModelThroughput on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetProvisionedModelThroughput on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method GetProvisionedModelThroughput.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetProvisionedModelThroughput.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $GetProvisionedModelThroughputResponse =
      $bedrock->GetProvisionedModelThroughput(
      ProvisionedModelId => 'MyProvisionedModelId',

      );

    # Results:
    my $CommitmentDuration =
      $GetProvisionedModelThroughputResponse->CommitmentDuration;
    my $CommitmentExpirationTime =
      $GetProvisionedModelThroughputResponse->CommitmentExpirationTime;
    my $CreationTime = $GetProvisionedModelThroughputResponse->CreationTime;
    my $DesiredModelArn =
      $GetProvisionedModelThroughputResponse->DesiredModelArn;
    my $DesiredModelUnits =
      $GetProvisionedModelThroughputResponse->DesiredModelUnits;
    my $FailureMessage = $GetProvisionedModelThroughputResponse->FailureMessage;
    my $FoundationModelArn =
      $GetProvisionedModelThroughputResponse->FoundationModelArn;
    my $LastModifiedTime =
      $GetProvisionedModelThroughputResponse->LastModifiedTime;
    my $ModelArn   = $GetProvisionedModelThroughputResponse->ModelArn;
    my $ModelUnits = $GetProvisionedModelThroughputResponse->ModelUnits;
    my $ProvisionedModelArn =
      $GetProvisionedModelThroughputResponse->ProvisionedModelArn;
    my $ProvisionedModelName =
      $GetProvisionedModelThroughputResponse->ProvisionedModelName;
    my $Status = $GetProvisionedModelThroughputResponse->Status;

    # Returns a L<Paws::Bedrock::GetProvisionedModelThroughputResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/GetProvisionedModelThroughput>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProvisionedModelId => Str

The Amazon Resource Name (ARN) or name of the Provisioned Throughput.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetProvisionedModelThroughput in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

