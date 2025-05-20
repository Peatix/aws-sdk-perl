
package Paws::Proton::GetComponentOutput;
  use Moose;
  has Component => (is => 'ro', isa => 'Paws::Proton::Component', traits => ['NameInRequest'], request_name => 'component' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::GetComponentOutput

=head1 ATTRIBUTES


=head2 Component => L<Paws::Proton::Component>

The detailed data of the requested component.


=head2 _request_id => Str


=cut

1;