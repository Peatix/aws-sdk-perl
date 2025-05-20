
package Paws::SageMaker::StopInferenceExperiment;
  use Moose;
  has DesiredModelVariants => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ModelVariantConfig]');
  has DesiredState => (is => 'ro', isa => 'Str');
  has ModelVariantActions => (is => 'ro', isa => 'Paws::SageMaker::ModelVariantActionMap', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Reason => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopInferenceExperiment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::StopInferenceExperimentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::StopInferenceExperiment - Arguments for method StopInferenceExperiment on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopInferenceExperiment on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method StopInferenceExperiment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopInferenceExperiment.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $StopInferenceExperimentResponse =
      $api . sagemaker->StopInferenceExperiment(
      ModelVariantActions => {
        'MyModelVariantName' =>
          'Retain',    # key: max: 63, value: values: Retain, Remove, Promote
      },
      Name                 => 'MyInferenceExperimentName',
      DesiredModelVariants => [
        {
          InfrastructureConfig => {
            InfrastructureType =>
              'RealTimeInference',    # values: RealTimeInference
            RealTimeInferenceConfig => {
              InstanceCount => 1,
              InstanceType  => 'ml.t2.medium'
              , # values: ml.t2.medium, ml.t2.large, ml.t2.xlarge, ml.t2.2xlarge, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.m5d.large, ml.m5d.xlarge, ml.m5d.2xlarge, ml.m5d.4xlarge, ml.m5d.8xlarge, ml.m5d.12xlarge, ml.m5d.16xlarge, ml.m5d.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5d.xlarge, ml.c5d.2xlarge, ml.c5d.4xlarge, ml.c5d.9xlarge, ml.c5d.18xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.inf1.xlarge, ml.inf1.2xlarge, ml.inf1.6xlarge, ml.inf1.24xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.inf2.xlarge, ml.inf2.8xlarge, ml.inf2.24xlarge, ml.inf2.48xlarge, ml.p4d.24xlarge, ml.p4de.24xlarge, ml.p5.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.m7i.large, ml.m7i.xlarge, ml.m7i.2xlarge, ml.m7i.4xlarge, ml.m7i.8xlarge, ml.m7i.12xlarge, ml.m7i.16xlarge, ml.m7i.24xlarge, ml.m7i.48xlarge, ml.c6i.large, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.c7i.large, ml.c7i.xlarge, ml.c7i.2xlarge, ml.c7i.4xlarge, ml.c7i.8xlarge, ml.c7i.12xlarge, ml.c7i.16xlarge, ml.c7i.24xlarge, ml.c7i.48xlarge, ml.r6i.large, ml.r6i.xlarge, ml.r6i.2xlarge, ml.r6i.4xlarge, ml.r6i.8xlarge, ml.r6i.12xlarge, ml.r6i.16xlarge, ml.r6i.24xlarge, ml.r6i.32xlarge, ml.r7i.large, ml.r7i.xlarge, ml.r7i.2xlarge, ml.r7i.4xlarge, ml.r7i.8xlarge, ml.r7i.12xlarge, ml.r7i.16xlarge, ml.r7i.24xlarge, ml.r7i.48xlarge, ml.m6id.large, ml.m6id.xlarge, ml.m6id.2xlarge, ml.m6id.4xlarge, ml.m6id.8xlarge, ml.m6id.12xlarge, ml.m6id.16xlarge, ml.m6id.24xlarge, ml.m6id.32xlarge, ml.c6id.large, ml.c6id.xlarge, ml.c6id.2xlarge, ml.c6id.4xlarge, ml.c6id.8xlarge, ml.c6id.12xlarge, ml.c6id.16xlarge, ml.c6id.24xlarge, ml.c6id.32xlarge, ml.r6id.large, ml.r6id.xlarge, ml.r6id.2xlarge, ml.r6id.4xlarge, ml.r6id.8xlarge, ml.r6id.12xlarge, ml.r6id.16xlarge, ml.r6id.24xlarge, ml.r6id.32xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.12xlarge, ml.g6.16xlarge, ml.g6.24xlarge, ml.g6.48xlarge

            },

          },
          ModelName   => 'MyModelName',           # max: 63
          VariantName => 'MyModelVariantName',    # max: 63

        },
        ...
      ],    # OPTIONAL
      DesiredState => 'Completed',                            # OPTIONAL
      Reason       => 'MyInferenceExperimentStatusReason',    # OPTIONAL
      );

    # Results:
    my $InferenceExperimentArn =
      $StopInferenceExperimentResponse->InferenceExperimentArn;

    # Returns a L<Paws::SageMaker::StopInferenceExperimentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/StopInferenceExperiment>

=head1 ATTRIBUTES


=head2 DesiredModelVariants => ArrayRef[L<Paws::SageMaker::ModelVariantConfig>]

An array of C<ModelVariantConfig> objects. There is one for each
variant that you want to deploy after the inference experiment stops.
Each C<ModelVariantConfig> describes the infrastructure configuration
for deploying the corresponding variant.



=head2 DesiredState => Str

The desired state of the experiment after stopping. The possible states
are the following:

=over

=item *

C<Completed>: The experiment completed successfully

=item *

C<Cancelled>: The experiment was canceled

=back


Valid values are: C<"Completed">, C<"Cancelled">

=head2 B<REQUIRED> ModelVariantActions => L<Paws::SageMaker::ModelVariantActionMap>

Array of key-value pairs, with names of variants mapped to actions. The
possible actions are the following:

=over

=item *

C<Promote> - Promote the shadow variant to a production variant

=item *

C<Remove> - Delete the variant

=item *

C<Retain> - Keep the variant as it is

=back




=head2 B<REQUIRED> Name => Str

The name of the inference experiment to stop.



=head2 Reason => Str

The reason for stopping the experiment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopInferenceExperiment in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

