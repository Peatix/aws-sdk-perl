
package Paws::CloudTrail::GetInsightSelectorsResponse;
  use Moose;
  has EventDataStoreArn => (is => 'ro', isa => 'Str');
  has InsightsDestination => (is => 'ro', isa => 'Str');
  has InsightSelectors => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::InsightSelector]');
  has TrailARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::GetInsightSelectorsResponse

=head1 ATTRIBUTES


=head2 EventDataStoreArn => Str

The ARN of the source event data store that enabled Insights events.


=head2 InsightsDestination => Str

The ARN of the destination event data store that logs Insights events.


=head2 InsightSelectors => ArrayRef[L<Paws::CloudTrail::InsightSelector>]

A JSON string that contains the Insight types you want to log on a
trail or event data store. C<ApiErrorRateInsight> and
C<ApiCallRateInsight> are supported as Insights types.


=head2 TrailARN => Str

The Amazon Resource Name (ARN) of a trail for which you want to get
Insights selectors.


=head2 _request_id => Str


=cut

1;