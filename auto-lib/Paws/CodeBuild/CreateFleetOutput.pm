
package Paws::CodeBuild::CreateFleetOutput;
  use Moose;
  has Fleet => (is => 'ro', isa => 'Paws::CodeBuild::Fleet', traits => ['NameInRequest'], request_name => 'fleet' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::CreateFleetOutput

=head1 ATTRIBUTES


=head2 Fleet => L<Paws::CodeBuild::Fleet>

Information about the compute fleet


=head2 _request_id => Str


=cut

1;