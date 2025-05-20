
package Paws::Resiliencehub::ListUnsupportedAppVersionResourcesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResolutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resolutionId', required => 1);
  has UnsupportedResources => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::UnsupportedResource]', traits => ['NameInRequest'], request_name => 'unsupportedResources', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListUnsupportedAppVersionResourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Token for the next set of results, or null if there are no more
results.


=head2 B<REQUIRED> ResolutionId => Str

The identifier for a specific resolution.


=head2 B<REQUIRED> UnsupportedResources => ArrayRef[L<Paws::Resiliencehub::UnsupportedResource>]

The unsupported resources for the application.


=head2 _request_id => Str


=cut

