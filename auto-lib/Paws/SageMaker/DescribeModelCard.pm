
package Paws::SageMaker::DescribeModelCard;
  use Moose;
  has ModelCardName => (is => 'ro', isa => 'Str', required => 1);
  has ModelCardVersion => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeModelCard');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeModelCardResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeModelCard - Arguments for method DescribeModelCard on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeModelCard on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeModelCard.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeModelCard.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeModelCardResponse = $api . sagemaker->DescribeModelCard(
      ModelCardName    => 'MyModelCardNameOrArn',
      ModelCardVersion => 1,                        # OPTIONAL
    );

    # Results:
    my $Content          = $DescribeModelCardResponse->Content;
    my $CreatedBy        = $DescribeModelCardResponse->CreatedBy;
    my $CreationTime     = $DescribeModelCardResponse->CreationTime;
    my $LastModifiedBy   = $DescribeModelCardResponse->LastModifiedBy;
    my $LastModifiedTime = $DescribeModelCardResponse->LastModifiedTime;
    my $ModelCardArn     = $DescribeModelCardResponse->ModelCardArn;
    my $ModelCardName    = $DescribeModelCardResponse->ModelCardName;
    my $ModelCardProcessingStatus =
      $DescribeModelCardResponse->ModelCardProcessingStatus;
    my $ModelCardStatus  = $DescribeModelCardResponse->ModelCardStatus;
    my $ModelCardVersion = $DescribeModelCardResponse->ModelCardVersion;
    my $SecurityConfig   = $DescribeModelCardResponse->SecurityConfig;

    # Returns a L<Paws::SageMaker::DescribeModelCardResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeModelCard>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelCardName => Str

The name or Amazon Resource Name (ARN) of the model card to describe.



=head2 ModelCardVersion => Int

The version of the model card to describe. If a version is not
provided, then the latest version of the model card is described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeModelCard in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

