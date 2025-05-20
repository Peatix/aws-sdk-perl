
package Paws::EC2::AssociateTransitGatewayPolicyTableResult;
  use Moose;
  has Association => (is => 'ro', isa => 'Paws::EC2::TransitGatewayPolicyTableAssociation', request_name => 'association', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociateTransitGatewayPolicyTableResult

=head1 ATTRIBUTES


=head2 Association => L<Paws::EC2::TransitGatewayPolicyTableAssociation>

Describes the association of a transit gateway and a transit gateway
policy table.


=head2 _request_id => Str


=cut

