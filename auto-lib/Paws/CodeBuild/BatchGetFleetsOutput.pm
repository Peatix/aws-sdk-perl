
package Paws::CodeBuild::BatchGetFleetsOutput;
  use Moose;
  has Fleets => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::Fleet]', traits => ['NameInRequest'], request_name => 'fleets' );
  has FleetsNotFound => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'fleetsNotFound' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::BatchGetFleetsOutput

=head1 ATTRIBUTES


=head2 Fleets => ArrayRef[L<Paws::CodeBuild::Fleet>]

Information about the requested compute fleets.


=head2 FleetsNotFound => ArrayRef[Str|Undef]

The names of compute fleets for which information could not be found.


=head2 _request_id => Str


=cut

1;