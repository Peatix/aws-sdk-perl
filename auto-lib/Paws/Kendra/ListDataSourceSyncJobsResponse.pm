
package Paws::Kendra::ListDataSourceSyncJobsResponse;
  use Moose;
  has History => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::DataSourceSyncJob]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ListDataSourceSyncJobsResponse

=head1 ATTRIBUTES


=head2 History => ArrayRef[L<Paws::Kendra::DataSourceSyncJob>]

A history of synchronization jobs for the data source connector.


=head2 NextToken => Str

If the response is truncated, Amazon Kendra returns this token that you
can use in the subsequent request to retrieve the next set of jobs.


=head2 _request_id => Str


=cut

1;