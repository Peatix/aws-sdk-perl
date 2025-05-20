
package Paws::CloudTrail::ListInsightsMetricDataResponse;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has EventName => (is => 'ro', isa => 'Str');
  has EventSource => (is => 'ro', isa => 'Str');
  has InsightType => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has Timestamps => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Values => (is => 'ro', isa => 'ArrayRef[Num]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::ListInsightsMetricDataResponse

=head1 ATTRIBUTES


=head2 ErrorCode => Str

Only returned if C<InsightType> parameter was set to
C<ApiErrorRateInsight>.

If returning metrics for the C<ApiErrorRateInsight> Insights type, this
is the error to retrieve data for. For example, C<AccessDenied>.


=head2 EventName => Str

The name of the event, typically the Amazon Web Services API on which
unusual levels of activity were recorded.


=head2 EventSource => Str

The Amazon Web Services service to which the request was made, such as
C<iam.amazonaws.com> or C<s3.amazonaws.com>.


=head2 InsightType => Str

The type of CloudTrail Insights event, which is either
C<ApiCallRateInsight> or C<ApiErrorRateInsight>. The
C<ApiCallRateInsight> Insights type analyzes write-only management API
calls that are aggregated per minute against a baseline API call
volume. The C<ApiErrorRateInsight> Insights type analyzes management
API calls that result in error codes.

Valid values are: C<"ApiCallRateInsight">, C<"ApiErrorRateInsight">
=head2 NextToken => Str

Only returned if the full results could not be returned in a single
query. You can set the C<NextToken> parameter in the next request to
this value to continue retrieval.


=head2 Timestamps => ArrayRef[Str|Undef]

List of timestamps at intervals corresponding to the specified time
period.


=head2 Values => ArrayRef[Num]

List of values representing the API call rate or error rate at each
timestamp. The number of values is equal to the number of timestamps.


=head2 _request_id => Str


=cut

1;