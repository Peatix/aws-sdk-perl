
package Paws::Proton::UpdateComponentOutput;
  use Moose;
  has Component => (is => 'ro', isa => 'Paws::Proton::Component', traits => ['NameInRequest'], request_name => 'component' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::UpdateComponentOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Component => L<Paws::Proton::Component>

The detailed data of the updated component.


=head2 _request_id => Str


=cut

1;