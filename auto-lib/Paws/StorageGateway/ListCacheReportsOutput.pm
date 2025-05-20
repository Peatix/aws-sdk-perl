
package Paws::StorageGateway::ListCacheReportsOutput;
  use Moose;
  has CacheReportList => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::CacheReportInfo]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::ListCacheReportsOutput

=head1 ATTRIBUTES


=head2 CacheReportList => ArrayRef[L<Paws::StorageGateway::CacheReportInfo>]

A list of existing cache reports for all file shares associated with
your Amazon Web Services account. This list includes all information
provided by the C<DescribeCacheReport> action, such as report status,
completion progress, start time, end time, filters, and tags.


=head2 Marker => Str

If the request includes C<Marker>, the response returns that value in
this field.


=head2 _request_id => Str


=cut

1;