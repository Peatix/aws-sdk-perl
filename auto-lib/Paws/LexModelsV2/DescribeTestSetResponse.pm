
package Paws::LexModelsV2::DescribeTestSetResponse;
  use Moose;
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDateTime');
  has Modality => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modality');
  has NumTurns => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'numTurns');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StorageLocation => (is => 'ro', isa => 'Paws::LexModelsV2::TestSetStorageLocation', traits => ['NameInRequest'], request_name => 'storageLocation');
  has TestSetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSetId');
  has TestSetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSetName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeTestSetResponse

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

The creation date and time for the test set data.


=head2 Description => Str

The description of the test set.


=head2 LastUpdatedDateTime => Str

The date and time for the last update of the test set data.


=head2 Modality => Str

Indicates whether the test set is audio or text data.

Valid values are: C<"Text">, C<"Audio">
=head2 NumTurns => Int

The total number of agent and user turn in the test set.


=head2 RoleArn => Str

The roleARN used for any operation in the test set to access resources
in the Amazon Web Services account.


=head2 Status => Str

The status of the test set.

Valid values are: C<"Importing">, C<"PendingAnnotation">, C<"Deleting">, C<"ValidationError">, C<"Ready">
=head2 StorageLocation => L<Paws::LexModelsV2::TestSetStorageLocation>

The Amazon S3 storage location for the test set data.


=head2 TestSetId => Str

The test set Id for the test set response.


=head2 TestSetName => Str

The test set name of the test set.


=head2 _request_id => Str


=cut

