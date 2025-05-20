
package Paws::CodeGuruSecurity::ListFindingsMetricsResponse;
  use Moose;
  has FindingsMetrics => (is => 'ro', isa => 'ArrayRef[Paws::CodeGuruSecurity::AccountFindingsMetric]', traits => ['NameInRequest'], request_name => 'findingsMetrics');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruSecurity::ListFindingsMetricsResponse

=head1 ATTRIBUTES


=head2 FindingsMetrics => ArrayRef[L<Paws::CodeGuruSecurity::AccountFindingsMetric>]

A list of C<AccountFindingsMetric> objects retrieved from the specified
time interval.


=head2 NextToken => Str

A pagination token. You can use this in future calls to
C<ListFindingMetrics> to continue listing results after the current
page.


=head2 _request_id => Str


=cut

