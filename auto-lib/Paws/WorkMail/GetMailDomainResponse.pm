
package Paws::WorkMail::GetMailDomainResponse;
  use Moose;
  has DkimVerificationStatus => (is => 'ro', isa => 'Str');
  has IsDefault => (is => 'ro', isa => 'Bool');
  has IsTestDomain => (is => 'ro', isa => 'Bool');
  has OwnershipVerificationStatus => (is => 'ro', isa => 'Str');
  has Records => (is => 'ro', isa => 'ArrayRef[Paws::WorkMail::DnsRecord]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::GetMailDomainResponse

=head1 ATTRIBUTES


=head2 DkimVerificationStatus => Str

Indicates the status of a DKIM verification.

Valid values are: C<"PENDING">, C<"VERIFIED">, C<"FAILED">
=head2 IsDefault => Bool

Specifies whether the domain is the default domain for your
organization.


=head2 IsTestDomain => Bool

Specifies whether the domain is a test domain provided by WorkMail, or
a custom domain.


=head2 OwnershipVerificationStatus => Str

Indicates the status of the domain ownership verification.

Valid values are: C<"PENDING">, C<"VERIFIED">, C<"FAILED">
=head2 Records => ArrayRef[L<Paws::WorkMail::DnsRecord>]

A list of the DNS records that WorkMail recommends adding in your DNS
provider for the best user experience. The records configure your
domain with DMARC, SPF, DKIM, and direct incoming email traffic to SES.
See admin guide for more details.


=head2 _request_id => Str


=cut

1;