
package Paws::SESv2::ListRecommendationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Recommendations => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::Recommendation]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::ListRecommendationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A string token indicating that there might be additional
recommendations available to be listed. Use the token provided in the
C<ListRecommendationsResponse> to use in the subsequent call to
C<ListRecommendations> with the same parameters to retrieve the next
page of recommendations.


=head2 Recommendations => ArrayRef[L<Paws::SESv2::Recommendation>]

The recommendations applicable to your account.


=head2 _request_id => Str


=cut

