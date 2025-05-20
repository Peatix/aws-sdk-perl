
package Paws::WorkSpacesWeb::ListTrustStoreCertificatesResponse;
  use Moose;
  has CertificateList => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpacesWeb::CertificateSummary]', traits => ['NameInRequest'], request_name => 'certificateList');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TrustStoreArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trustStoreArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::ListTrustStoreCertificatesResponse

=head1 ATTRIBUTES


=head2 CertificateList => ArrayRef[L<Paws::WorkSpacesWeb::CertificateSummary>]

The certificate list.


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.E<gt>


=head2 B<REQUIRED> TrustStoreArn => Str

The ARN of the trust store.


=head2 _request_id => Str


=cut

