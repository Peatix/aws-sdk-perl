
package Paws::WorkSpaces::ModifyCertificateBasedAuthProperties;
  use Moose;
  has CertificateBasedAuthProperties => (is => 'ro', isa => 'Paws::WorkSpaces::CertificateBasedAuthProperties');
  has PropertiesToDelete => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCertificateBasedAuthProperties');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::ModifyCertificateBasedAuthPropertiesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::ModifyCertificateBasedAuthProperties - Arguments for method ModifyCertificateBasedAuthProperties on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyCertificateBasedAuthProperties on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method ModifyCertificateBasedAuthProperties.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyCertificateBasedAuthProperties.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $ModifyCertificateBasedAuthPropertiesResult =
      $workspaces->ModifyCertificateBasedAuthProperties(
      ResourceId                     => 'MyDirectoryId',
      CertificateBasedAuthProperties => {
        CertificateAuthorityArn =>
          'MyCertificateAuthorityArn',    # min: 5, max: 200; OPTIONAL
        Status => 'DISABLED',             # values: DISABLED, ENABLED; OPTIONAL
      },    # OPTIONAL
      PropertiesToDelete => [
        'CERTIFICATE_BASED_AUTH_PROPERTIES_CERTIFICATE_AUTHORITY_ARN',
        ... # values: CERTIFICATE_BASED_AUTH_PROPERTIES_CERTIFICATE_AUTHORITY_ARN
      ],    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/ModifyCertificateBasedAuthProperties>

=head1 ATTRIBUTES


=head2 CertificateBasedAuthProperties => L<Paws::WorkSpaces::CertificateBasedAuthProperties>

The properties of the certificate-based authentication.



=head2 PropertiesToDelete => ArrayRef[Str|Undef]

The properties of the certificate-based authentication you want to
delete.



=head2 B<REQUIRED> ResourceId => Str

The resource identifiers, in the form of directory IDs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyCertificateBasedAuthProperties in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

