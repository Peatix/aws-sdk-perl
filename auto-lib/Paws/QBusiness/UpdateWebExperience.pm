
package Paws::QBusiness::UpdateWebExperience;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has AuthenticationConfiguration => (is => 'ro', isa => 'Paws::QBusiness::WebExperienceAuthConfiguration', traits => ['NameInRequest'], request_name => 'authenticationConfiguration');
  has BrowserExtensionConfiguration => (is => 'ro', isa => 'Paws::QBusiness::BrowserExtensionConfiguration', traits => ['NameInRequest'], request_name => 'browserExtensionConfiguration');
  has CustomizationConfiguration => (is => 'ro', isa => 'Paws::QBusiness::CustomizationConfiguration', traits => ['NameInRequest'], request_name => 'customizationConfiguration');
  has IdentityProviderConfiguration => (is => 'ro', isa => 'Paws::QBusiness::IdentityProviderConfiguration', traits => ['NameInRequest'], request_name => 'identityProviderConfiguration');
  has Origins => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'origins');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has SamplePromptsControlMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'samplePromptsControlMode');
  has Subtitle => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subtitle');
  has Title => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'title');
  has WebExperienceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'webExperienceId', required => 1);
  has WelcomeMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'welcomeMessage');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWebExperience');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/experiences/{webExperienceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::UpdateWebExperienceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::UpdateWebExperience - Arguments for method UpdateWebExperience on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWebExperience on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method UpdateWebExperience.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWebExperience.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $UpdateWebExperienceResponse = $qbusiness->UpdateWebExperience(
      ApplicationId               => 'MyApplicationId',
      WebExperienceId             => 'MyWebExperienceId',
      AuthenticationConfiguration => {
        SamlConfiguration => {
          MetadataXML        => 'MySamlMetadataXML',  # min: 1000, max: 10000000
          RoleArn            => 'MyRoleArn',          # max: 1284
          UserIdAttribute    => 'MySamlAttribute',    # min: 1, max: 256
          UserGroupAttribute => 'MySamlAttribute',    # min: 1, max: 256
        },    # OPTIONAL
      },    # OPTIONAL
      BrowserExtensionConfiguration => {
        EnabledBrowserExtensions => [
          'FIREFOX', ...    # values: FIREFOX, CHROME
        ],    # max: 2

      },    # OPTIONAL
      CustomizationConfiguration => {
        CustomCSSUrl => 'MyCustomCSSUrl',    # max: 1284; OPTIONAL
        FaviconUrl   => 'MyFaviconUrl',      # max: 1284; OPTIONAL
        FontUrl      => 'MyFontUrl',         # max: 1284; OPTIONAL
        LogoUrl      => 'MyLogoUrl',         # max: 1284; OPTIONAL
      },    # OPTIONAL
      IdentityProviderConfiguration => {
        OpenIDConnectConfiguration => {
          SecretsArn  => 'MySecretArn',    # max: 1284
          SecretsRole => 'MyRoleArn',      # max: 1284

        },    # OPTIONAL
        SamlConfiguration => {
          AuthenticationUrl => 'MySamlAuthenticationUrl',    # min: 1, max: 1284

        },    # OPTIONAL
      },    # OPTIONAL
      Origins => [
        'MyOrigin', ...    # min: 1, max: 256
      ],    # OPTIONAL
      RoleArn                  => 'MyRoleArn',                        # OPTIONAL
      SamplePromptsControlMode => 'ENABLED',                          # OPTIONAL
      Subtitle                 => 'MyWebExperienceSubtitle',          # OPTIONAL
      Title                    => 'MyWebExperienceTitle',             # OPTIONAL
      WelcomeMessage           => 'MyWebExperienceWelcomeMessage',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/UpdateWebExperience>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the Amazon Q Business application attached to the web
experience.



=head2 AuthenticationConfiguration => L<Paws::QBusiness::WebExperienceAuthConfiguration>

The authentication configuration of the Amazon Q Business web
experience.



=head2 BrowserExtensionConfiguration => L<Paws::QBusiness::BrowserExtensionConfiguration>

The browser extension configuration for an Amazon Q Business web
experience.

For Amazon Q Business application using external OIDC-compliant
identity providers (IdPs). The IdP administrator must add the browser
extension sign-in redirect URLs to the IdP application. For more
information, see Configure external OIDC identity provider for your
browser extensions.
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/browser-extensions.html).



=head2 CustomizationConfiguration => L<Paws::QBusiness::CustomizationConfiguration>

Updates the custom logo, favicon, font, and color used in the Amazon Q
web experience.



=head2 IdentityProviderConfiguration => L<Paws::QBusiness::IdentityProviderConfiguration>

Information about the identity provider (IdP) used to authenticate end
users of an Amazon Q Business web experience.



=head2 Origins => ArrayRef[Str|Undef]

Updates the website domain origins that are allowed to embed the Amazon
Q Business web experience. The I<domain origin> refers to the I<base
URL> for accessing a website including the protocol (C<http/https>),
the domain name, and the port number (if specified).

=over

=item *

Any values except C<null> submitted as part of this update will replace
all previous values.

=item *

You must only submit a I<base URL> and not a full path. For example,
C<https://docs.aws.amazon.com>.

=back




=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the role with permission to access
the Amazon Q Business web experience and required resources.



=head2 SamplePromptsControlMode => Str

Determines whether sample prompts are enabled in the web experience for
an end user.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 Subtitle => Str

The subtitle of the Amazon Q Business web experience.



=head2 Title => Str

The title of the Amazon Q Business web experience.



=head2 B<REQUIRED> WebExperienceId => Str

The identifier of the Amazon Q Business web experience.



=head2 WelcomeMessage => Str

A customized welcome message for an end user in an Amazon Q Business
web experience.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWebExperience in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

