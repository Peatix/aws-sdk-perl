
package Paws::Proton::GetEnvironmentOutput;
  use Moose;
  has Environment => (is => 'ro', isa => 'Paws::Proton::Environment', traits => ['NameInRequest'], request_name => 'environment' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::GetEnvironmentOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Environment => L<Paws::Proton::Environment>

The detailed data of the requested environment.


=head2 _request_id => Str


=cut

1;