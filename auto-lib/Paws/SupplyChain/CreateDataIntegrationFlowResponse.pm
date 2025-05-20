
package Paws::SupplyChain::CreateDataIntegrationFlowResponse;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::CreateDataIntegrationFlowResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The Amazon Web Services Supply Chain instance identifier.


=head2 B<REQUIRED> Name => Str

The name of the DataIntegrationFlow created.


=head2 _request_id => Str


=cut

