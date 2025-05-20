
package Paws::M2::CreateEnvironmentResponse;
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::CreateEnvironmentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnvironmentId => Str

The unique identifier of the runtime environment.


=head2 _request_id => Str


=cut

