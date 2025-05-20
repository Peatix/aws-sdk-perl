
package Paws::EC2::DescribeVpcBlockPublicAccessOptionsResult;
  use Moose;
  has VpcBlockPublicAccessOptions => (is => 'ro', isa => 'Paws::EC2::VpcBlockPublicAccessOptions', request_name => 'vpcBlockPublicAccessOptions', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcBlockPublicAccessOptionsResult

=head1 ATTRIBUTES


=head2 VpcBlockPublicAccessOptions => L<Paws::EC2::VpcBlockPublicAccessOptions>

Details related to the options.


=head2 _request_id => Str


=cut

