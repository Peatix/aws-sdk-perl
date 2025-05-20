
package Paws::SageMaker::BatchDescribeModelPackage;
  use Moose;
  has ModelPackageArnList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDescribeModelPackage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::BatchDescribeModelPackageOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::BatchDescribeModelPackage - Arguments for method BatchDescribeModelPackage on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDescribeModelPackage on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method BatchDescribeModelPackage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDescribeModelPackage.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $BatchDescribeModelPackageOutput =
      $api . sagemaker->BatchDescribeModelPackage(
      ModelPackageArnList => [
        'MyModelPackageArn', ...    # min: 1, max: 2048
      ],

      );

    # Results:
    my $BatchDescribeModelPackageErrorMap =
      $BatchDescribeModelPackageOutput->BatchDescribeModelPackageErrorMap;
    my $ModelPackageSummaries =
      $BatchDescribeModelPackageOutput->ModelPackageSummaries;

    # Returns a L<Paws::SageMaker::BatchDescribeModelPackageOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/BatchDescribeModelPackage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelPackageArnList => ArrayRef[Str|Undef]

The list of Amazon Resource Name (ARN) of the model package groups.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDescribeModelPackage in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

