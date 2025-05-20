
package Paws::WorkSpacesThinClient::GetEnvironmentResponse;
  use Moose;
  has Environment => (is => 'ro', isa => 'Paws::WorkSpacesThinClient::Environment', traits => ['NameInRequest'], request_name => 'environment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesThinClient::GetEnvironmentResponse

=head1 ATTRIBUTES


=head2 Environment => L<Paws::WorkSpacesThinClient::Environment>

Describes an environment.


=head2 _request_id => Str


=cut

