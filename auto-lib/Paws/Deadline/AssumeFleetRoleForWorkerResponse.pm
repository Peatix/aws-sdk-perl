
package Paws::Deadline::AssumeFleetRoleForWorkerResponse;
  use Moose;
  has Credentials => (is => 'ro', isa => 'Paws::Deadline::AwsCredentials', traits => ['NameInRequest'], request_name => 'credentials', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::AssumeFleetRoleForWorkerResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Credentials => L<Paws::Deadline::AwsCredentials>

The credentials for the worker.


=head2 _request_id => Str


=cut

