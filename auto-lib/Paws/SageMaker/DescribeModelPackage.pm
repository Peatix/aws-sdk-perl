
package Paws::SageMaker::DescribeModelPackage;
  use Moose;
  has ModelPackageName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeModelPackage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeModelPackageOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeModelPackage - Arguments for method DescribeModelPackage on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeModelPackage on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeModelPackage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeModelPackage.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeModelPackageOutput = $api . sagemaker->DescribeModelPackage(
      ModelPackageName => 'MyVersionedArnOrName',

    );

    # Results:
    my $AdditionalInferenceSpecifications =
      $DescribeModelPackageOutput->AdditionalInferenceSpecifications;
    my $ApprovalDescription = $DescribeModelPackageOutput->ApprovalDescription;
    my $CertifyForMarketplace =
      $DescribeModelPackageOutput->CertifyForMarketplace;
    my $CreatedBy    = $DescribeModelPackageOutput->CreatedBy;
    my $CreationTime = $DescribeModelPackageOutput->CreationTime;
    my $CustomerMetadataProperties =
      $DescribeModelPackageOutput->CustomerMetadataProperties;
    my $Domain              = $DescribeModelPackageOutput->Domain;
    my $DriftCheckBaselines = $DescribeModelPackageOutput->DriftCheckBaselines;
    my $InferenceSpecification =
      $DescribeModelPackageOutput->InferenceSpecification;
    my $LastModifiedBy      = $DescribeModelPackageOutput->LastModifiedBy;
    my $LastModifiedTime    = $DescribeModelPackageOutput->LastModifiedTime;
    my $MetadataProperties  = $DescribeModelPackageOutput->MetadataProperties;
    my $ModelApprovalStatus = $DescribeModelPackageOutput->ModelApprovalStatus;
    my $ModelCard           = $DescribeModelPackageOutput->ModelCard;
    my $ModelLifeCycle      = $DescribeModelPackageOutput->ModelLifeCycle;
    my $ModelMetrics        = $DescribeModelPackageOutput->ModelMetrics;
    my $ModelPackageArn     = $DescribeModelPackageOutput->ModelPackageArn;
    my $ModelPackageDescription =
      $DescribeModelPackageOutput->ModelPackageDescription;
    my $ModelPackageGroupName =
      $DescribeModelPackageOutput->ModelPackageGroupName;
    my $ModelPackageName   = $DescribeModelPackageOutput->ModelPackageName;
    my $ModelPackageStatus = $DescribeModelPackageOutput->ModelPackageStatus;
    my $ModelPackageStatusDetails =
      $DescribeModelPackageOutput->ModelPackageStatusDetails;
    my $ModelPackageVersion = $DescribeModelPackageOutput->ModelPackageVersion;
    my $SamplePayloadUrl    = $DescribeModelPackageOutput->SamplePayloadUrl;
    my $SecurityConfig      = $DescribeModelPackageOutput->SecurityConfig;
    my $SkipModelValidation = $DescribeModelPackageOutput->SkipModelValidation;
    my $SourceAlgorithmSpecification =
      $DescribeModelPackageOutput->SourceAlgorithmSpecification;
    my $SourceUri = $DescribeModelPackageOutput->SourceUri;
    my $Task      = $DescribeModelPackageOutput->Task;
    my $ValidationSpecification =
      $DescribeModelPackageOutput->ValidationSpecification;

    # Returns a L<Paws::SageMaker::DescribeModelPackageOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeModelPackage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelPackageName => Str

The name or Amazon Resource Name (ARN) of the model package to
describe.

When you specify a name, the name must have 1 to 63 characters. Valid
characters are a-z, A-Z, 0-9, and - (hyphen).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeModelPackage in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

