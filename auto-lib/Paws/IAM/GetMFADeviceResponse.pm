
package Paws::IAM::GetMFADeviceResponse;
  use Moose;
  has Certifications => (is => 'ro', isa => 'Paws::IAM::CertificationMapType');
  has EnableDate => (is => 'ro', isa => 'Str');
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetMFADeviceResponse

=head1 ATTRIBUTES


=head2 Certifications => L<Paws::IAM::CertificationMapType>

The certifications of a specified user's MFA device. We currently
provide FIPS-140-2, FIPS-140-3, and FIDO certification levels obtained
from FIDO Alliance Metadata Service (MDS)
(https://fidoalliance.org/metadata/).


=head2 EnableDate => Str

The date that a specified user's MFA device was first enabled.


=head2 B<REQUIRED> SerialNumber => Str

Serial number that uniquely identifies the MFA device. For this API, we
only accept FIDO security key ARNs
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html).


=head2 UserName => Str

The friendly name identifying the user.


=head2 _request_id => Str


=cut

