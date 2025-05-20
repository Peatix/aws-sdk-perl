
package Paws::ApplicationAutoScaling::RegisterScalableTargetResponse;
  use Moose;
  has ScalableTargetARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::RegisterScalableTargetResponse

=head1 ATTRIBUTES


=head2 ScalableTargetARN => Str

The ARN of the scalable target.


=head2 _request_id => Str


=cut

1;