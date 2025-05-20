
package Paws::CleanRoomsML::CreateConfiguredModelAlgorithm;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has InferenceContainerConfig => (is => 'ro', isa => 'Paws::CleanRoomsML::InferenceContainerConfig', traits => ['NameInRequest'], request_name => 'inferenceContainerConfig');
  has KmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyArn');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CleanRoomsML::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has TrainingContainerConfig => (is => 'ro', isa => 'Paws::CleanRoomsML::ContainerConfig', traits => ['NameInRequest'], request_name => 'trainingContainerConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfiguredModelAlgorithm');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configured-model-algorithms');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRoomsML::CreateConfiguredModelAlgorithmResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::CreateConfiguredModelAlgorithm - Arguments for method CreateConfiguredModelAlgorithm on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfiguredModelAlgorithm on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method CreateConfiguredModelAlgorithm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfiguredModelAlgorithm.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    my $CreateConfiguredModelAlgorithmResponse =
      $cleanrooms -ml->CreateConfiguredModelAlgorithm(
      Name                     => 'MyNameString',
      RoleArn                  => 'MyIamRoleArn',
      Description              => 'MyResourceDescription',    # OPTIONAL
      InferenceContainerConfig => {
        ImageUri => 'MyAlgorithmImage',                       # min: 1, max: 255

      },    # OPTIONAL
      KmsKeyArn => 'MyKmsKeyArn',    # OPTIONAL
      Tags      => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      TrainingContainerConfig => {
        ImageUri  => 'MyAlgorithmImage',    # min: 1, max: 255
        Arguments => [
          'MyContainerArgument', ...        # min: 1, max: 256
        ],    # min: 1, max: 100; OPTIONAL
        Entrypoint => [
          'MyContainerEntrypointString', ...    # min: 1, max: 256
        ],    # min: 1, max: 100; OPTIONAL
        MetricDefinitions => [
          {
            Name  => 'MyMetricName',     # min: 1, max: 255
            Regex => 'MyMetricRegex',    # min: 1, max: 500

          },
          ...
        ],    # max: 40; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $ConfiguredModelAlgorithmArn =
      $CreateConfiguredModelAlgorithmResponse->ConfiguredModelAlgorithmArn;

# Returns a L<Paws::CleanRoomsML::CreateConfiguredModelAlgorithmResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/CreateConfiguredModelAlgorithm>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the configured model algorithm.



=head2 InferenceContainerConfig => L<Paws::CleanRoomsML::InferenceContainerConfig>

Configuration information for the inference container that is used when
you run an inference job on a configured model algorithm.



=head2 KmsKeyArn => Str

The Amazon Resource Name (ARN) of the KMS key. This key is used to
encrypt and decrypt customer-owned data in the configured ML model
algorithm and associated data.



=head2 B<REQUIRED> Name => Str

The name of the configured model algorithm.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the role that is used to access the
repository.



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




=head2 TrainingContainerConfig => L<Paws::CleanRoomsML::ContainerConfig>

Configuration information for the training container, including
entrypoints and arguments.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConfiguredModelAlgorithm in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

