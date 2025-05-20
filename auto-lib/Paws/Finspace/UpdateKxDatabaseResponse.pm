
package Paws::Finspace::UpdateKxDatabaseResponse;
  use Moose;
  has DatabaseName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'databaseName');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId');
  has LastModifiedTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedTimestamp');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::UpdateKxDatabaseResponse

=head1 ATTRIBUTES


=head2 DatabaseName => Str

The name of the kdb database.


=head2 Description => Str

A description of the database.


=head2 EnvironmentId => Str

A unique identifier for the kdb environment.


=head2 LastModifiedTimestamp => Str

The last time that the database was modified. The value is determined
as epoch time in milliseconds. For example, the value for Monday,
November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.


=head2 _request_id => Str


=cut

