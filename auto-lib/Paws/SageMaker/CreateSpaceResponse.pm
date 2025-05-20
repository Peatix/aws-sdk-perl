
package Paws::SageMaker::CreateSpaceResponse;
  use Moose;
  has SpaceArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateSpaceResponse

=head1 ATTRIBUTES


=head2 SpaceArn => Str

The space's Amazon Resource Name (ARN).


=head2 _request_id => Str


=cut

1;