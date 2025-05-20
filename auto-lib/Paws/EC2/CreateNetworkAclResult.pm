
package Paws::EC2::CreateNetworkAclResult;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', request_name => 'clientToken', traits => ['NameInRequest',]);
  has NetworkAcl => (is => 'ro', isa => 'Paws::EC2::NetworkAcl', request_name => 'networkAcl', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateNetworkAclResult

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier to ensure the idempotency of the
request. Only returned if a client token was provided in the request.


=head2 NetworkAcl => L<Paws::EC2::NetworkAcl>

Information about the network ACL.


=head2 _request_id => Str


=cut

