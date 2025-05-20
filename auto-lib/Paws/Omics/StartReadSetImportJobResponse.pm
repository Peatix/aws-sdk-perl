
package Paws::Omics::StartReadSetImportJobResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has SequenceStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sequenceStoreId', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::StartReadSetImportJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

When the job was created.


=head2 B<REQUIRED> Id => Str

The job's ID.


=head2 B<REQUIRED> RoleArn => Str

The job's service role ARN.


=head2 B<REQUIRED> SequenceStoreId => Str

The read set's sequence store ID.


=head2 B<REQUIRED> Status => Str

The job's status.

Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"CANCELLING">, C<"CANCELLED">, C<"FAILED">, C<"COMPLETED">, C<"COMPLETED_WITH_FAILURES">
=head2 _request_id => Str


=cut

