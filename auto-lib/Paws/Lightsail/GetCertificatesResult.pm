
package Paws::Lightsail::GetCertificatesResult;
  use Moose;
  has Certificates => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::CertificateSummary]', traits => ['NameInRequest'], request_name => 'certificates' );
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetCertificatesResult

=head1 ATTRIBUTES


=head2 Certificates => ArrayRef[L<Paws::Lightsail::CertificateSummary>]

An object that describes certificates.


=head2 NextPageToken => Str

If C<NextPageToken> is returned there are more results available. The
value of C<NextPageToken> is a unique pagination token for each page.
Make the call again using the returned token to retrieve the next page.
Keep all other arguments unchanged.


=head2 _request_id => Str


=cut

1;