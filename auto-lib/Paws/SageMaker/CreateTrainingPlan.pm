
package Paws::SageMaker::CreateTrainingPlan;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has TrainingPlanName => (is => 'ro', isa => 'Str', required => 1);
  has TrainingPlanOfferingId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTrainingPlan');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateTrainingPlanResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateTrainingPlan - Arguments for method CreateTrainingPlan on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTrainingPlan on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateTrainingPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTrainingPlan.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateTrainingPlanResponse = $api . sagemaker->CreateTrainingPlan(
      TrainingPlanName       => 'MyTrainingPlanName',
      TrainingPlanOfferingId => 'MyTrainingPlanOfferingId',
      Tags                   => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $TrainingPlanArn = $CreateTrainingPlanResponse->TrainingPlanArn;

    # Returns a L<Paws::SageMaker::CreateTrainingPlanResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateTrainingPlan>

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key-value pairs to apply to this training plan.



=head2 B<REQUIRED> TrainingPlanName => Str

The name of the training plan to create.



=head2 B<REQUIRED> TrainingPlanOfferingId => Str

The unique identifier of the training plan offering to use for creating
this plan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTrainingPlan in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

