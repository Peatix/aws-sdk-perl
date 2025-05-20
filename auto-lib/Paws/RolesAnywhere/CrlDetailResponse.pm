
package Paws::RolesAnywhere::CrlDetailResponse;
  use Moose;
  has Crl => (is => 'ro', isa => 'Paws::RolesAnywhere::CrlDetail', traits => ['NameInRequest'], request_name => 'crl', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RolesAnywhere::CrlDetailResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Crl => L<Paws::RolesAnywhere::CrlDetail>

The state of the certificate revocation list (CRL) after a read or
write operation.


=head2 _request_id => Str


=cut

