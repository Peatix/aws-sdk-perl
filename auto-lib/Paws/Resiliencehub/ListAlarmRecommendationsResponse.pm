
package Paws::Resiliencehub::ListAlarmRecommendationsResponse;
  use Moose;
  has AlarmRecommendations => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::AlarmRecommendation]', traits => ['NameInRequest'], request_name => 'alarmRecommendations', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListAlarmRecommendationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlarmRecommendations => ArrayRef[L<Paws::Resiliencehub::AlarmRecommendation>]

The alarm recommendations for an Resilience Hub application, returned
as an object. This object includes Application Component names,
descriptions, information about whether a recommendation has already
been implemented or not, prerequisites, and more.


=head2 NextToken => Str

Token for the next set of results, or null if there are no more
results.


=head2 _request_id => Str


=cut

