
package Paws::SageMakerGeospatial::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::SageMakerGeospatial::Tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::SageMakerGeospatial::Tags>

Each tag consists of a key and a value.


=head2 _request_id => Str


=cut

