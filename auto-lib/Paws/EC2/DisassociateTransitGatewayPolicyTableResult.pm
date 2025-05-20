
package Paws::EC2::DisassociateTransitGatewayPolicyTableResult;
  use Moose;
  has Association => (is => 'ro', isa => 'Paws::EC2::TransitGatewayPolicyTableAssociation', request_name => 'association', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisassociateTransitGatewayPolicyTableResult

=head1 ATTRIBUTES


=head2 Association => L<Paws::EC2::TransitGatewayPolicyTableAssociation>

Returns details about the transit gateway policy table disassociation.


=head2 _request_id => Str


=cut

