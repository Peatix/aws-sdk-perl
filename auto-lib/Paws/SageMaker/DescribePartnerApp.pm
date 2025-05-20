
package Paws::SageMaker::DescribePartnerApp;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePartnerApp');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribePartnerAppResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribePartnerApp - Arguments for method DescribePartnerApp on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePartnerApp on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribePartnerApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePartnerApp.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribePartnerAppResponse = $api . sagemaker->DescribePartnerApp(
      Arn => 'MyPartnerAppArn',

    );

    # Results:
    my $ApplicationConfig = $DescribePartnerAppResponse->ApplicationConfig;
    my $Arn               = $DescribePartnerAppResponse->Arn;
    my $AuthType          = $DescribePartnerAppResponse->AuthType;
    my $BaseUrl           = $DescribePartnerAppResponse->BaseUrl;
    my $CreationTime      = $DescribePartnerAppResponse->CreationTime;
    my $EnableIamSessionBasedIdentity =
      $DescribePartnerAppResponse->EnableIamSessionBasedIdentity;
    my $Error             = $DescribePartnerAppResponse->Error;
    my $ExecutionRoleArn  = $DescribePartnerAppResponse->ExecutionRoleArn;
    my $KmsKeyId          = $DescribePartnerAppResponse->KmsKeyId;
    my $LastModifiedTime  = $DescribePartnerAppResponse->LastModifiedTime;
    my $MaintenanceConfig = $DescribePartnerAppResponse->MaintenanceConfig;
    my $Name              = $DescribePartnerAppResponse->Name;
    my $Status            = $DescribePartnerAppResponse->Status;
    my $Tier              = $DescribePartnerAppResponse->Tier;
    my $Type              = $DescribePartnerAppResponse->Type;
    my $Version           = $DescribePartnerAppResponse->Version;

    # Returns a L<Paws::SageMaker::DescribePartnerAppResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribePartnerApp>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the SageMaker Partner AI App to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePartnerApp in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

