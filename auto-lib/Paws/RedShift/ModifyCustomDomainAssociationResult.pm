
package Paws::RedShift::ModifyCustomDomainAssociationResult;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has CustomDomainCertExpiryTime => (is => 'ro', isa => 'Str');
  has CustomDomainCertificateArn => (is => 'ro', isa => 'Str');
  has CustomDomainName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ModifyCustomDomainAssociationResult

=head1 ATTRIBUTES


=head2 ClusterIdentifier => Str

The identifier of the cluster associated with the result for the
changed custom domain association.


=head2 CustomDomainCertExpiryTime => Str

The certificate expiration time associated with the result for the
changed custom domain association.


=head2 CustomDomainCertificateArn => Str

The certificate Amazon Resource Name (ARN) associated with the result
for the changed custom domain association.


=head2 CustomDomainName => Str

The custom domain name associated with the result for the changed
custom domain association.


=head2 _request_id => Str


=cut

