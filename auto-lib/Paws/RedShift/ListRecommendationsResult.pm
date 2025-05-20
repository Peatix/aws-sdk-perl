
package Paws::RedShift::ListRecommendationsResult;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has Recommendations => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Recommendation]', request_name => 'Recommendation', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ListRecommendationsResult

=head1 ATTRIBUTES


=head2 Marker => Str

A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
marker value in the Marker parameter and retrying the command. If the
Marker field is empty, all response records have been retrieved for the
request.


=head2 Recommendations => ArrayRef[L<Paws::RedShift::Recommendation>]

The Advisor recommendations for action on the Amazon Redshift cluster.


=head2 _request_id => Str


=cut

