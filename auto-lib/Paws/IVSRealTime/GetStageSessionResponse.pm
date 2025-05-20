
package Paws::IVSRealTime::GetStageSessionResponse;
  use Moose;
  has StageSession => (is => 'ro', isa => 'Paws::IVSRealTime::StageSession', traits => ['NameInRequest'], request_name => 'stageSession');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::GetStageSessionResponse

=head1 ATTRIBUTES


=head2 StageSession => L<Paws::IVSRealTime::StageSession>

The stage session that is returned.


=head2 _request_id => Str


=cut

