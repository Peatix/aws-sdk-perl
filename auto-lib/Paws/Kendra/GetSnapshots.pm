
package Paws::Kendra::GetSnapshots;
  use Moose;
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has Interval => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has MetricType => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::GetSnapshotsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::GetSnapshots - Arguments for method GetSnapshots on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSnapshots on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method GetSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSnapshots.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $GetSnapshotsResponse = $kendra->GetSnapshots(
      IndexId    => 'MyIndexId',
      Interval   => 'THIS_MONTH',
      MetricType => 'QUERIES_BY_COUNT',
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyNextToken',        # OPTIONAL
    );

    # Results:
    my $NextToken           = $GetSnapshotsResponse->NextToken;
    my $SnapShotTimeFilter  = $GetSnapshotsResponse->SnapShotTimeFilter;
    my $SnapshotsData       = $GetSnapshotsResponse->SnapshotsData;
    my $SnapshotsDataHeader = $GetSnapshotsResponse->SnapshotsDataHeader;

    # Returns a L<Paws::Kendra::GetSnapshotsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/GetSnapshots>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IndexId => Str

The identifier of the index to get search metrics data.



=head2 B<REQUIRED> Interval => Str

The time interval or time window to get search metrics data. The time
interval uses the time zone of your index. You can view data in the
following time windows:

=over

=item *

C<THIS_WEEK>: The current week, starting on the Sunday and ending on
the day before the current date.

=item *

C<ONE_WEEK_AGO>: The previous week, starting on the Sunday and ending
on the following Saturday.

=item *

C<TWO_WEEKS_AGO>: The week before the previous week, starting on the
Sunday and ending on the following Saturday.

=item *

C<THIS_MONTH>: The current month, starting on the first day of the
month and ending on the day before the current date.

=item *

C<ONE_MONTH_AGO>: The previous month, starting on the first day of the
month and ending on the last day of the month.

=item *

C<TWO_MONTHS_AGO>: The month before the previous month, starting on the
first day of the month and ending on last day of the month.

=back


Valid values are: C<"THIS_MONTH">, C<"THIS_WEEK">, C<"ONE_WEEK_AGO">, C<"TWO_WEEKS_AGO">, C<"ONE_MONTH_AGO">, C<"TWO_MONTHS_AGO">

=head2 MaxResults => Int

The maximum number of returned data for the metric.



=head2 B<REQUIRED> MetricType => Str

The metric you want to retrieve. You can specify only one metric per
call.

For more information about the metrics you can view, see Gaining
insights with search analytics
(https://docs.aws.amazon.com/kendra/latest/dg/search-analytics.html).

Valid values are: C<"QUERIES_BY_COUNT">, C<"QUERIES_BY_ZERO_CLICK_RATE">, C<"QUERIES_BY_ZERO_RESULT_RATE">, C<"DOCS_BY_CLICK_COUNT">, C<"AGG_QUERY_DOC_METRICS">, C<"TREND_QUERY_DOC_METRICS">

=head2 NextToken => Str

If the previous response was incomplete (because there is more data to
retrieve), Amazon Kendra returns a pagination token in the response.
You can use this pagination token to retrieve the next set of search
metrics data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSnapshots in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

