
package Paws::RedShift::CreateCustomDomainAssociation;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has CustomDomainCertificateArn => (is => 'ro', isa => 'Str', required => 1);
  has CustomDomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCustomDomainAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::CreateCustomDomainAssociationResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCustomDomainAssociationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateCustomDomainAssociation - Arguments for method CreateCustomDomainAssociation on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCustomDomainAssociation on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method CreateCustomDomainAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCustomDomainAssociation.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $CreateCustomDomainAssociationResult =
      $redshift->CreateCustomDomainAssociation(
      ClusterIdentifier          => 'MyString',
      CustomDomainCertificateArn => 'MyCustomDomainCertificateArnString',
      CustomDomainName           => 'MyCustomDomainNameString',

      );

    # Results:
    my $ClusterIdentifier =
      $CreateCustomDomainAssociationResult->ClusterIdentifier;
    my $CustomDomainCertExpiryTime =
      $CreateCustomDomainAssociationResult->CustomDomainCertExpiryTime;
    my $CustomDomainCertificateArn =
      $CreateCustomDomainAssociationResult->CustomDomainCertificateArn;
    my $CustomDomainName =
      $CreateCustomDomainAssociationResult->CustomDomainName;

    # Returns a L<Paws::RedShift::CreateCustomDomainAssociationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/CreateCustomDomainAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterIdentifier => Str

The cluster identifier that the custom domain is associated with.



=head2 B<REQUIRED> CustomDomainCertificateArn => Str

The certificate Amazon Resource Name (ARN) for the custom domain name
association.



=head2 B<REQUIRED> CustomDomainName => Str

The custom domain name for a custom domain association.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCustomDomainAssociation in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

