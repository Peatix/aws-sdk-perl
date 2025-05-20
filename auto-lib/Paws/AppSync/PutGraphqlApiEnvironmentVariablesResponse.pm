
package Paws::AppSync::PutGraphqlApiEnvironmentVariablesResponse;
  use Moose;
  has EnvironmentVariables => (is => 'ro', isa => 'Paws::AppSync::EnvironmentVariableMap', traits => ['NameInRequest'], request_name => 'environmentVariables');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::PutGraphqlApiEnvironmentVariablesResponse

=head1 ATTRIBUTES


=head2 EnvironmentVariables => L<Paws::AppSync::EnvironmentVariableMap>

The payload containing each environmental variable in the C<"key" :
"value"> format.


=head2 _request_id => Str


=cut

