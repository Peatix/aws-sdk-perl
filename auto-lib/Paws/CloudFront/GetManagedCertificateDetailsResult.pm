
package Paws::CloudFront::GetManagedCertificateDetailsResult;
  use Moose;
  has ManagedCertificateDetails => (is => 'ro', isa => 'Paws::CloudFront::ManagedCertificateDetails', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetManagedCertificateDetailsResult

=head1 ATTRIBUTES


=head2 ManagedCertificateDetails => L<Paws::CloudFront::ManagedCertificateDetails>

Contains details about the CloudFront managed ACM certificate.




=cut

