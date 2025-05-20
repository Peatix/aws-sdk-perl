
package Paws::Deadline::AssumeQueueRoleForWorkerResponse;
  use Moose;
  has Credentials => (is => 'ro', isa => 'Paws::Deadline::AwsCredentials', traits => ['NameInRequest'], request_name => 'credentials');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::AssumeQueueRoleForWorkerResponse

=head1 ATTRIBUTES


=head2 Credentials => L<Paws::Deadline::AwsCredentials>

The Amazon Web Services credentials for the role that the worker is
assuming.


=head2 _request_id => Str


=cut

