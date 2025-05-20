
package Paws::FinspaceData::GetChangesetResponse;
  use Moose;
  has ActiveFromTimestamp => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'activeFromTimestamp');
  has ActiveUntilTimestamp => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'activeUntilTimestamp');
  has ChangesetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'changesetArn');
  has ChangesetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'changesetId');
  has ChangeType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'changeType');
  has CreateTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'createTime');
  has DatasetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetId');
  has ErrorInfo => (is => 'ro', isa => 'Paws::FinspaceData::ChangesetErrorInfo', traits => ['NameInRequest'], request_name => 'errorInfo');
  has FormatParams => (is => 'ro', isa => 'Paws::FinspaceData::FormatParams', traits => ['NameInRequest'], request_name => 'formatParams');
  has SourceParams => (is => 'ro', isa => 'Paws::FinspaceData::SourceParams', traits => ['NameInRequest'], request_name => 'sourceParams');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has UpdatedByChangesetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedByChangesetId');
  has UpdatesChangesetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatesChangesetId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::GetChangesetResponse

=head1 ATTRIBUTES


=head2 ActiveFromTimestamp => Int

Beginning time from which the Changeset is active. The value is
determined as epoch time in milliseconds. For example, the value for
Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.


=head2 ActiveUntilTimestamp => Int

Time until which the Changeset is active. The value is determined as
epoch time in milliseconds. For example, the value for Monday, November
1, 2021 12:00:00 PM UTC is specified as 1635768000000.


=head2 ChangesetArn => Str

The ARN identifier of the Changeset.


=head2 ChangesetId => Str

The unique identifier for a Changeset.


=head2 ChangeType => Str

Type that indicates how a Changeset is applied to a Dataset.

=over

=item *

C<REPLACE> E<ndash> Changeset is considered as a replacement to all
prior loaded Changesets.

=item *

C<APPEND> E<ndash> Changeset is considered as an addition to the end of
all prior loaded Changesets.

=item *

C<MODIFY> E<ndash> Changeset is considered as a replacement to a
specific prior ingested Changeset.

=back


Valid values are: C<"REPLACE">, C<"APPEND">, C<"MODIFY">
=head2 CreateTime => Int

The timestamp at which the Changeset was created in FinSpace. The value
is determined as epoch time in milliseconds. For example, the value for
Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.


=head2 DatasetId => Str

The unique identifier for the FinSpace Dataset where the Changeset is
created.


=head2 ErrorInfo => L<Paws::FinspaceData::ChangesetErrorInfo>

The structure with error messages.


=head2 FormatParams => L<Paws::FinspaceData::FormatParams>

Structure of the source file(s).


=head2 SourceParams => L<Paws::FinspaceData::SourceParams>

Options that define the location of the data being ingested.


=head2 Status => Str

The status of Changeset creation operation.

Valid values are: C<"PENDING">, C<"FAILED">, C<"SUCCESS">, C<"RUNNING">, C<"STOP_REQUESTED">
=head2 UpdatedByChangesetId => Str

The unique identifier of the updated Changeset.


=head2 UpdatesChangesetId => Str

The unique identifier of the Changeset that is being updated.


=head2 _request_id => Str


=cut

