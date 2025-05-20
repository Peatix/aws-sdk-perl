
package Paws::WorkSpaces::ModifySamlProperties;
  use Moose;
  has PropertiesToDelete => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has SamlProperties => (is => 'ro', isa => 'Paws::WorkSpaces::SamlProperties');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifySamlProperties');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::ModifySamlPropertiesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::ModifySamlProperties - Arguments for method ModifySamlProperties on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifySamlProperties on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method ModifySamlProperties.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifySamlProperties.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $ModifySamlPropertiesResult = $workspaces->ModifySamlProperties(
      ResourceId         => 'MyDirectoryId',
      PropertiesToDelete => [
        'SAML_PROPERTIES_USER_ACCESS_URL',
        ... # values: SAML_PROPERTIES_USER_ACCESS_URL, SAML_PROPERTIES_RELAY_STATE_PARAMETER_NAME
      ],    # OPTIONAL
      SamlProperties => {
        RelayStateParameterName => 'MyNonEmptyString',    # min: 1; OPTIONAL
        Status                  => 'DISABLED'
        , # values: DISABLED, ENABLED, ENABLED_WITH_DIRECTORY_LOGIN_FALLBACK; OPTIONAL
        UserAccessUrl => 'MySamlUserAccessUrl',    # min: 8, max: 200; OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/ModifySamlProperties>

=head1 ATTRIBUTES


=head2 PropertiesToDelete => ArrayRef[Str|Undef]

The SAML properties to delete as part of your request.

Specify one of the following options:

=over

=item *

C<SAML_PROPERTIES_USER_ACCESS_URL> to delete the user access URL.

=item *

C<SAML_PROPERTIES_RELAY_STATE_PARAMETER_NAME> to delete the relay state
parameter name.

=back




=head2 B<REQUIRED> ResourceId => Str

The directory identifier for which you want to configure SAML
properties.



=head2 SamlProperties => L<Paws::WorkSpaces::SamlProperties>

The properties for configuring SAML 2.0 authentication.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifySamlProperties in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

