
package Paws::Discovery::BatchDeleteAgentsResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::BatchDeleteAgentError]', traits => ['NameInRequest'], request_name => 'errors' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::BatchDeleteAgentsResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::Discovery::BatchDeleteAgentError>]

A list of agent IDs that failed to delete during the deletion task,
each paired with an error message.


=head2 _request_id => Str


=cut

1;