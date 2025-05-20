
package Paws::CloudTrail::PutInsightSelectorsResponse;
  use Moose;
  has EventDataStoreArn => (is => 'ro', isa => 'Str');
  has InsightsDestination => (is => 'ro', isa => 'Str');
  has InsightSelectors => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::InsightSelector]');
  has TrailARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::PutInsightSelectorsResponse

=head1 ATTRIBUTES


=head2 EventDataStoreArn => Str

The Amazon Resource Name (ARN) of the source event data store for which
you want to change or add Insights selectors.


=head2 InsightsDestination => Str

The ARN of the destination event data store that logs Insights events.


=head2 InsightSelectors => ArrayRef[L<Paws::CloudTrail::InsightSelector>]

A JSON string that contains the Insights event types that you want to
log on a trail or event data store. The valid Insights types are
C<ApiErrorRateInsight> and C<ApiCallRateInsight>.


=head2 TrailARN => Str

The Amazon Resource Name (ARN) of a trail for which you want to change
or add Insights selectors.


=head2 _request_id => Str


=cut

1;