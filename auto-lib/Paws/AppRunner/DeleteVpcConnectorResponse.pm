
package Paws::AppRunner::DeleteVpcConnectorResponse;
  use Moose;
  has VpcConnector => (is => 'ro', isa => 'Paws::AppRunner::VpcConnector', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::DeleteVpcConnectorResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> VpcConnector => L<Paws::AppRunner::VpcConnector>

A description of the App Runner VPC connector that this request just
deleted.


=head2 _request_id => Str


=cut

1;