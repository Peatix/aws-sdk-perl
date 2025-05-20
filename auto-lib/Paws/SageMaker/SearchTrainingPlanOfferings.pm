
package Paws::SageMaker::SearchTrainingPlanOfferings;
  use Moose;
  has DurationHours => (is => 'ro', isa => 'Int', required => 1);
  has EndTimeBefore => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has InstanceType => (is => 'ro', isa => 'Str');
  has StartTimeAfter => (is => 'ro', isa => 'Str');
  has TargetResources => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchTrainingPlanOfferings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::SearchTrainingPlanOfferingsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::SearchTrainingPlanOfferings - Arguments for method SearchTrainingPlanOfferings on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchTrainingPlanOfferings on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method SearchTrainingPlanOfferings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchTrainingPlanOfferings.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $SearchTrainingPlanOfferingsResponse =
      $api . sagemaker->SearchTrainingPlanOfferings(
      DurationHours   => 1,
      TargetResources => [
        'training-job', ...    # values: training-job, hyperpod-cluster
      ],
      EndTimeBefore  => '1970-01-01T01:00:00',    # OPTIONAL
      InstanceCount  => 1,                        # OPTIONAL
      InstanceType   => 'ml.p4d.24xlarge',        # OPTIONAL
      StartTimeAfter => '1970-01-01T01:00:00',    # OPTIONAL
      );

    # Results:
    my $TrainingPlanOfferings =
      $SearchTrainingPlanOfferingsResponse->TrainingPlanOfferings;

    # Returns a L<Paws::SageMaker::SearchTrainingPlanOfferingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/SearchTrainingPlanOfferings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DurationHours => Int

The desired duration in hours for the training plan offerings.



=head2 EndTimeBefore => Str

A filter to search for reserved capacity offerings with an end time
before a specified date.



=head2 InstanceCount => Int

The number of instances you want to reserve in the training plan
offerings. This allows you to specify the quantity of compute resources
needed for your SageMaker training jobs or SageMaker HyperPod clusters,
helping you find reserved capacity offerings that match your
requirements.



=head2 InstanceType => Str

The type of instance you want to search for in the available training
plan offerings. This field allows you to filter the search results
based on the specific compute resources you require for your SageMaker
training jobs or SageMaker HyperPod clusters. When searching for
training plan offerings, specifying the instance type helps you find
Reserved Instances that match your computational needs.

Valid values are: C<"ml.p4d.24xlarge">, C<"ml.p5.48xlarge">, C<"ml.p5e.48xlarge">, C<"ml.p5en.48xlarge">, C<"ml.trn1.32xlarge">, C<"ml.trn2.48xlarge">

=head2 StartTimeAfter => Str

A filter to search for training plan offerings with a start time after
a specified date.



=head2 B<REQUIRED> TargetResources => ArrayRef[Str|Undef]

The target resources (e.g., SageMaker Training Jobs, SageMaker
HyperPod) to search for in the offerings.

Training plans are specific to their target resource.

=over

=item *

A training plan designed for SageMaker training jobs can only be used
to schedule and run training jobs.

=item *

A training plan for HyperPod clusters can be used exclusively to
provide compute resources to a cluster's instance group.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchTrainingPlanOfferings in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

