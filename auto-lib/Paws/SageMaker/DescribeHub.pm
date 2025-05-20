
package Paws::SageMaker::DescribeHub;
  use Moose;
  has HubName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeHub');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeHubResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeHub - Arguments for method DescribeHub on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeHub on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeHub.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeHub.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeHubResponse = $api . sagemaker->DescribeHub(
      HubName => 'MyHubNameOrArn',

    );

    # Results:
    my $CreationTime      = $DescribeHubResponse->CreationTime;
    my $FailureReason     = $DescribeHubResponse->FailureReason;
    my $HubArn            = $DescribeHubResponse->HubArn;
    my $HubDescription    = $DescribeHubResponse->HubDescription;
    my $HubDisplayName    = $DescribeHubResponse->HubDisplayName;
    my $HubName           = $DescribeHubResponse->HubName;
    my $HubSearchKeywords = $DescribeHubResponse->HubSearchKeywords;
    my $HubStatus         = $DescribeHubResponse->HubStatus;
    my $LastModifiedTime  = $DescribeHubResponse->LastModifiedTime;
    my $S3StorageConfig   = $DescribeHubResponse->S3StorageConfig;

    # Returns a L<Paws::SageMaker::DescribeHubResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeHub>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HubName => Str

The name of the hub to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeHub in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

