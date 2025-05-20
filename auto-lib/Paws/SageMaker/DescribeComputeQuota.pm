
package Paws::SageMaker::DescribeComputeQuota;
  use Moose;
  has ComputeQuotaId => (is => 'ro', isa => 'Str', required => 1);
  has ComputeQuotaVersion => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeComputeQuota');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeComputeQuotaResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeComputeQuota - Arguments for method DescribeComputeQuota on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeComputeQuota on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeComputeQuota.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeComputeQuota.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeComputeQuotaResponse = $api . sagemaker->DescribeComputeQuota(
      ComputeQuotaId      => 'MyComputeQuotaId',
      ComputeQuotaVersion => 1,                    # OPTIONAL
    );

    # Results:
    my $ActivationState    = $DescribeComputeQuotaResponse->ActivationState;
    my $ClusterArn         = $DescribeComputeQuotaResponse->ClusterArn;
    my $ComputeQuotaArn    = $DescribeComputeQuotaResponse->ComputeQuotaArn;
    my $ComputeQuotaConfig = $DescribeComputeQuotaResponse->ComputeQuotaConfig;
    my $ComputeQuotaId     = $DescribeComputeQuotaResponse->ComputeQuotaId;
    my $ComputeQuotaTarget = $DescribeComputeQuotaResponse->ComputeQuotaTarget;
    my $ComputeQuotaVersion =
      $DescribeComputeQuotaResponse->ComputeQuotaVersion;
    my $CreatedBy        = $DescribeComputeQuotaResponse->CreatedBy;
    my $CreationTime     = $DescribeComputeQuotaResponse->CreationTime;
    my $Description      = $DescribeComputeQuotaResponse->Description;
    my $FailureReason    = $DescribeComputeQuotaResponse->FailureReason;
    my $LastModifiedBy   = $DescribeComputeQuotaResponse->LastModifiedBy;
    my $LastModifiedTime = $DescribeComputeQuotaResponse->LastModifiedTime;
    my $Name             = $DescribeComputeQuotaResponse->Name;
    my $Status           = $DescribeComputeQuotaResponse->Status;

    # Returns a L<Paws::SageMaker::DescribeComputeQuotaResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeComputeQuota>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComputeQuotaId => Str

ID of the compute allocation definition.



=head2 ComputeQuotaVersion => Int

Version of the compute allocation definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeComputeQuota in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

