
package Paws::SageMaker::DescribeFeatureMetadata;
  use Moose;
  has FeatureGroupName => (is => 'ro', isa => 'Str', required => 1);
  has FeatureName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFeatureMetadata');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeFeatureMetadataResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeFeatureMetadata - Arguments for method DescribeFeatureMetadata on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFeatureMetadata on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeFeatureMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFeatureMetadata.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeFeatureMetadataResponse =
      $api . sagemaker->DescribeFeatureMetadata(
      FeatureGroupName => 'MyFeatureGroupNameOrArn',
      FeatureName      => 'MyFeatureName',

      );

    # Results:
    my $CreationTime     = $DescribeFeatureMetadataResponse->CreationTime;
    my $Description      = $DescribeFeatureMetadataResponse->Description;
    my $FeatureGroupArn  = $DescribeFeatureMetadataResponse->FeatureGroupArn;
    my $FeatureGroupName = $DescribeFeatureMetadataResponse->FeatureGroupName;
    my $FeatureName      = $DescribeFeatureMetadataResponse->FeatureName;
    my $FeatureType      = $DescribeFeatureMetadataResponse->FeatureType;
    my $LastModifiedTime = $DescribeFeatureMetadataResponse->LastModifiedTime;
    my $Parameters       = $DescribeFeatureMetadataResponse->Parameters;

    # Returns a L<Paws::SageMaker::DescribeFeatureMetadataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeFeatureMetadata>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FeatureGroupName => Str

The name or Amazon Resource Name (ARN) of the feature group containing
the feature.



=head2 B<REQUIRED> FeatureName => Str

The name of the feature.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFeatureMetadata in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

