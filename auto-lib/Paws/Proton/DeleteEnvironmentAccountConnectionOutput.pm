
package Paws::Proton::DeleteEnvironmentAccountConnectionOutput;
  use Moose;
  has EnvironmentAccountConnection => (is => 'ro', isa => 'Paws::Proton::EnvironmentAccountConnection', traits => ['NameInRequest'], request_name => 'environmentAccountConnection' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::DeleteEnvironmentAccountConnectionOutput

=head1 ATTRIBUTES


=head2 EnvironmentAccountConnection => L<Paws::Proton::EnvironmentAccountConnection>

The detailed data of the environment account connection being deleted.


=head2 _request_id => Str


=cut

1;