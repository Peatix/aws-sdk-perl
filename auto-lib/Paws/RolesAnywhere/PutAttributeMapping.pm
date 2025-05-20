
package Paws::RolesAnywhere::PutAttributeMapping;
  use Moose;
  has CertificateField => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateField', required => 1);
  has MappingRules => (is => 'ro', isa => 'ArrayRef[Paws::RolesAnywhere::MappingRule]', traits => ['NameInRequest'], request_name => 'mappingRules', required => 1);
  has ProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'profileId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAttributeMapping');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profiles/{profileId}/mappings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RolesAnywhere::PutAttributeMappingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RolesAnywhere::PutAttributeMapping - Arguments for method PutAttributeMapping on L<Paws::RolesAnywhere>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAttributeMapping on the
L<IAM Roles Anywhere|Paws::RolesAnywhere> service. Use the attributes of this class
as arguments to method PutAttributeMapping.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAttributeMapping.

=head1 SYNOPSIS

    my $rolesanywhere = Paws->service('RolesAnywhere');
    my $PutAttributeMappingResponse = $rolesanywhere->PutAttributeMapping(
      CertificateField => 'x509Subject',
      MappingRules     => [
        {
          Specifier => 'MyMappingRuleSpecifierString',    # max: 60

        },
        ...
      ],
      ProfileId => 'MyUuid',

    );

    # Results:
    my $Profile = $PutAttributeMappingResponse->Profile;

    # Returns a L<Paws::RolesAnywhere::PutAttributeMappingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rolesanywhere/PutAttributeMapping>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateField => Str

Fields (x509Subject, x509Issuer and x509SAN) within X.509 certificates.

Valid values are: C<"x509Subject">, C<"x509Issuer">, C<"x509SAN">

=head2 B<REQUIRED> MappingRules => ArrayRef[L<Paws::RolesAnywhere::MappingRule>]

A list of mapping entries for every supported specifier or sub-field.



=head2 B<REQUIRED> ProfileId => Str

The unique identifier of the profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAttributeMapping in L<Paws::RolesAnywhere>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

