
package Paws::EC2::DeleteIpamResult;
  use Moose;
  has Ipam => (is => 'ro', isa => 'Paws::EC2::Ipam', request_name => 'ipam', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteIpamResult

=head1 ATTRIBUTES


=head2 Ipam => L<Paws::EC2::Ipam>

Information about the results of the deletion.


=head2 _request_id => Str


=cut

