
package Paws::SageMaker::DescribeEdgeDeploymentPlan;
  use Moose;
  has EdgeDeploymentPlanName => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEdgeDeploymentPlan');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeEdgeDeploymentPlanResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeEdgeDeploymentPlan - Arguments for method DescribeEdgeDeploymentPlan on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEdgeDeploymentPlan on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeEdgeDeploymentPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEdgeDeploymentPlan.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeEdgeDeploymentPlanResponse =
      $api . sagemaker->DescribeEdgeDeploymentPlan(
      EdgeDeploymentPlanName => 'MyEntityName',
      MaxResults             => 1,                # OPTIONAL
      NextToken              => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $CreationTime    = $DescribeEdgeDeploymentPlanResponse->CreationTime;
    my $DeviceFleetName = $DescribeEdgeDeploymentPlanResponse->DeviceFleetName;
    my $EdgeDeploymentFailed =
      $DescribeEdgeDeploymentPlanResponse->EdgeDeploymentFailed;
    my $EdgeDeploymentPending =
      $DescribeEdgeDeploymentPlanResponse->EdgeDeploymentPending;
    my $EdgeDeploymentPlanArn =
      $DescribeEdgeDeploymentPlanResponse->EdgeDeploymentPlanArn;
    my $EdgeDeploymentPlanName =
      $DescribeEdgeDeploymentPlanResponse->EdgeDeploymentPlanName;
    my $EdgeDeploymentSuccess =
      $DescribeEdgeDeploymentPlanResponse->EdgeDeploymentSuccess;
    my $LastModifiedTime =
      $DescribeEdgeDeploymentPlanResponse->LastModifiedTime;
    my $ModelConfigs = $DescribeEdgeDeploymentPlanResponse->ModelConfigs;
    my $NextToken    = $DescribeEdgeDeploymentPlanResponse->NextToken;
    my $Stages       = $DescribeEdgeDeploymentPlanResponse->Stages;

    # Returns a L<Paws::SageMaker::DescribeEdgeDeploymentPlanResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeEdgeDeploymentPlan>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EdgeDeploymentPlanName => Str

The name of the deployment plan to describe.



=head2 MaxResults => Int

The maximum number of results to select (50 by default).



=head2 NextToken => Str

If the edge deployment plan has enough stages to require tokening, then
this is the response from the last list of stages returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEdgeDeploymentPlan in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

