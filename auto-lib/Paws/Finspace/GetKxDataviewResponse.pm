
package Paws::Finspace::GetKxDataviewResponse;
  use Moose;
  has ActiveVersions => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::KxDataviewActiveVersion]', traits => ['NameInRequest'], request_name => 'activeVersions');
  has AutoUpdate => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'autoUpdate');
  has AvailabilityZoneId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZoneId');
  has AzMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'azMode');
  has ChangesetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'changesetId');
  has CreatedTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdTimestamp');
  has DatabaseName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'databaseName');
  has DataviewName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataviewName');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId');
  has LastModifiedTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedTimestamp');
  has ReadWrite => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'readWrite');
  has SegmentConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::KxDataviewSegmentConfiguration]', traits => ['NameInRequest'], request_name => 'segmentConfigurations');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StatusReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReason');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::GetKxDataviewResponse

=head1 ATTRIBUTES


=head2 ActiveVersions => ArrayRef[L<Paws::Finspace::KxDataviewActiveVersion>]

The current active changeset versions of the database on the given
dataview.


=head2 AutoUpdate => Bool

The option to specify whether you want to apply all the future
additions and corrections automatically to the dataview when new
changesets are ingested. The default value is false.


=head2 AvailabilityZoneId => Str

The identifier of the availability zones.


=head2 AzMode => Str

The number of availability zones you want to assign per volume.
Currently, FinSpace only supports C<SINGLE> for volumes. This places
dataview in a single AZ.

Valid values are: C<"SINGLE">, C<"MULTI">
=head2 ChangesetId => Str

A unique identifier of the changeset that you want to use to ingest
data.


=head2 CreatedTimestamp => Str

The timestamp at which the dataview was created in FinSpace. The value
is determined as epoch time in milliseconds. For example, the value for
Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.


=head2 DatabaseName => Str

The name of the database where you created the dataview.


=head2 DataviewName => Str

A unique identifier for the dataview.


=head2 Description => Str

A description of the dataview.


=head2 EnvironmentId => Str

A unique identifier for the kdb environment, from where you want to
retrieve the dataview details.


=head2 LastModifiedTimestamp => Str

The last time that the dataview was updated in FinSpace. The value is
determined as epoch time in milliseconds. For example, the value for
Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.


=head2 ReadWrite => Bool

Returns True if the dataview is created as writeable and False
otherwise.


=head2 SegmentConfigurations => ArrayRef[L<Paws::Finspace::KxDataviewSegmentConfiguration>]

The configuration that contains the database path of the data that you
want to place on each selected volume. Each segment must have a unique
database path for each volume. If you do not explicitly specify any
database path for a volume, they are accessible from the cluster
through the default S3/object store segment.


=head2 Status => Str

The status of dataview creation.

=over

=item *

C<CREATING> E<ndash> The dataview creation is in progress.

=item *

C<UPDATING> E<ndash> The dataview is in the process of being updated.

=item *

C<ACTIVE> E<ndash> The dataview is active.

=back


Valid values are: C<"CREATING">, C<"ACTIVE">, C<"UPDATING">, C<"FAILED">, C<"DELETING">
=head2 StatusReason => Str

The error message when a failed state occurs.


=head2 _request_id => Str


=cut

