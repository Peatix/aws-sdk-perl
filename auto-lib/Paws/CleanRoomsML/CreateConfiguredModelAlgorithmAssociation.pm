
package Paws::CleanRoomsML::CreateConfiguredModelAlgorithmAssociation;
  use Moose;
  has ConfiguredModelAlgorithmArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configuredModelAlgorithmArn', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has PrivacyConfiguration => (is => 'ro', isa => 'Paws::CleanRoomsML::PrivacyConfiguration', traits => ['NameInRequest'], request_name => 'privacyConfiguration');
  has Tags => (is => 'ro', isa => 'Paws::CleanRoomsML::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfiguredModelAlgorithmAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/configured-model-algorithm-associations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRoomsML::CreateConfiguredModelAlgorithmAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::CreateConfiguredModelAlgorithmAssociation - Arguments for method CreateConfiguredModelAlgorithmAssociation on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfiguredModelAlgorithmAssociation on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method CreateConfiguredModelAlgorithmAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfiguredModelAlgorithmAssociation.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    my $CreateConfiguredModelAlgorithmAssociationResponse =
      $cleanrooms -ml->CreateConfiguredModelAlgorithmAssociation(
      ConfiguredModelAlgorithmArn => 'MyConfiguredModelAlgorithmArn',
      MembershipIdentifier        => 'MyUUID',
      Name                        => 'MyNameString',
      Description                 => 'MyResourceDescription',         # OPTIONAL
      PrivacyConfiguration        => {
        Policies => {
          TrainedModelExports => {
            FilesToExport => [
              'MODEL', ...    # values: MODEL, OUTPUT
            ],    # min: 1, max: 2
            MaxSize => {
              Unit  => 'GB',    # values: GB
              Value => 1,       # min: 0.01, max: 10

            },

          },    # OPTIONAL
          TrainedModelInferenceJobs => {
            ContainerLogs => [
              {
                AllowedAccountIds => [ 'MyString', ... ],    # min: 1, max: 5
                FilterPattern => 'MyLogsConfigurationPolicyFilterPatternString'
                ,    # max: 1024; OPTIONAL
              },
              ...
            ],    # min: 1, max: 5; OPTIONAL
            MaxOutputSize => {
              Unit  => 'GB',    # values: GB
              Value => 1,       # min: 0.01, max: 10

            },    # OPTIONAL
          },    # OPTIONAL
          TrainedModels => {
            ContainerLogs => [
              {
                AllowedAccountIds => [ 'MyString', ... ],    # min: 1, max: 5
                FilterPattern => 'MyLogsConfigurationPolicyFilterPatternString'
                ,    # max: 1024; OPTIONAL
              },
              ...
            ],    # min: 1, max: 5; OPTIONAL
            ContainerMetrics => {
              NoiseLevel => 'HIGH',    # values: HIGH, MEDIUM, LOW, NONE

            },    # OPTIONAL
          },    # OPTIONAL
        },

      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $ConfiguredModelAlgorithmAssociationArn =
      $CreateConfiguredModelAlgorithmAssociationResponse
      ->ConfiguredModelAlgorithmAssociationArn;

# Returns a L<Paws::CleanRoomsML::CreateConfiguredModelAlgorithmAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/CreateConfiguredModelAlgorithmAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfiguredModelAlgorithmArn => Str

The Amazon Resource Name (ARN) of the configured model algorithm that
you want to associate.



=head2 Description => Str

The description of the configured model algorithm association.



=head2 B<REQUIRED> MembershipIdentifier => Str

The membership ID of the member who is associating this configured
model algorithm.



=head2 B<REQUIRED> Name => Str

The name of the configured model algorithm association.



=head2 PrivacyConfiguration => L<Paws::CleanRoomsML::PrivacyConfiguration>

Specifies the privacy configuration information for the configured
model algorithm association. This information includes the maximum data
size that can be exported.



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

This class forms part of L<Paws>, documenting arguments for method CreateConfiguredModelAlgorithmAssociation in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

