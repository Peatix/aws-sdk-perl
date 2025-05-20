
package Paws::RedshiftServerless::UpdateCustomDomainAssociationResponse;
  use Moose;
  has CustomDomainCertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customDomainCertificateArn' );
  has CustomDomainCertificateExpiryTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customDomainCertificateExpiryTime' );
  has CustomDomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customDomainName' );
  has WorkgroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workgroupName' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::UpdateCustomDomainAssociationResponse

=head1 ATTRIBUTES


=head2 CustomDomainCertificateArn => Str

The custom domain nameE<rsquo>s certificate Amazon resource name (ARN).


=head2 CustomDomainCertificateExpiryTime => Str

The expiration time for the certificate.


=head2 CustomDomainName => Str

The custom domain name associated with the workgroup.


=head2 WorkgroupName => Str

The name of the workgroup associated with the database.


=head2 _request_id => Str


=cut

1;