
package Paws::Personalize::DescribeRecommenderResponse;
  use Moose;
  has Recommender => (is => 'ro', isa => 'Paws::Personalize::Recommender', traits => ['NameInRequest'], request_name => 'recommender' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeRecommenderResponse

=head1 ATTRIBUTES


=head2 Recommender => L<Paws::Personalize::Recommender>

The properties of the recommender.


=head2 _request_id => Str


=cut

1;