
package Paws::EC2::DescribeTransitGatewayPolicyTablesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has TransitGatewayPolicyTables => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TransitGatewayPolicyTable]', request_name => 'transitGatewayPolicyTables', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTransitGatewayPolicyTablesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next page of results.


=head2 TransitGatewayPolicyTables => ArrayRef[L<Paws::EC2::TransitGatewayPolicyTable>]

Describes the transit gateway policy tables.


=head2 _request_id => Str


=cut

