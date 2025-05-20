
package Paws::Panorama::ListPackageImportJobsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PackageImportJobs => (is => 'ro', isa => 'ArrayRef[Paws::Panorama::PackageImportJob]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::ListPackageImportJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token that's included if more results are available.


=head2 B<REQUIRED> PackageImportJobs => ArrayRef[L<Paws::Panorama::PackageImportJob>]

A list of package import jobs.


=head2 _request_id => Str


=cut

