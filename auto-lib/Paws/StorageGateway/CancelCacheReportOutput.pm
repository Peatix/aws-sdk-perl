
package Paws::StorageGateway::CancelCacheReportOutput;
  use Moose;
  has CacheReportARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::CancelCacheReportOutput

=head1 ATTRIBUTES


=head2 CacheReportARN => Str

The Amazon Resource Name (ARN) of the cache report you want to cancel.


=head2 _request_id => Str


=cut

1;