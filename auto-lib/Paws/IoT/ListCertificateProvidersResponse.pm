
package Paws::IoT::ListCertificateProvidersResponse;
  use Moose;
  has CertificateProviders => (is => 'ro', isa => 'ArrayRef[Paws::IoT::CertificateProviderSummary]', traits => ['NameInRequest'], request_name => 'certificateProviders');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListCertificateProvidersResponse

=head1 ATTRIBUTES


=head2 CertificateProviders => ArrayRef[L<Paws::IoT::CertificateProviderSummary>]

The list of certificate providers in your Amazon Web Services account.


=head2 NextToken => Str

The token for the next set of results, or C<null> if there are no more
results.


=head2 _request_id => Str


=cut

