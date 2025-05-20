
package Paws::CleanRoomsML::GetConfiguredModelAlgorithmResponse;
  use Moose;
  has ConfiguredModelAlgorithmArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configuredModelAlgorithmArn', required => 1);
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has InferenceContainerConfig => (is => 'ro', isa => 'Paws::CleanRoomsML::InferenceContainerConfig', traits => ['NameInRequest'], request_name => 'inferenceContainerConfig');
  has KmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyArn');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CleanRoomsML::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has TrainingContainerConfig => (is => 'ro', isa => 'Paws::CleanRoomsML::ContainerConfig', traits => ['NameInRequest'], request_name => 'trainingContainerConfig');
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateTime', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::GetConfiguredModelAlgorithmResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfiguredModelAlgorithmArn => Str

The Amazon Resource Name (ARN) of the configured model algorithm.


=head2 B<REQUIRED> CreateTime => Str

The time at which the configured model algorithm was created.


=head2 Description => Str

The description of the configured model algorithm.


=head2 InferenceContainerConfig => L<Paws::CleanRoomsML::InferenceContainerConfig>

Configuration information for the inference container.


=head2 KmsKeyArn => Str

The Amazon Resource Name (ARN) of the KMS key. This key is used to
encrypt and decrypt customer-owned data in the configured ML model and
associated data.


=head2 B<REQUIRED> Name => Str

The name of the configured model algorithm.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the service role that was used to
create the configured model algorithm.


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



=head2 TrainingContainerConfig => L<Paws::CleanRoomsML::ContainerConfig>

The configuration information of the training container for the
configured model algorithm.


=head2 B<REQUIRED> UpdateTime => Str

The most recent time at which the configured model algorithm was
updated.


=head2 _request_id => Str


=cut

