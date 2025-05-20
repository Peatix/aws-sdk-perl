
package Paws::EC2::DescribeVpcEndpointAssociationsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has VpcEndpointAssociations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VpcEndpointAssociation]', request_name => 'vpcEndpointAssociationSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcEndpointAssociationsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token.


=head2 VpcEndpointAssociations => ArrayRef[L<Paws::EC2::VpcEndpointAssociation>]

Details of the endpoint associations.


=head2 _request_id => Str


=cut

