
package Paws::VPCLattice::DeleteResourceEndpointAssociationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has ResourceConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceConfigurationArn');
  has ResourceConfigurationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceConfigurationId');
  has VpcEndpointId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcEndpointId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::DeleteResourceEndpointAssociationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the association.


=head2 Id => Str

The ID of the association.


=head2 ResourceConfigurationArn => Str

The Amazon Resource Name (ARN) of the resource configuration associated
with the VPC endpoint of type resource.


=head2 ResourceConfigurationId => Str

The ID of the resource configuration.


=head2 VpcEndpointId => Str

The ID of the resource VPC endpoint that is associated with the
resource configuration.


=head2 _request_id => Str


=cut

