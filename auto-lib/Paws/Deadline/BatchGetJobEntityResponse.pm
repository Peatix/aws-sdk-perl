
package Paws::Deadline::BatchGetJobEntityResponse;
  use Moose;
  has Entities => (is => 'ro', isa => 'ArrayRef[Paws::Deadline::JobEntity]', traits => ['NameInRequest'], request_name => 'entities', required => 1);
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Deadline::GetJobEntityError]', traits => ['NameInRequest'], request_name => 'errors', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::BatchGetJobEntityResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Entities => ArrayRef[L<Paws::Deadline::JobEntity>]

A list of the job entities, or details, in the batch.


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::Deadline::GetJobEntityError>]

A list of errors from the job error logs for the batch.


=head2 _request_id => Str


=cut

