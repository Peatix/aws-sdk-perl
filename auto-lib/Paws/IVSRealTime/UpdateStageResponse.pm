
package Paws::IVSRealTime::UpdateStageResponse;
  use Moose;
  has Stage => (is => 'ro', isa => 'Paws::IVSRealTime::Stage', traits => ['NameInRequest'], request_name => 'stage');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::UpdateStageResponse

=head1 ATTRIBUTES


=head2 Stage => L<Paws::IVSRealTime::Stage>

The updated stage.


=head2 _request_id => Str


=cut

