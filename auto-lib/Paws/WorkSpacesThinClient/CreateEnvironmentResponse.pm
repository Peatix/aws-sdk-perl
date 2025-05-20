
package Paws::WorkSpacesThinClient::CreateEnvironmentResponse;
  use Moose;
  has Environment => (is => 'ro', isa => 'Paws::WorkSpacesThinClient::EnvironmentSummary', traits => ['NameInRequest'], request_name => 'environment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesThinClient::CreateEnvironmentResponse

=head1 ATTRIBUTES


=head2 Environment => L<Paws::WorkSpacesThinClient::EnvironmentSummary>

Describes an environment.


=head2 _request_id => Str


=cut

