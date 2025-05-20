
package Paws::RDS::DBRecommendationMessage;
  use Moose;
  has DBRecommendation => (is => 'ro', isa => 'Paws::RDS::DBRecommendation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBRecommendationMessage

=head1 ATTRIBUTES


=head2 DBRecommendation => L<Paws::RDS::DBRecommendation>




=head2 _request_id => Str


=cut

