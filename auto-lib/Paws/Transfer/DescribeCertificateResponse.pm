
package Paws::Transfer::DescribeCertificateResponse;
  use Moose;
  has Certificate => (is => 'ro', isa => 'Paws::Transfer::DescribedCertificate', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribeCertificateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Certificate => L<Paws::Transfer::DescribedCertificate>

The details for the specified certificate, returned as an object.


=head2 _request_id => Str


=cut

1;