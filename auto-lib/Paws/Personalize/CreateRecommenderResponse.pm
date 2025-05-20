
package Paws::Personalize::CreateRecommenderResponse;
  use Moose;
  has RecommenderArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recommenderArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateRecommenderResponse

=head1 ATTRIBUTES


=head2 RecommenderArn => Str

The Amazon Resource Name (ARN) of the recommender.


=head2 _request_id => Str


=cut

1;