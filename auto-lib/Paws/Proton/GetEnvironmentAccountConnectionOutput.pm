
package Paws::Proton::GetEnvironmentAccountConnectionOutput;
  use Moose;
  has EnvironmentAccountConnection => (is => 'ro', isa => 'Paws::Proton::EnvironmentAccountConnection', traits => ['NameInRequest'], request_name => 'environmentAccountConnection' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::GetEnvironmentAccountConnectionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnvironmentAccountConnection => L<Paws::Proton::EnvironmentAccountConnection>

The detailed data of the requested environment account connection.


=head2 _request_id => Str


=cut

1;