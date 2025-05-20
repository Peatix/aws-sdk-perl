
package Paws::EC2::GetTransitGatewayPolicyTableAssociationsResult;
  use Moose;
  has Associations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TransitGatewayPolicyTableAssociation]', request_name => 'associations', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetTransitGatewayPolicyTableAssociationsResult

=head1 ATTRIBUTES


=head2 Associations => ArrayRef[L<Paws::EC2::TransitGatewayPolicyTableAssociation>]

Returns details about the transit gateway policy table association.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

