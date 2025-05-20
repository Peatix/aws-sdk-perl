
package Paws::CodeBuild::UpdateFleetOutput;
  use Moose;
  has Fleet => (is => 'ro', isa => 'Paws::CodeBuild::Fleet', traits => ['NameInRequest'], request_name => 'fleet' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::UpdateFleetOutput

=head1 ATTRIBUTES


=head2 Fleet => L<Paws::CodeBuild::Fleet>

A C<Fleet> object.


=head2 _request_id => Str


=cut

1;