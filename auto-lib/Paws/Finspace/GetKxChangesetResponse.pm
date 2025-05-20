
package Paws::Finspace::GetKxChangesetResponse;
  use Moose;
  has ActiveFromTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'activeFromTimestamp');
  has ChangeRequests => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::ChangeRequest]', traits => ['NameInRequest'], request_name => 'changeRequests');
  has ChangesetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'changesetId');
  has CreatedTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdTimestamp');
  has DatabaseName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'databaseName');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId');
  has ErrorInfo => (is => 'ro', isa => 'Paws::Finspace::ErrorInfo', traits => ['NameInRequest'], request_name => 'errorInfo');
  has LastModifiedTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedTimestamp');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::GetKxChangesetResponse

=head1 ATTRIBUTES


=head2 ActiveFromTimestamp => Str

Beginning time from which the changeset is active. The value is
determined as epoch time in milliseconds. For example, the value for
Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.


=head2 ChangeRequests => ArrayRef[L<Paws::Finspace::ChangeRequest>]

A list of change request objects that are run in order.


=head2 ChangesetId => Str

A unique identifier for the changeset.


=head2 CreatedTimestamp => Str

The timestamp at which the changeset was created in FinSpace. The value
is determined as epoch time in milliseconds. For example, the value for
Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.


=head2 DatabaseName => Str

The name of the kdb database.


=head2 EnvironmentId => Str

A unique identifier for the kdb environment.


=head2 ErrorInfo => L<Paws::Finspace::ErrorInfo>

Provides details in the event of a failed flow, including the error
type and the related error message.


=head2 LastModifiedTimestamp => Str

The timestamp at which the changeset was updated in FinSpace. The value
is determined as epoch time in milliseconds. For example, the value for
Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.


=head2 Status => Str

Status of the changeset creation process.

=over

=item *

Pending E<ndash> Changeset creation is pending.

=item *

Processing E<ndash> Changeset creation is running.

=item *

Failed E<ndash> Changeset creation has failed.

=item *

Complete E<ndash> Changeset creation has succeeded.

=back


Valid values are: C<"PENDING">, C<"PROCESSING">, C<"FAILED">, C<"COMPLETED">
=head2 _request_id => Str


=cut

