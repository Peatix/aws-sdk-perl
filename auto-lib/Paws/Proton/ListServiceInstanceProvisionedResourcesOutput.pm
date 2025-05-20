
package Paws::Proton::ListServiceInstanceProvisionedResourcesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ProvisionedResources => (is => 'ro', isa => 'ArrayRef[Paws::Proton::ProvisionedResource]', traits => ['NameInRequest'], request_name => 'provisionedResources' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListServiceInstanceProvisionedResourcesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that indicates the location of the next provisioned resource in
the array of provisioned resources, after the current requested list of
provisioned resources.


=head2 B<REQUIRED> ProvisionedResources => ArrayRef[L<Paws::Proton::ProvisionedResource>]

An array of provisioned resources for a service instance.


=head2 _request_id => Str


=cut

1;