
package Paws::EC2::CreateIpamScopeResult;
  use Moose;
  has IpamScope => (is => 'ro', isa => 'Paws::EC2::IpamScope', request_name => 'ipamScope', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateIpamScopeResult

=head1 ATTRIBUTES


=head2 IpamScope => L<Paws::EC2::IpamScope>

Information about the created scope.


=head2 _request_id => Str


=cut

