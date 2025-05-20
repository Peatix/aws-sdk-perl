
package Paws::NetworkFirewall::GetAnalysisReportResultsResponse;
  use Moose;
  has AnalysisReportResults => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFirewall::AnalysisTypeReportResult]');
  has AnalysisType => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has ReportTime => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::GetAnalysisReportResultsResponse

=head1 ATTRIBUTES


=head2 AnalysisReportResults => ArrayRef[L<Paws::NetworkFirewall::AnalysisTypeReportResult>]

Retrieves the results of a traffic analysis report.


=head2 AnalysisType => Str

The type of traffic that will be used to generate a report.

Valid values are: C<"TLS_SNI">, C<"HTTP_HOST">
=head2 EndTime => Str

The date and time, up to the current date, from which to stop
retrieving analysis data, in UTC format (for example,
C<YYYY-MM-DDTHH:MM:SSZ>).


=head2 NextToken => Str

When you request a list of objects with a C<MaxResults> setting, if the
number of objects that are still available for retrieval exceeds the
maximum you requested, Network Firewall returns a C<NextToken> value in
the response. To retrieve the next batch of objects, use the token
returned from the prior request in your next request.


=head2 ReportTime => Str

The date and time the analysis report was ran.


=head2 StartTime => Str

The date and time within the last 30 days from which to start
retrieving analysis data, in UTC format (for example,
C<YYYY-MM-DDTHH:MM:SSZ>.


=head2 Status => Str

The status of the analysis report you specify. Statuses include
C<RUNNING>, C<COMPLETED>, or C<FAILED>.


=head2 _request_id => Str


=cut

1;