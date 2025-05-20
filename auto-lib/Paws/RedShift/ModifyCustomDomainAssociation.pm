
package Paws::RedShift::ModifyCustomDomainAssociation;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has CustomDomainCertificateArn => (is => 'ro', isa => 'Str', required => 1);
  has CustomDomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCustomDomainAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ModifyCustomDomainAssociationResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyCustomDomainAssociationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ModifyCustomDomainAssociation - Arguments for method ModifyCustomDomainAssociation on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyCustomDomainAssociation on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method ModifyCustomDomainAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyCustomDomainAssociation.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $ModifyCustomDomainAssociationResult =
      $redshift->ModifyCustomDomainAssociation(
      ClusterIdentifier          => 'MyString',
      CustomDomainCertificateArn => 'MyCustomDomainCertificateArnString',
      CustomDomainName           => 'MyCustomDomainNameString',

      );

    # Results:
    my $ClusterIdentifier =
      $ModifyCustomDomainAssociationResult->ClusterIdentifier;
    my $CustomDomainCertExpiryTime =
      $ModifyCustomDomainAssociationResult->CustomDomainCertExpiryTime;
    my $CustomDomainCertificateArn =
      $ModifyCustomDomainAssociationResult->CustomDomainCertificateArn;
    my $CustomDomainName =
      $ModifyCustomDomainAssociationResult->CustomDomainName;

    # Returns a L<Paws::RedShift::ModifyCustomDomainAssociationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/ModifyCustomDomainAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterIdentifier => Str

The identifier of the cluster to change a custom domain association
for.



=head2 B<REQUIRED> CustomDomainCertificateArn => Str

The certificate Amazon Resource Name (ARN) for the changed custom
domain association.



=head2 B<REQUIRED> CustomDomainName => Str

The custom domain name for a changed custom domain association.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyCustomDomainAssociation in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

