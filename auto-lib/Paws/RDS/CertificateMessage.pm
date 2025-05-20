
package Paws::RDS::CertificateMessage;
  use Moose;
  has Certificates => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Certificate]', request_name => 'Certificate', traits => ['NameInRequest',]);
  has DefaultCertificateForNewLaunches => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CertificateMessage

=head1 ATTRIBUTES


=head2 Certificates => ArrayRef[L<Paws::RDS::Certificate>]

The list of C<Certificate> objects for the Amazon Web Services account.


=head2 DefaultCertificateForNewLaunches => Str

The default root CA for new databases created by your Amazon Web
Services account. This is either the root CA override set on your
Amazon Web Services account or the system default CA for the Region if
no override exists. To override the default CA, use the
C<ModifyCertificates> operation.


=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeCertificates> request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by C<MaxRecords> .


=head2 _request_id => Str


=cut

