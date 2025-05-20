
package Paws::MediaPackageV2::ListHarvestJobsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::MediaPackageV2::HarvestJob]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::ListHarvestJobsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::MediaPackageV2::HarvestJob>]

An array of harvest job objects that match the specified criteria.


=head2 NextToken => Str

A token used for pagination. Include this value in subsequent requests
to retrieve the next set of results. If null, there are no more results
to retrieve.


=head2 _request_id => Str


=cut

