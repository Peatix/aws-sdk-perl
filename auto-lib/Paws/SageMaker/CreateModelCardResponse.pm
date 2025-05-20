
package Paws::SageMaker::CreateModelCardResponse;
  use Moose;
  has ModelCardArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateModelCardResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelCardArn => Str

The Amazon Resource Name (ARN) of the successfully created model card.


=head2 _request_id => Str


=cut

1;