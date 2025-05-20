
package Paws::EC2::DeletePublicIpv4PoolResult;
  use Moose;
  has ReturnValue => (is => 'ro', isa => 'Bool', request_name => 'returnValue', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeletePublicIpv4PoolResult

=head1 ATTRIBUTES


=head2 ReturnValue => Bool

Information about the result of deleting the public IPv4 pool.


=head2 _request_id => Str


=cut

