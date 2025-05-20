
package Paws::CleanRoomsML::CreateTrainedModel;
  use Moose;
  has ConfiguredModelAlgorithmAssociationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configuredModelAlgorithmAssociationArn', required => 1);
  has DataChannels => (is => 'ro', isa => 'ArrayRef[Paws::CleanRoomsML::ModelTrainingDataChannel]', traits => ['NameInRequest'], request_name => 'dataChannels', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Environment => (is => 'ro', isa => 'Paws::CleanRoomsML::Environment', traits => ['NameInRequest'], request_name => 'environment');
  has Hyperparameters => (is => 'ro', isa => 'Paws::CleanRoomsML::HyperParameters', traits => ['NameInRequest'], request_name => 'hyperparameters');
  has KmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyArn');
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ResourceConfig => (is => 'ro', isa => 'Paws::CleanRoomsML::ResourceConfig', traits => ['NameInRequest'], request_name => 'resourceConfig', required => 1);
  has StoppingCondition => (is => 'ro', isa => 'Paws::CleanRoomsML::StoppingCondition', traits => ['NameInRequest'], request_name => 'stoppingCondition');
  has Tags => (is => 'ro', isa => 'Paws::CleanRoomsML::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTrainedModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/trained-models');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRoomsML::CreateTrainedModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::CreateTrainedModel - Arguments for method CreateTrainedModel on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTrainedModel on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method CreateTrainedModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTrainedModel.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    my $CreateTrainedModelResponse = $cleanrooms -ml->CreateTrainedModel(
      ConfiguredModelAlgorithmAssociationArn =>
        'MyConfiguredModelAlgorithmAssociationArn',
      DataChannels => [
        {
          ChannelName => 'MyModelTrainingDataChannelName',    # min: 1, max: 64
          MlInputChannelArn => 'MyMLInputChannelArn',    # min: 20, max: 2048

        },
        ...
      ],
      MembershipIdentifier => 'MyUUID',
      Name                 => 'MyNameString',
      ResourceConfig       => {
        InstanceType => 'ml.m4.xlarge'
        , # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.p4d.24xlarge, ml.p4de.24xlarge, ml.p5.48xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.c5n.xlarge, ml.c5n.2xlarge, ml.c5n.4xlarge, ml.c5n.9xlarge, ml.c5n.18xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.8xlarge, ml.c6i.4xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.r5d.large, ml.r5d.xlarge, ml.r5d.2xlarge, ml.r5d.4xlarge, ml.r5d.8xlarge, ml.r5d.12xlarge, ml.r5d.16xlarge, ml.r5d.24xlarge, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge
        VolumeSizeInGB => 1,    # min: 1, max: 8192
        InstanceCount  => 1,    # min: 1, max: 1; OPTIONAL
      },
      Description => 'MyResourceDescription',    # OPTIONAL
      Environment => {
        'MyEnvironmentKeyString' => 'MyEnvironmentValueString'
        ,    # key: min: 1, max: 512, value: min: 1, max: 512
      },    # OPTIONAL
      Hyperparameters => {
        'MyHyperParametersKeyString' => 'MyHyperParametersValueString'
        ,    # key: min: 1, max: 256, value: min: 1, max: 2500
      },    # OPTIONAL
      KmsKeyArn         => 'MyKmsKeyArn',    # OPTIONAL
      StoppingCondition => {
        MaxRuntimeInSeconds => 1,            # min: 1, max: 2419200; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $TrainedModelArn = $CreateTrainedModelResponse->TrainedModelArn;

    # Returns a L<Paws::CleanRoomsML::CreateTrainedModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/CreateTrainedModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfiguredModelAlgorithmAssociationArn => Str

The associated configured model algorithm used to train this model.



=head2 B<REQUIRED> DataChannels => ArrayRef[L<Paws::CleanRoomsML::ModelTrainingDataChannel>]

Defines the data channels that are used as input for the trained model
request.



=head2 Description => Str

The description of the trained model.



=head2 Environment => L<Paws::CleanRoomsML::Environment>

The environment variables to set in the Docker container.



=head2 Hyperparameters => L<Paws::CleanRoomsML::HyperParameters>

Algorithm-specific parameters that influence the quality of the model.
You set hyperparameters before you start the learning process.



=head2 KmsKeyArn => Str

The Amazon Resource Name (ARN) of the KMS key. This key is used to
encrypt and decrypt customer-owned data in the trained ML model and the
associated data.



=head2 B<REQUIRED> MembershipIdentifier => Str

The membership ID of the member that is creating the trained model.



=head2 B<REQUIRED> Name => Str

The name of the trained model.



=head2 B<REQUIRED> ResourceConfig => L<Paws::CleanRoomsML::ResourceConfig>

Information about the EC2 resources that are used to train this model.



=head2 StoppingCondition => L<Paws::CleanRoomsML::StoppingCondition>

The criteria that is used to stop model training.



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





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTrainedModel in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

