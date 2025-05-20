
package Paws::EC2::CreateTransitGatewayPolicyTableResult;
  use Moose;
  has TransitGatewayPolicyTable => (is => 'ro', isa => 'Paws::EC2::TransitGatewayPolicyTable', request_name => 'transitGatewayPolicyTable', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateTransitGatewayPolicyTableResult

=head1 ATTRIBUTES


=head2 TransitGatewayPolicyTable => L<Paws::EC2::TransitGatewayPolicyTable>

Describes the created transit gateway policy table.


=head2 _request_id => Str


=cut

