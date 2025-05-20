
package Paws::Resiliencehub::ListAppVersionResourcesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has PhysicalResources => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::PhysicalResource]', traits => ['NameInRequest'], request_name => 'physicalResources', required => 1);
  has ResolutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resolutionId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListAppVersionResourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Token for the next set of results, or null if there are no more
results.


=head2 B<REQUIRED> PhysicalResources => ArrayRef[L<Paws::Resiliencehub::PhysicalResource>]

The physical resources in the application version.


=head2 B<REQUIRED> ResolutionId => Str

The ID for a specific resolution.


=head2 _request_id => Str


=cut

