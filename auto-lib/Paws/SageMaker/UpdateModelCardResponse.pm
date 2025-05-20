
package Paws::SageMaker::UpdateModelCardResponse;
  use Moose;
  has ModelCardArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateModelCardResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelCardArn => Str

The Amazon Resource Name (ARN) of the updated model card.


=head2 _request_id => Str


=cut

1;