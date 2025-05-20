
package Paws::CleanRoomsML::CreateConfiguredAudienceModel;
  use Moose;
  has AudienceModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'audienceModelArn', required => 1);
  has AudienceSizeConfig => (is => 'ro', isa => 'Paws::CleanRoomsML::AudienceSizeConfig', traits => ['NameInRequest'], request_name => 'audienceSizeConfig');
  has ChildResourceTagOnCreatePolicy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'childResourceTagOnCreatePolicy');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has MinMatchingSeedSize => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'minMatchingSeedSize');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OutputConfig => (is => 'ro', isa => 'Paws::CleanRoomsML::ConfiguredAudienceModelOutputConfig', traits => ['NameInRequest'], request_name => 'outputConfig', required => 1);
  has SharedAudienceMetrics => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'sharedAudienceMetrics', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CleanRoomsML::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfiguredAudienceModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configured-audience-model');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRoomsML::CreateConfiguredAudienceModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::CreateConfiguredAudienceModel - Arguments for method CreateConfiguredAudienceModel on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfiguredAudienceModel on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method CreateConfiguredAudienceModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfiguredAudienceModel.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    my $CreateConfiguredAudienceModelResponse =
      $cleanrooms -ml->CreateConfiguredAudienceModel(
      AudienceModelArn => 'MyAudienceModelArn',
      Name             => 'MyNameString',
      OutputConfig     => {
        Destination => {
          S3Destination => {
            S3Uri => 'MyS3Path',    # min: 1, max: 1285

          },

        },
        RoleArn => 'MyIamRoleArn',    # min: 20, max: 2048

      },
      SharedAudienceMetrics => [
        'ALL', ...                    # values: ALL, NONE
      ],
      AudienceSizeConfig => {
        AudienceSizeBins => [
          1, ...                      # min: 1, max: 20000000
        ],    # min: 1, max: 25
        AudienceSizeType => 'ABSOLUTE',    # values: ABSOLUTE, PERCENTAGE

      },    # OPTIONAL
      ChildResourceTagOnCreatePolicy => 'FROM_PARENT_RESOURCE',     # OPTIONAL
      Description                    => 'MyResourceDescription',    # OPTIONAL
      MinMatchingSeedSize            => 1,                          # OPTIONAL
      Tags                           => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $ConfiguredAudienceModelArn =
      $CreateConfiguredAudienceModelResponse->ConfiguredAudienceModelArn;

# Returns a L<Paws::CleanRoomsML::CreateConfiguredAudienceModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/CreateConfiguredAudienceModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AudienceModelArn => Str

The Amazon Resource Name (ARN) of the audience model to use for the
configured audience model.



=head2 AudienceSizeConfig => L<Paws::CleanRoomsML::AudienceSizeConfig>

Configure the list of output sizes of audiences that can be created
using this configured audience model. A request to
StartAudienceGenerationJob that uses this configured audience model
must have an C<audienceSize> selected from this list. You can use the
C<ABSOLUTE> AudienceSize to configure out audience sizes using the
count of identifiers in the output. You can use the C<Percentage>
AudienceSize to configure sizes in the range 1-100 percent.



=head2 ChildResourceTagOnCreatePolicy => Str

Configure how the service tags audience generation jobs created using
this configured audience model. If you specify C<NONE>, the tags from
the StartAudienceGenerationJob request determine the tags of the
audience generation job. If you specify C<FROM_PARENT_RESOURCE>, the
audience generation job inherits the tags from the configured audience
model, by default. Tags in the StartAudienceGenerationJob will override
the default.

When the client is in a different account than the configured audience
model, the tags from the client are never applied to a resource in the
caller's account.

Valid values are: C<"FROM_PARENT_RESOURCE">, C<"NONE">

=head2 Description => Str

The description of the configured audience model.



=head2 MinMatchingSeedSize => Int

The minimum number of users from the seed audience that must match with
users in the training data of the audience model. The default value is
500.



=head2 B<REQUIRED> Name => Str

The name of the configured audience model.



=head2 B<REQUIRED> OutputConfig => L<Paws::CleanRoomsML::ConfiguredAudienceModelOutputConfig>

Configure the Amazon S3 location and IAM Role for audiences created
using this configured audience model. Each audience will have a unique
location. The IAM Role must have C<s3:PutObject> permission on the
destination Amazon S3 location. If the destination is protected with
Amazon S3 KMS-SSE, then the Role must also have the required KMS
permissions.



=head2 B<REQUIRED> SharedAudienceMetrics => ArrayRef[Str|Undef]

Whether audience metrics are shared.



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

This class forms part of L<Paws>, documenting arguments for method CreateConfiguredAudienceModel in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

