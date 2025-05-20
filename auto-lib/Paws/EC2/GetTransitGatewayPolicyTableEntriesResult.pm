
package Paws::EC2::GetTransitGatewayPolicyTableEntriesResult;
  use Moose;
  has TransitGatewayPolicyTableEntries => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TransitGatewayPolicyTableEntry]', request_name => 'transitGatewayPolicyTableEntries', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetTransitGatewayPolicyTableEntriesResult

=head1 ATTRIBUTES


=head2 TransitGatewayPolicyTableEntries => ArrayRef[L<Paws::EC2::TransitGatewayPolicyTableEntry>]

The entries for the transit gateway policy table.


=head2 _request_id => Str


=cut

