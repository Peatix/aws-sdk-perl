
package Paws::CleanRooms::CreateAnalysisTemplate;
  use Moose;
  has AnalysisParameters => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::AnalysisParameter]', traits => ['NameInRequest'], request_name => 'analysisParameters');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format', required => 1);
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Schema => (is => 'ro', isa => 'Paws::CleanRooms::AnalysisSchema', traits => ['NameInRequest'], request_name => 'schema');
  has Source => (is => 'ro', isa => 'Paws::CleanRooms::AnalysisSource', traits => ['NameInRequest'], request_name => 'source', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CleanRooms::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAnalysisTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/analysistemplates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::CreateAnalysisTemplateOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::CreateAnalysisTemplate - Arguments for method CreateAnalysisTemplate on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAnalysisTemplate on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method CreateAnalysisTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAnalysisTemplate.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $CreateAnalysisTemplateOutput = $cleanrooms->CreateAnalysisTemplate(
      Format               => 'SQL',
      MembershipIdentifier => 'MyMembershipIdentifier',
      Name                 => 'MyTableAlias',
      Source               => {
        Artifacts => {
          EntryPoint => {
            Location => {
              Bucket => 'MyS3LocationBucketString',    # min: 3, max: 63
              Key    => 'MyS3LocationKeyString',

            },

          },
          RoleArn             => 'MyRoleArn',    # min: 32, max: 512
          AdditionalArtifacts => [
            {
              Location => {
                Bucket => 'MyS3LocationBucketString',    # min: 3, max: 63
                Key    => 'MyS3LocationKeyString',

              },

            },
            ...
          ],    # min: 1, max: 1; OPTIONAL
        },    # OPTIONAL
        Text => 'MyAnalysisTemplateText',    # max: 90000; OPTIONAL
      },
      AnalysisParameters => [
        {
          Name => 'MyParameterName',             # min: 1, max: 100
          Type => 'SMALLINT'
          , # values: SMALLINT, INTEGER, BIGINT, DECIMAL, REAL, DOUBLE_PRECISION, BOOLEAN, CHAR, VARCHAR, DATE, TIMESTAMP, TIMESTAMPTZ, TIME, TIMETZ, VARBYTE, BINARY, BYTE, CHARACTER, DOUBLE, FLOAT, INT, LONG, NUMERIC, SHORT, STRING, TIMESTAMP_LTZ, TIMESTAMP_NTZ, TINYINT
          DefaultValue => 'MyParameterValue',    # max: 250; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Description => 'MyResourceDescription',    # OPTIONAL
      Schema      => {
        ReferencedTables => [
          'MyTableAlias', ...                    # max: 128
        ],    # OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $AnalysisTemplate = $CreateAnalysisTemplateOutput->AnalysisTemplate;

    # Returns a L<Paws::CleanRooms::CreateAnalysisTemplateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/CreateAnalysisTemplate>

=head1 ATTRIBUTES


=head2 AnalysisParameters => ArrayRef[L<Paws::CleanRooms::AnalysisParameter>]

The parameters of the analysis template.



=head2 Description => Str

The description of the analysis template.



=head2 B<REQUIRED> Format => Str

The format of the analysis template.

Valid values are: C<"SQL">, C<"PYSPARK_1_0">

=head2 B<REQUIRED> MembershipIdentifier => Str

The identifier for a membership resource.



=head2 B<REQUIRED> Name => Str

The name of the analysis template.



=head2 Schema => L<Paws::CleanRooms::AnalysisSchema>





=head2 B<REQUIRED> Source => L<Paws::CleanRooms::AnalysisSource>

The information in the analysis template. Currently supports C<text>,
the query text for the analysis template.



=head2 Tags => L<Paws::CleanRooms::TagMap>

An optional label that you can assign to a resource when you create it.
Each tag consists of a key and an optional value, both of which you
define. When you use tagging, you can also use tag-based access control
in IAM policies to control access to this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAnalysisTemplate in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

