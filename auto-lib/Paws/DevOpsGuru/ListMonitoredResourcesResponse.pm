
package Paws::DevOpsGuru::ListMonitoredResourcesResponse;
  use Moose;
  has MonitoredResourceIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::DevOpsGuru::MonitoredResourceIdentifier]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::ListMonitoredResourcesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MonitoredResourceIdentifiers => ArrayRef[L<Paws::DevOpsGuru::MonitoredResourceIdentifier>]

Information about the resource that is being monitored, including the
name of the resource, the type of resource, and whether or not
permission is given to DevOps Guru to access that resource.


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 _request_id => Str


=cut

