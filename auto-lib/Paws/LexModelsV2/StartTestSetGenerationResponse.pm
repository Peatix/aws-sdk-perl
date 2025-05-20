
package Paws::LexModelsV2::StartTestSetGenerationResponse;
  use Moose;
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has GenerationDataSource => (is => 'ro', isa => 'Paws::LexModelsV2::TestSetGenerationDataSource', traits => ['NameInRequest'], request_name => 'generationDataSource');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has StorageLocation => (is => 'ro', isa => 'Paws::LexModelsV2::TestSetStorageLocation', traits => ['NameInRequest'], request_name => 'storageLocation');
  has TestSetGenerationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSetGenerationId');
  has TestSetGenerationStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSetGenerationStatus');
  has TestSetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSetName');
  has TestSetTags => (is => 'ro', isa => 'Paws::LexModelsV2::TagMap', traits => ['NameInRequest'], request_name => 'testSetTags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::StartTestSetGenerationResponse

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

The creation date and time for the test set generation.


=head2 Description => Str

The description used for the test set generation.


=head2 GenerationDataSource => L<Paws::LexModelsV2::TestSetGenerationDataSource>

The data source for the test set generation.


=head2 RoleArn => Str

The roleARN used for any operation in the test set to access resources
in the Amazon Web Services account.


=head2 StorageLocation => L<Paws::LexModelsV2::TestSetStorageLocation>

The Amazon S3 storage location for the test set generation.


=head2 TestSetGenerationId => Str

The unique identifier of the test set generation to describe.


=head2 TestSetGenerationStatus => Str

The status for the test set generation.

Valid values are: C<"Generating">, C<"Ready">, C<"Failed">, C<"Pending">
=head2 TestSetName => Str

The test set name used for the test set generation.


=head2 TestSetTags => L<Paws::LexModelsV2::TagMap>

A list of tags that was used for the test set that is being generated.


=head2 _request_id => Str


=cut

