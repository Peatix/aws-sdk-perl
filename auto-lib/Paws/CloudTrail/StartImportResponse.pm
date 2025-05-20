
package Paws::CloudTrail::StartImportResponse;
  use Moose;
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has Destinations => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EndEventTime => (is => 'ro', isa => 'Str');
  has ImportId => (is => 'ro', isa => 'Str');
  has ImportSource => (is => 'ro', isa => 'Paws::CloudTrail::ImportSource');
  has ImportStatus => (is => 'ro', isa => 'Str');
  has StartEventTime => (is => 'ro', isa => 'Str');
  has UpdatedTimestamp => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::StartImportResponse

=head1 ATTRIBUTES


=head2 CreatedTimestamp => Str

The timestamp for the import's creation.


=head2 Destinations => ArrayRef[Str|Undef]

The ARN of the destination event data store.


=head2 EndEventTime => Str

Used with C<StartEventTime> to bound a C<StartImport> request, and
limit imported trail events to only those events logged within a
specified time period.


=head2 ImportId => Str

The ID of the import.


=head2 ImportSource => L<Paws::CloudTrail::ImportSource>

The source S3 bucket for the import.


=head2 ImportStatus => Str

Shows the status of the import after a C<StartImport> request. An
import finishes with a status of C<COMPLETED> if there were no
failures, or C<FAILED> if there were failures.

Valid values are: C<"INITIALIZING">, C<"IN_PROGRESS">, C<"FAILED">, C<"STOPPED">, C<"COMPLETED">
=head2 StartEventTime => Str

Used with C<EndEventTime> to bound a C<StartImport> request, and limit
imported trail events to only those events logged within a specified
time period.


=head2 UpdatedTimestamp => Str

The timestamp of the import's last update, if applicable.


=head2 _request_id => Str


=cut

1;