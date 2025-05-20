
package Paws::AppRunner::ListVpcConnectorsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has VpcConnectors => (is => 'ro', isa => 'ArrayRef[Paws::AppRunner::VpcConnector]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::ListVpcConnectorsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that you can pass in a subsequent request to get the next
result page. It's returned in a paginated request.


=head2 B<REQUIRED> VpcConnectors => ArrayRef[L<Paws::AppRunner::VpcConnector>]

A list of information records for VPC connectors. In a paginated
request, the request returns up to C<MaxResults> records for each call.


=head2 _request_id => Str


=cut

1;