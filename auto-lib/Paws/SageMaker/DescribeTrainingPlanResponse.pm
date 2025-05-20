
package Paws::SageMaker::DescribeTrainingPlanResponse;
  use Moose;
  has AvailableInstanceCount => (is => 'ro', isa => 'Int');
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has DurationHours => (is => 'ro', isa => 'Int');
  has DurationMinutes => (is => 'ro', isa => 'Int');
  has EndTime => (is => 'ro', isa => 'Str');
  has InUseInstanceCount => (is => 'ro', isa => 'Int');
  has ReservedCapacitySummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ReservedCapacitySummary]');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str');
  has TargetResources => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TotalInstanceCount => (is => 'ro', isa => 'Int');
  has TrainingPlanArn => (is => 'ro', isa => 'Str', required => 1);
  has TrainingPlanName => (is => 'ro', isa => 'Str', required => 1);
  has UpfrontFee => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeTrainingPlanResponse

=head1 ATTRIBUTES


=head2 AvailableInstanceCount => Int

The number of instances currently available for use in this training
plan.


=head2 CurrencyCode => Str

The currency code for the upfront fee (e.g., USD).


=head2 DurationHours => Int

The number of whole hours in the total duration for this training plan.


=head2 DurationMinutes => Int

The additional minutes beyond whole hours in the total duration for
this training plan.


=head2 EndTime => Str

The end time of the training plan.


=head2 InUseInstanceCount => Int

The number of instances currently in use from this training plan.


=head2 ReservedCapacitySummaries => ArrayRef[L<Paws::SageMaker::ReservedCapacitySummary>]

The list of Reserved Capacity providing the underlying compute
resources of the plan.


=head2 StartTime => Str

The start time of the training plan.


=head2 B<REQUIRED> Status => Str

The current status of the training plan (e.g., Pending, Active,
Expired). To see the complete list of status values available for a
training plan, refer to the C<Status> attribute within the C<
TrainingPlanSummary
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_TrainingPlanSummary.html)
> object.

Valid values are: C<"Pending">, C<"Active">, C<"Scheduled">, C<"Expired">, C<"Failed">
=head2 StatusMessage => Str

A message providing additional information about the current status of
the training plan.


=head2 TargetResources => ArrayRef[Str|Undef]

The target resources (e.g., SageMaker Training Jobs, SageMaker
HyperPod) that can use this training plan.

Training plans are specific to their target resource.

=over

=item *

A training plan designed for SageMaker training jobs can only be used
to schedule and run training jobs.

=item *

A training plan for HyperPod clusters can be used exclusively to
provide compute resources to a cluster's instance group.

=back



=head2 TotalInstanceCount => Int

The total number of instances reserved in this training plan.


=head2 B<REQUIRED> TrainingPlanArn => Str

The Amazon Resource Name (ARN); of the training plan.


=head2 B<REQUIRED> TrainingPlanName => Str

The name of the training plan.


=head2 UpfrontFee => Str

The upfront fee for the training plan.


=head2 _request_id => Str


=cut

1;