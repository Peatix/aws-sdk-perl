
package Paws::QBusiness::ListDataSourceSyncJobsResponse;
  use Moose;
  has History => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::DataSourceSyncJob]', traits => ['NameInRequest'], request_name => 'history');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ListDataSourceSyncJobsResponse

=head1 ATTRIBUTES


=head2 History => ArrayRef[L<Paws::QBusiness::DataSourceSyncJob>]

A history of synchronization jobs for the data source connector.


=head2 NextToken => Str

If the response is truncated, Amazon Q Business returns this token. You
can use this token in any subsequent request to retrieve the next set
of jobs.


=head2 _request_id => Str


=cut

