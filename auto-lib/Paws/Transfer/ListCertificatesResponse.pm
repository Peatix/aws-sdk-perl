
package Paws::Transfer::ListCertificatesResponse;
  use Moose;
  has Certificates => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::ListedCertificate]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListCertificatesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Certificates => ArrayRef[L<Paws::Transfer::ListedCertificate>]

Returns an array of the certificates that are specified in the
C<ListCertificates> call.


=head2 NextToken => Str

Returns the next token, which you can use to list the next certificate.


=head2 _request_id => Str


=cut

1;