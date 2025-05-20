
package Paws::LexModelsV2::StartTestSetGeneration;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has GenerationDataSource => (is => 'ro', isa => 'Paws::LexModelsV2::TestSetGenerationDataSource', traits => ['NameInRequest'], request_name => 'generationDataSource', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has StorageLocation => (is => 'ro', isa => 'Paws::LexModelsV2::TestSetStorageLocation', traits => ['NameInRequest'], request_name => 'storageLocation', required => 1);
  has TestSetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSetName', required => 1);
  has TestSetTags => (is => 'ro', isa => 'Paws::LexModelsV2::TagMap', traits => ['NameInRequest'], request_name => 'testSetTags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartTestSetGeneration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testsetgenerations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::StartTestSetGenerationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::StartTestSetGeneration - Arguments for method StartTestSetGeneration on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTestSetGeneration on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method StartTestSetGeneration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartTestSetGeneration.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $StartTestSetGenerationResponse =
      $models - v2 -lex->StartTestSetGeneration(
      GenerationDataSource => {
        ConversationLogsDataSource => {
          BotAliasId => 'MyBotAliasId',    # min: 10, max: 10
          BotId      => 'MyId',            # min: 10, max: 10
          Filter     => {
            EndTime   => '1970-01-01T01:00:00',
            InputMode => 'Speech',                # values: Speech, Text
            StartTime => '1970-01-01T01:00:00',

          },
          LocaleId => 'MyLocaleId',

        },    # OPTIONAL
      },
      RoleArn         => 'MyRoleArn',
      StorageLocation => {
        S3BucketName => 'MyS3BucketName',    # min: 3, max: 63
        S3Path       => 'MyS3ObjectPath',    # min: 1, max: 1024
        KmsKeyArn    => 'MyKmsKeyArn',       # min: 20, max: 2048; OPTIONAL
      },
      TestSetName => 'MyName',
      Description => 'MyDescription',        # OPTIONAL
      TestSetTags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $CreationDateTime = $StartTestSetGenerationResponse->CreationDateTime;
    my $Description      = $StartTestSetGenerationResponse->Description;
    my $GenerationDataSource =
      $StartTestSetGenerationResponse->GenerationDataSource;
    my $RoleArn         = $StartTestSetGenerationResponse->RoleArn;
    my $StorageLocation = $StartTestSetGenerationResponse->StorageLocation;
    my $TestSetGenerationId =
      $StartTestSetGenerationResponse->TestSetGenerationId;
    my $TestSetGenerationStatus =
      $StartTestSetGenerationResponse->TestSetGenerationStatus;
    my $TestSetName = $StartTestSetGenerationResponse->TestSetName;
    my $TestSetTags = $StartTestSetGenerationResponse->TestSetTags;

    # Returns a L<Paws::LexModelsV2::StartTestSetGenerationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/StartTestSetGeneration>

=head1 ATTRIBUTES


=head2 Description => Str

The test set description for the test set generation request.



=head2 B<REQUIRED> GenerationDataSource => L<Paws::LexModelsV2::TestSetGenerationDataSource>

The data source for the test set generation.



=head2 B<REQUIRED> RoleArn => Str

The roleARN used for any operation in the test set to access resources
in the Amazon Web Services account.



=head2 B<REQUIRED> StorageLocation => L<Paws::LexModelsV2::TestSetStorageLocation>

The Amazon S3 storage location for the test set generation.



=head2 B<REQUIRED> TestSetName => Str

The test set name for the test set generation request.



=head2 TestSetTags => L<Paws::LexModelsV2::TagMap>

A list of tags to add to the test set. You can only add tags when you
import/generate a new test set. You can't use the C<UpdateTestSet>
operation to update tags. To update tags, use the C<TagResource>
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTestSetGeneration in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

