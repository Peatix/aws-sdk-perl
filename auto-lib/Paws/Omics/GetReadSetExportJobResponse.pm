
package Paws::Omics::GetReadSetExportJobResponse;
  use Moose;
  has CompletionTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'completionTime');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has Destination => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destination', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has ReadSets => (is => 'ro', isa => 'ArrayRef[Paws::Omics::ExportReadSetDetail]', traits => ['NameInRequest'], request_name => 'readSets');
  has SequenceStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sequenceStoreId', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusMessage');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetReadSetExportJobResponse

=head1 ATTRIBUTES


=head2 CompletionTime => Str

When the job completed.


=head2 B<REQUIRED> CreationTime => Str

When the job was created.


=head2 B<REQUIRED> Destination => Str

The job's destination in Amazon S3.


=head2 B<REQUIRED> Id => Str

The job's ID.


=head2 ReadSets => ArrayRef[L<Paws::Omics::ExportReadSetDetail>]

The job's read sets.


=head2 B<REQUIRED> SequenceStoreId => Str

The job's sequence store ID.


=head2 B<REQUIRED> Status => Str

The job's status.

Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"CANCELLING">, C<"CANCELLED">, C<"FAILED">, C<"COMPLETED">, C<"COMPLETED_WITH_FAILURES">
=head2 StatusMessage => Str

The job's status message.


=head2 _request_id => Str


=cut

