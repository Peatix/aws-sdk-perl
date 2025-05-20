
package Paws::Deadline::CreateWorkerResponse;
  use Moose;
  has WorkerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workerId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CreateWorkerResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> WorkerId => Str

The worker ID.


=head2 _request_id => Str


=cut

