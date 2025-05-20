
package Paws::CleanRoomsML::StartAudienceGenerationJob;
  use Moose;
  has CollaborationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'collaborationId');
  has ConfiguredAudienceModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configuredAudienceModelArn', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IncludeSeedInOutput => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeSeedInOutput');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has SeedAudience => (is => 'ro', isa => 'Paws::CleanRoomsML::AudienceGenerationJobDataSource', traits => ['NameInRequest'], request_name => 'seedAudience', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CleanRoomsML::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartAudienceGenerationJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audience-generation-job');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRoomsML::StartAudienceGenerationJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::StartAudienceGenerationJob - Arguments for method StartAudienceGenerationJob on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartAudienceGenerationJob on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method StartAudienceGenerationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartAudienceGenerationJob.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    my $StartAudienceGenerationJobResponse =
      $cleanrooms -ml->StartAudienceGenerationJob(
      ConfiguredAudienceModelArn => 'MyConfiguredAudienceModelArn',
      Name                       => 'MyNameString',
      SeedAudience               => {
        RoleArn    => 'MyIamRoleArn',    # min: 20, max: 2048
        DataSource => {
          S3Uri => 'MyS3Path',           # min: 1, max: 1285

        },    # OPTIONAL
        SqlComputeConfiguration => {
          Worker => {
            Number => 1,          # min: 2, max: 400; OPTIONAL
            Type   => 'CR.1X',    # values: CR.1X, CR.4X; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        SqlParameters => {
          AnalysisTemplateArn => 'MyAnalysisTemplateArn',   # max: 200; OPTIONAL
          Parameters          => {
            'MyParameterKey' =>
              'MyParameterValue',    # key: min: 1, max: 100, value: max: 250
          },    # OPTIONAL
          QueryString => 'MyProtectedQuerySQLParametersQueryStringString'
          ,     # max: 500000; OPTIONAL
        },    # OPTIONAL
      },
      CollaborationId     => 'MyUUID',                   # OPTIONAL
      Description         => 'MyResourceDescription',    # OPTIONAL
      IncludeSeedInOutput => 1,                          # OPTIONAL
      Tags                => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $AudienceGenerationJobArn =
      $StartAudienceGenerationJobResponse->AudienceGenerationJobArn;

   # Returns a L<Paws::CleanRoomsML::StartAudienceGenerationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/StartAudienceGenerationJob>

=head1 ATTRIBUTES


=head2 CollaborationId => Str

The identifier of the collaboration that contains the audience
generation job.



=head2 B<REQUIRED> ConfiguredAudienceModelArn => Str

The Amazon Resource Name (ARN) of the configured audience model that is
used for this audience generation job.



=head2 Description => Str

The description of the audience generation job.



=head2 IncludeSeedInOutput => Bool

Whether the seed audience is included in the audience generation
output.



=head2 B<REQUIRED> Name => Str

The name of the audience generation job.



=head2 B<REQUIRED> SeedAudience => L<Paws::CleanRoomsML::AudienceGenerationJobDataSource>

The seed audience that is used to generate the audience.



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

This class forms part of L<Paws>, documenting arguments for method StartAudienceGenerationJob in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

