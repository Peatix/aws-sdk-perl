
package Paws::RDS::DBRecommendationsMessage;
  use Moose;
  has DBRecommendations => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBRecommendation]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBRecommendationsMessage

=head1 ATTRIBUTES


=head2 DBRecommendations => ArrayRef[L<Paws::RDS::DBRecommendation>]

A list of recommendations which is returned from
C<DescribeDBRecommendations> API request.


=head2 Marker => Str

An optional pagination token provided by a previous
C<DBRecommendationsMessage> request. This token can be used later in a
C<DescribeDBRecomendations> request.


=head2 _request_id => Str


=cut

