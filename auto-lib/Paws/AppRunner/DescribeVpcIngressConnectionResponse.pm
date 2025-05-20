
package Paws::AppRunner::DescribeVpcIngressConnectionResponse;
  use Moose;
  has VpcIngressConnection => (is => 'ro', isa => 'Paws::AppRunner::VpcIngressConnection', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::DescribeVpcIngressConnectionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> VpcIngressConnection => L<Paws::AppRunner::VpcIngressConnection>

A description of the App Runner VPC Ingress Connection that you
specified in this request.


=head2 _request_id => Str


=cut

1;