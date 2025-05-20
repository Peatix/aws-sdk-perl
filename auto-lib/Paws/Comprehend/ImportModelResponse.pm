
package Paws::Comprehend::ImportModelResponse;
  use Moose;
  has ModelArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ImportModelResponse

=head1 ATTRIBUTES


=head2 ModelArn => Str

The Amazon Resource Name (ARN) of the custom model being imported.


=head2 _request_id => Str


=cut

1;