
package Paws::Proton::ListEnvironmentProvisionedResourcesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ProvisionedResources => (is => 'ro', isa => 'ArrayRef[Paws::Proton::ProvisionedResource]', traits => ['NameInRequest'], request_name => 'provisionedResources' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListEnvironmentProvisionedResourcesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that indicates the location of the next environment provisioned
resource in the array of provisioned resources, after the current
requested list of environment provisioned resources.


=head2 B<REQUIRED> ProvisionedResources => ArrayRef[L<Paws::Proton::ProvisionedResource>]

An array of environment provisioned resources.


=head2 _request_id => Str


=cut

1;