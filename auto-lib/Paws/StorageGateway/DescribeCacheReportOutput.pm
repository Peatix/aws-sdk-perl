
package Paws::StorageGateway::DescribeCacheReportOutput;
  use Moose;
  has CacheReportInfo => (is => 'ro', isa => 'Paws::StorageGateway::CacheReportInfo');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeCacheReportOutput

=head1 ATTRIBUTES


=head2 CacheReportInfo => L<Paws::StorageGateway::CacheReportInfo>

Contains all informational fields associated with a cache report.
Includes name, ARN, tags, status, progress, filters, start time, and
end time.


=head2 _request_id => Str


=cut

1;