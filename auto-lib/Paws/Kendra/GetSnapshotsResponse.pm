
package Paws::Kendra::GetSnapshotsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SnapshotsData => (is => 'ro', isa => 'ArrayRef[ArrayRef[Str|Undef]]');
  has SnapshotsDataHeader => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SnapShotTimeFilter => (is => 'ro', isa => 'Paws::Kendra::TimeRange');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::GetSnapshotsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon Kendra returns this token, which
you can use in a later request to retrieve the next set of search
metrics data.


=head2 SnapshotsData => ArrayRef[ArrayRef[Str|Undef]]

The search metrics data. The data returned depends on the metric type
you requested.


=head2 SnapshotsDataHeader => ArrayRef[Str|Undef]

The column headers for the search metrics data.


=head2 SnapShotTimeFilter => L<Paws::Kendra::TimeRange>

The Unix timestamp for the beginning and end of the time window for the
search metrics data.


=head2 _request_id => Str


=cut

1;