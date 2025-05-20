
package Paws::Panorama::ListDevicesJobsResponse;
  use Moose;
  has DeviceJobs => (is => 'ro', isa => 'ArrayRef[Paws::Panorama::DeviceJob]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::ListDevicesJobsResponse

=head1 ATTRIBUTES


=head2 DeviceJobs => ArrayRef[L<Paws::Panorama::DeviceJob>]

A list of jobs.


=head2 NextToken => Str

A pagination token that's included if more results are available.


=head2 _request_id => Str


=cut

