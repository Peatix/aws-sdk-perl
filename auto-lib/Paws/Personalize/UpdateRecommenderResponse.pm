
package Paws::Personalize::UpdateRecommenderResponse;
  use Moose;
  has RecommenderArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recommenderArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::UpdateRecommenderResponse

=head1 ATTRIBUTES


=head2 RecommenderArn => Str

The same recommender Amazon Resource Name (ARN) as given in the
request.


=head2 _request_id => Str


=cut

1;