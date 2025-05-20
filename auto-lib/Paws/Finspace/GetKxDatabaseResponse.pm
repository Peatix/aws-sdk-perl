
package Paws::Finspace::GetKxDatabaseResponse;
  use Moose;
  has CreatedTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdTimestamp');
  has DatabaseArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'databaseArn');
  has DatabaseName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'databaseName');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId');
  has LastCompletedChangesetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastCompletedChangesetId');
  has LastModifiedTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedTimestamp');
  has NumBytes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'numBytes');
  has NumChangesets => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'numChangesets');
  has NumFiles => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'numFiles');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::GetKxDatabaseResponse

=head1 ATTRIBUTES


=head2 CreatedTimestamp => Str

The timestamp at which the database is created in FinSpace. The value
is determined as epoch time in milliseconds. For example, the value for
Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.


=head2 DatabaseArn => Str

The ARN identifier of the database.


=head2 DatabaseName => Str

The name of the kdb database for which the information is retrieved.


=head2 Description => Str

A description of the database.


=head2 EnvironmentId => Str

A unique identifier for the kdb environment.


=head2 LastCompletedChangesetId => Str

A unique identifier for the changeset.


=head2 LastModifiedTimestamp => Str

The last time that the database was modified. The value is determined
as epoch time in milliseconds. For example, the value for Monday,
November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.


=head2 NumBytes => Int

The total number of bytes in the database.


=head2 NumChangesets => Int

The total number of changesets in the database.


=head2 NumFiles => Int

The total number of files in the database.


=head2 _request_id => Str


=cut

