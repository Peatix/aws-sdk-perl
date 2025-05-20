
package Paws::Omics::StartReferenceImportJobResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has ReferenceStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'referenceStoreId', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::StartReferenceImportJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

When the job was created.


=head2 B<REQUIRED> Id => Str

The job's ID.


=head2 B<REQUIRED> ReferenceStoreId => Str

The job's reference store ID.


=head2 B<REQUIRED> RoleArn => Str

The job's service role ARN.


=head2 B<REQUIRED> Status => Str

The job's status.

Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"CANCELLING">, C<"CANCELLED">, C<"FAILED">, C<"COMPLETED">, C<"COMPLETED_WITH_FAILURES">
=head2 _request_id => Str


=cut

