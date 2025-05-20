
package Paws::SageMaker::DescribeTrainingPlan;
  use Moose;
  has TrainingPlanName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrainingPlan');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeTrainingPlanResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeTrainingPlan - Arguments for method DescribeTrainingPlan on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTrainingPlan on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeTrainingPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTrainingPlan.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeTrainingPlanResponse = $api . sagemaker->DescribeTrainingPlan(
      TrainingPlanName => 'MyTrainingPlanName',

    );

    # Results:
    my $AvailableInstanceCount =
      $DescribeTrainingPlanResponse->AvailableInstanceCount;
    my $CurrencyCode       = $DescribeTrainingPlanResponse->CurrencyCode;
    my $DurationHours      = $DescribeTrainingPlanResponse->DurationHours;
    my $DurationMinutes    = $DescribeTrainingPlanResponse->DurationMinutes;
    my $EndTime            = $DescribeTrainingPlanResponse->EndTime;
    my $InUseInstanceCount = $DescribeTrainingPlanResponse->InUseInstanceCount;
    my $ReservedCapacitySummaries =
      $DescribeTrainingPlanResponse->ReservedCapacitySummaries;
    my $StartTime          = $DescribeTrainingPlanResponse->StartTime;
    my $Status             = $DescribeTrainingPlanResponse->Status;
    my $StatusMessage      = $DescribeTrainingPlanResponse->StatusMessage;
    my $TargetResources    = $DescribeTrainingPlanResponse->TargetResources;
    my $TotalInstanceCount = $DescribeTrainingPlanResponse->TotalInstanceCount;
    my $TrainingPlanArn    = $DescribeTrainingPlanResponse->TrainingPlanArn;
    my $TrainingPlanName   = $DescribeTrainingPlanResponse->TrainingPlanName;
    my $UpfrontFee         = $DescribeTrainingPlanResponse->UpfrontFee;

    # Returns a L<Paws::SageMaker::DescribeTrainingPlanResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeTrainingPlan>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrainingPlanName => Str

The name of the training plan to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTrainingPlan in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

