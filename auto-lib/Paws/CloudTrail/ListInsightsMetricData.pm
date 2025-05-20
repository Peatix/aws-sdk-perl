
package Paws::CloudTrail::ListInsightsMetricData;
  use Moose;
  has DataType => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has ErrorCode => (is => 'ro', isa => 'Str');
  has EventName => (is => 'ro', isa => 'Str', required => 1);
  has EventSource => (is => 'ro', isa => 'Str', required => 1);
  has InsightType => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Period => (is => 'ro', isa => 'Int');
  has StartTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInsightsMetricData');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::ListInsightsMetricDataResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::ListInsightsMetricData - Arguments for method ListInsightsMetricData on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInsightsMetricData on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method ListInsightsMetricData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInsightsMetricData.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $ListInsightsMetricDataResponse = $cloudtrail->ListInsightsMetricData(
      EventName   => 'MyEventName',
      EventSource => 'MyEventSource',
      InsightType => 'ApiCallRateInsight',
      DataType    => 'FillWithZeros',                # OPTIONAL
      EndTime     => '1970-01-01T01:00:00',          # OPTIONAL
      ErrorCode   => 'MyErrorCode',                  # OPTIONAL
      MaxResults  => 1,                              # OPTIONAL
      NextToken   => 'MyInsightsMetricNextToken',    # OPTIONAL
      Period      => 1,                              # OPTIONAL
      StartTime   => '1970-01-01T01:00:00',          # OPTIONAL
    );

    # Results:
    my $ErrorCode   = $ListInsightsMetricDataResponse->ErrorCode;
    my $EventName   = $ListInsightsMetricDataResponse->EventName;
    my $EventSource = $ListInsightsMetricDataResponse->EventSource;
    my $InsightType = $ListInsightsMetricDataResponse->InsightType;
    my $NextToken   = $ListInsightsMetricDataResponse->NextToken;
    my $Timestamps  = $ListInsightsMetricDataResponse->Timestamps;
    my $Values      = $ListInsightsMetricDataResponse->Values;

    # Returns a L<Paws::CloudTrail::ListInsightsMetricDataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/ListInsightsMetricData>

=head1 ATTRIBUTES


=head2 DataType => Str

Type of data points to return. Valid values are C<NonZeroData> and
C<FillWithZeros>. The default is C<NonZeroData>.

Valid values are: C<"FillWithZeros">, C<"NonZeroData">

=head2 EndTime => Str

Specifies, in UTC, the end time for time-series data. The value
specified is exclusive; results include data points up to the specified
time stamp.

The default is the time of request.



=head2 ErrorCode => Str

Conditionally required if the C<InsightType> parameter is set to
C<ApiErrorRateInsight>.

If returning metrics for the C<ApiErrorRateInsight> Insights type, this
is the error to retrieve data for. For example, C<AccessDenied>.



=head2 B<REQUIRED> EventName => Str

The name of the event, typically the Amazon Web Services API on which
unusual levels of activity were recorded.



=head2 B<REQUIRED> EventSource => Str

The Amazon Web Services service to which the request was made, such as
C<iam.amazonaws.com> or C<s3.amazonaws.com>.



=head2 B<REQUIRED> InsightType => Str

The type of CloudTrail Insights event, which is either
C<ApiCallRateInsight> or C<ApiErrorRateInsight>. The
C<ApiCallRateInsight> Insights type analyzes write-only management API
calls that are aggregated per minute against a baseline API call
volume. The C<ApiErrorRateInsight> Insights type analyzes management
API calls that result in error codes.

Valid values are: C<"ApiCallRateInsight">, C<"ApiErrorRateInsight">

=head2 MaxResults => Int

The maximum number of data points to return. Valid values are integers
from 1 to 21600. The default value is 21600.



=head2 NextToken => Str

Returned if all datapoints can't be returned in a single call. For
example, due to reaching C<MaxResults>.

Add this parameter to the request to continue retrieving results
starting from the last evaluated point.



=head2 Period => Int

Granularity of data to retrieve, in seconds. Valid values are C<60>,
C<300>, and C<3600>. If you specify any other value, you will get an
error. The default is 3600 seconds.



=head2 StartTime => Str

Specifies, in UTC, the start time for time-series data. The value
specified is inclusive; results include data points with the specified
time stamp.

The default is 90 days before the time of request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInsightsMetricData in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

