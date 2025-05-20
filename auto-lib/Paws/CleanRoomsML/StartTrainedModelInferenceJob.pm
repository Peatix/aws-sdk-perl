
package Paws::CleanRoomsML::StartTrainedModelInferenceJob;
  use Moose;
  has ConfiguredModelAlgorithmAssociationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configuredModelAlgorithmAssociationArn');
  has ContainerExecutionParameters => (is => 'ro', isa => 'Paws::CleanRoomsML::InferenceContainerExecutionParameters', traits => ['NameInRequest'], request_name => 'containerExecutionParameters');
  has DataSource => (is => 'ro', isa => 'Paws::CleanRoomsML::ModelInferenceDataSource', traits => ['NameInRequest'], request_name => 'dataSource', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Environment => (is => 'ro', isa => 'Paws::CleanRoomsML::InferenceEnvironmentMap', traits => ['NameInRequest'], request_name => 'environment');
  has KmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyArn');
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OutputConfiguration => (is => 'ro', isa => 'Paws::CleanRoomsML::InferenceOutputConfiguration', traits => ['NameInRequest'], request_name => 'outputConfiguration', required => 1);
  has ResourceConfig => (is => 'ro', isa => 'Paws::CleanRoomsML::InferenceResourceConfig', traits => ['NameInRequest'], request_name => 'resourceConfig', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CleanRoomsML::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has TrainedModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trainedModelArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartTrainedModelInferenceJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/trained-model-inference-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRoomsML::StartTrainedModelInferenceJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::StartTrainedModelInferenceJob - Arguments for method StartTrainedModelInferenceJob on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTrainedModelInferenceJob on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method StartTrainedModelInferenceJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartTrainedModelInferenceJob.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    my $StartTrainedModelInferenceJobResponse =
      $cleanrooms -ml->StartTrainedModelInferenceJob(
      DataSource => {
        MlInputChannelArn => 'MyMLInputChannelArn',    # min: 20, max: 2048

      },
      MembershipIdentifier => 'MyUUID',
      Name                 => 'MyNameString',
      OutputConfiguration  => {
        Members => [
          {
            AccountId => 'MyAccountId',    # min: 12, max: 12

          },
          ...
        ],    # min: 1, max: 1
        Accept =>
          'MyInferenceOutputConfigurationAcceptString',    # max: 256; OPTIONAL
      },
      ResourceConfig => {
        InstanceType => 'ml.r7i.48xlarge'
        , # values: ml.r7i.48xlarge, ml.r6i.16xlarge, ml.m6i.xlarge, ml.m5.4xlarge, ml.p2.xlarge, ml.m4.16xlarge, ml.r7i.16xlarge, ml.m7i.xlarge, ml.m6i.12xlarge, ml.r7i.8xlarge, ml.r7i.large, ml.m7i.12xlarge, ml.m6i.24xlarge, ml.m7i.24xlarge, ml.r6i.8xlarge, ml.r6i.large, ml.g5.2xlarge, ml.m5.large, ml.p3.16xlarge, ml.m7i.48xlarge, ml.m6i.16xlarge, ml.p2.16xlarge, ml.g5.4xlarge, ml.m7i.16xlarge, ml.c4.2xlarge, ml.c5.2xlarge, ml.c6i.32xlarge, ml.c4.4xlarge, ml.g5.8xlarge, ml.c6i.xlarge, ml.c5.4xlarge, ml.g4dn.xlarge, ml.c7i.xlarge, ml.c6i.12xlarge, ml.g4dn.12xlarge, ml.c7i.12xlarge, ml.c6i.24xlarge, ml.g4dn.2xlarge, ml.c7i.24xlarge, ml.c7i.2xlarge, ml.c4.8xlarge, ml.c6i.2xlarge, ml.g4dn.4xlarge, ml.c7i.48xlarge, ml.c7i.4xlarge, ml.c6i.16xlarge, ml.c5.9xlarge, ml.g4dn.16xlarge, ml.c7i.16xlarge, ml.c6i.4xlarge, ml.c5.xlarge, ml.c4.xlarge, ml.g4dn.8xlarge, ml.c7i.8xlarge, ml.c7i.large, ml.g5.xlarge, ml.c6i.8xlarge, ml.c6i.large, ml.g5.12xlarge, ml.g5.24xlarge, ml.m7i.2xlarge, ml.c5.18xlarge, ml.g5.48xlarge, ml.m6i.2xlarge, ml.g5.16xlarge, ml.m7i.4xlarge, ml.p3.2xlarge, ml.r6i.32xlarge, ml.m6i.4xlarge, ml.m5.xlarge, ml.m4.10xlarge, ml.r6i.xlarge, ml.m5.12xlarge, ml.m4.xlarge, ml.r7i.2xlarge, ml.r7i.xlarge, ml.r6i.12xlarge, ml.m5.24xlarge, ml.r7i.12xlarge, ml.m7i.8xlarge, ml.m7i.large, ml.r6i.24xlarge, ml.r6i.2xlarge, ml.m4.2xlarge, ml.r7i.24xlarge, ml.r7i.4xlarge, ml.m6i.8xlarge, ml.m6i.large, ml.m5.2xlarge, ml.p2.8xlarge, ml.r6i.4xlarge, ml.m6i.32xlarge, ml.p3.8xlarge, ml.m4.4xlarge
        InstanceCount => 1,    # min: 1, max: 10; OPTIONAL
      },
      TrainedModelArn                        => 'MyTrainedModelArn',
      ConfiguredModelAlgorithmAssociationArn =>
        'MyConfiguredModelAlgorithmAssociationArn',    # OPTIONAL
      ContainerExecutionParameters => {
        MaxPayloadInMB => 1,    # min: 1, max: 100; OPTIONAL
      },    # OPTIONAL
      Description => 'MyResourceDescription',    # OPTIONAL
      Environment => {
        'MyInferenceEnvironmentMapKeyString' =>
          'MyInferenceEnvironmentMapValueString'
        ,    # key: min: 1, max: 1024, value: min: 1, max: 10240
      },    # OPTIONAL
      KmsKeyArn => 'MyKmsKeyArn',    # OPTIONAL
      Tags      => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $TrainedModelInferenceJobArn =
      $StartTrainedModelInferenceJobResponse->TrainedModelInferenceJobArn;

# Returns a L<Paws::CleanRoomsML::StartTrainedModelInferenceJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/StartTrainedModelInferenceJob>

=head1 ATTRIBUTES


=head2 ConfiguredModelAlgorithmAssociationArn => Str

The Amazon Resource Name (ARN) of the configured model algorithm
association that is used for this trained model inference job.



=head2 ContainerExecutionParameters => L<Paws::CleanRoomsML::InferenceContainerExecutionParameters>

The execution parameters for the container.



=head2 B<REQUIRED> DataSource => L<Paws::CleanRoomsML::ModelInferenceDataSource>

Defines the data source that is used for the trained model inference
job.



=head2 Description => Str

The description of the trained model inference job.



=head2 Environment => L<Paws::CleanRoomsML::InferenceEnvironmentMap>

The environment variables to set in the Docker container.



=head2 KmsKeyArn => Str

The Amazon Resource Name (ARN) of the KMS key. This key is used to
encrypt and decrypt customer-owned data in the ML inference job and
associated data.



=head2 B<REQUIRED> MembershipIdentifier => Str

The membership ID of the membership that contains the trained model
inference job.



=head2 B<REQUIRED> Name => Str

The name of the trained model inference job.



=head2 B<REQUIRED> OutputConfiguration => L<Paws::CleanRoomsML::InferenceOutputConfiguration>

Defines the output configuration information for the trained model
inference job.



=head2 B<REQUIRED> ResourceConfig => L<Paws::CleanRoomsML::InferenceResourceConfig>

Defines the resource configuration for the trained model inference job.



=head2 Tags => L<Paws::CleanRoomsML::TagMap>

The optional metadata that you apply to the resource to help you
categorize and organize them. Each tag consists of a key and an
optional value, both of which you define.

The following basic restrictions apply to tags:

=over

=item *

Maximum number of tags per resource - 50.

=item *

For each resource, each tag key must be unique, and each tag key can
have only one value.

=item *

Maximum key length - 128 Unicode characters in UTF-8.

=item *

Maximum value length - 256 Unicode characters in UTF-8.

=item *

If your tagging schema is used across multiple services and resources,
remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _
: / @.

=item *

Tag keys and values are case sensitive.

=item *

Do not use aws:, AWS:, or any upper or lowercase combination of such as
a prefix for keys as it is reserved for AWS use. You cannot edit or
delete tag keys with this prefix. Values can have this prefix. If a tag
value has aws as its prefix but the key does not, then Clean Rooms ML
considers it to be a user tag and will count against the limit of 50
tags. Tags with only the key prefix of aws do not count against your
tags per resource limit.

=back




=head2 B<REQUIRED> TrainedModelArn => Str

The Amazon Resource Name (ARN) of the trained model that is used for
this trained model inference job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTrainedModelInferenceJob in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

