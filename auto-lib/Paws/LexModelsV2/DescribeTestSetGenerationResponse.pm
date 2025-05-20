
package Paws::LexModelsV2::DescribeTestSetGenerationResponse;
  use Moose;
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FailureReasons => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'failureReasons');
  has GenerationDataSource => (is => 'ro', isa => 'Paws::LexModelsV2::TestSetGenerationDataSource', traits => ['NameInRequest'], request_name => 'generationDataSource');
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDateTime');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has StorageLocation => (is => 'ro', isa => 'Paws::LexModelsV2::TestSetStorageLocation', traits => ['NameInRequest'], request_name => 'storageLocation');
  has TestSetGenerationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSetGenerationId');
  has TestSetGenerationStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSetGenerationStatus');
  has TestSetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSetId');
  has TestSetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSetName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeTestSetGenerationResponse

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

The creation date and time for the test set generation.


=head2 Description => Str

The test set description for the test set generation.


=head2 FailureReasons => ArrayRef[Str|Undef]

The reasons the test set generation failed.


=head2 GenerationDataSource => L<Paws::LexModelsV2::TestSetGenerationDataSource>

The data source of the test set used for the test set generation.


=head2 LastUpdatedDateTime => Str

The date and time of the last update for the test set generation.


=head2 RoleArn => Str

The roleARN of the test set used for the test set generation.


=head2 StorageLocation => L<Paws::LexModelsV2::TestSetStorageLocation>

The Amazon S3 storage location for the test set generation.


=head2 TestSetGenerationId => Str

The unique identifier of the test set generation.


=head2 TestSetGenerationStatus => Str

The status for the test set generation.

Valid values are: C<"Generating">, C<"Ready">, C<"Failed">, C<"Pending">
=head2 TestSetId => Str

The unique identifier for the test set created for the generated test
set.


=head2 TestSetName => Str

The test set name for the generated test set.


=head2 _request_id => Str


=cut

