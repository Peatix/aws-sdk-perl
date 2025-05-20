
package Paws::EC2::CreateIpamExternalResourceVerificationTokenResult;
  use Moose;
  has IpamExternalResourceVerificationToken => (is => 'ro', isa => 'Paws::EC2::IpamExternalResourceVerificationToken', request_name => 'ipamExternalResourceVerificationToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateIpamExternalResourceVerificationTokenResult

=head1 ATTRIBUTES


=head2 IpamExternalResourceVerificationToken => L<Paws::EC2::IpamExternalResourceVerificationToken>

The verification token.


=head2 _request_id => Str


=cut

