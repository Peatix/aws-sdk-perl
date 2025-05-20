
package Paws::FIS::GetSafetyLeverResponse;
  use Moose;
  has SafetyLever => (is => 'ro', isa => 'Paws::FIS::SafetyLever', traits => ['NameInRequest'], request_name => 'safetyLever');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::GetSafetyLeverResponse

=head1 ATTRIBUTES


=head2 SafetyLever => L<Paws::FIS::SafetyLever>

Information about the safety lever.


=head2 _request_id => Str


=cut

