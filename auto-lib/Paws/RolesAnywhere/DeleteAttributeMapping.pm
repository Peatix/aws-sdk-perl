
package Paws::RolesAnywhere::DeleteAttributeMapping;
  use Moose;
  has CertificateField => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'certificateField', required => 1);
  has ProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'profileId', required => 1);
  has Specifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'specifiers');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAttributeMapping');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profiles/{profileId}/mappings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RolesAnywhere::DeleteAttributeMappingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RolesAnywhere::DeleteAttributeMapping - Arguments for method DeleteAttributeMapping on L<Paws::RolesAnywhere>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAttributeMapping on the
L<IAM Roles Anywhere|Paws::RolesAnywhere> service. Use the attributes of this class
as arguments to method DeleteAttributeMapping.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAttributeMapping.

=head1 SYNOPSIS

    my $rolesanywhere = Paws->service('RolesAnywhere');
    my $DeleteAttributeMappingResponse = $rolesanywhere->DeleteAttributeMapping(
      CertificateField => 'x509Subject',
      ProfileId        => 'MyUuid',
      Specifiers       => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $Profile = $DeleteAttributeMappingResponse->Profile;

    # Returns a L<Paws::RolesAnywhere::DeleteAttributeMappingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rolesanywhere/DeleteAttributeMapping>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateField => Str

Fields (x509Subject, x509Issuer and x509SAN) within X.509 certificates.

Valid values are: C<"x509Subject">, C<"x509Issuer">, C<"x509SAN">

=head2 B<REQUIRED> ProfileId => Str

The unique identifier of the profile.



=head2 Specifiers => ArrayRef[Str|Undef]

A list of specifiers of a certificate field; for example, CN, OU, UID
from a Subject.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAttributeMapping in L<Paws::RolesAnywhere>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

