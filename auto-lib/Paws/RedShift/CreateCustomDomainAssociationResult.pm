
package Paws::RedShift::CreateCustomDomainAssociationResult;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has CustomDomainCertExpiryTime => (is => 'ro', isa => 'Str');
  has CustomDomainCertificateArn => (is => 'ro', isa => 'Str');
  has CustomDomainName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateCustomDomainAssociationResult

=head1 ATTRIBUTES


=head2 ClusterIdentifier => Str

The identifier of the cluster that the custom domain is associated
with.


=head2 CustomDomainCertExpiryTime => Str

The expiration time for the certificate for the custom domain.


=head2 CustomDomainCertificateArn => Str

The Amazon Resource Name (ARN) for the certificate associated with the
custom domain name.


=head2 CustomDomainName => Str

The custom domain name for the association result.


=head2 _request_id => Str


=cut

