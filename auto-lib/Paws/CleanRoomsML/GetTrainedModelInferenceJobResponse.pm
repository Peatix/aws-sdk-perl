
package Paws::CleanRoomsML::GetTrainedModelInferenceJobResponse;
  use Moose;
  has ConfiguredModelAlgorithmAssociationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configuredModelAlgorithmAssociationArn');
  has ContainerExecutionParameters => (is => 'ro', isa => 'Paws::CleanRoomsML::InferenceContainerExecutionParameters', traits => ['NameInRequest'], request_name => 'containerExecutionParameters');
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createTime', required => 1);
  has DataSource => (is => 'ro', isa => 'Paws::CleanRoomsML::ModelInferenceDataSource', traits => ['NameInRequest'], request_name => 'dataSource', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Environment => (is => 'ro', isa => 'Paws::CleanRoomsML::InferenceEnvironmentMap', traits => ['NameInRequest'], request_name => 'environment');
  has InferenceContainerImageDigest => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inferenceContainerImageDigest');
  has KmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyArn');
  has LogsStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logsStatus');
  has LogsStatusDetails => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logsStatusDetails');
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'membershipIdentifier', required => 1);
  has MetricsStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricsStatus');
  has MetricsStatusDetails => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricsStatusDetails');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OutputConfiguration => (is => 'ro', isa => 'Paws::CleanRoomsML::InferenceOutputConfiguration', traits => ['NameInRequest'], request_name => 'outputConfiguration', required => 1);
  has ResourceConfig => (is => 'ro', isa => 'Paws::CleanRoomsML::InferenceResourceConfig', traits => ['NameInRequest'], request_name => 'resourceConfig', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusDetails => (is => 'ro', isa => 'Paws::CleanRoomsML::StatusDetails', traits => ['NameInRequest'], request_name => 'statusDetails');
  has Tags => (is => 'ro', isa => 'Paws::CleanRoomsML::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has TrainedModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trainedModelArn', required => 1);
  has TrainedModelInferenceJobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trainedModelInferenceJobArn', required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateTime', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::GetTrainedModelInferenceJobResponse

=head1 ATTRIBUTES


=head2 ConfiguredModelAlgorithmAssociationArn => Str

The Amazon Resource Name (ARN) of the configured model algorithm
association that was used for the trained model inference job.


=head2 ContainerExecutionParameters => L<Paws::CleanRoomsML::InferenceContainerExecutionParameters>

The execution parameters for the model inference job container.


=head2 B<REQUIRED> CreateTime => Str

The time at which the trained model inference job was created.


=head2 B<REQUIRED> DataSource => L<Paws::CleanRoomsML::ModelInferenceDataSource>

The data source that was used for the trained model inference job.


=head2 Description => Str

The description of the trained model inference job.


=head2 Environment => L<Paws::CleanRoomsML::InferenceEnvironmentMap>

The environment variables to set in the Docker container.


=head2 InferenceContainerImageDigest => Str

Information about the training container image.


=head2 KmsKeyArn => Str

The Amazon Resource Name (ARN) of the KMS key. This key is used to
encrypt and decrypt customer-owned data in the ML inference job and
associated data.


=head2 LogsStatus => Str

The logs status for the trained model inference job.

Valid values are: C<"PUBLISH_SUCCEEDED">, C<"PUBLISH_FAILED">
=head2 LogsStatusDetails => Str

Details about the logs status for the trained model inference job.


=head2 B<REQUIRED> MembershipIdentifier => Str

The membership ID of the membership that contains the trained model
inference job.


=head2 MetricsStatus => Str

The metrics status for the trained model inference job.

Valid values are: C<"PUBLISH_SUCCEEDED">, C<"PUBLISH_FAILED">
=head2 MetricsStatusDetails => Str

Details about the metrics status for the trained model inference job.


=head2 B<REQUIRED> Name => Str

The name of the trained model inference job.


=head2 B<REQUIRED> OutputConfiguration => L<Paws::CleanRoomsML::InferenceOutputConfiguration>

The output configuration information for the trained model inference
job.


=head2 B<REQUIRED> ResourceConfig => L<Paws::CleanRoomsML::InferenceResourceConfig>

The resource configuration information for the trained model inference
job.


=head2 B<REQUIRED> Status => Str

The status of the trained model inference job.

Valid values are: C<"CREATE_PENDING">, C<"CREATE_IN_PROGRESS">, C<"CREATE_FAILED">, C<"ACTIVE">, C<"CANCEL_PENDING">, C<"CANCEL_IN_PROGRESS">, C<"CANCEL_FAILED">, C<"INACTIVE">
=head2 StatusDetails => L<Paws::CleanRoomsML::StatusDetails>




=head2 Tags => L<Paws::CleanRoomsML::TagMap>

The optional metadata that you applied to the resource to help you
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

The Amazon Resource Name (ARN) for the trained model that was used for
the trained model inference job.


=head2 B<REQUIRED> TrainedModelInferenceJobArn => Str

The Amazon Resource Name (ARN) of the trained model inference job.


=head2 B<REQUIRED> UpdateTime => Str

The most recent time at which the trained model inference job was
updated.


=head2 _request_id => Str


=cut

