
package Paws::QBusiness::CreateWebExperience;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has BrowserExtensionConfiguration => (is => 'ro', isa => 'Paws::QBusiness::BrowserExtensionConfiguration', traits => ['NameInRequest'], request_name => 'browserExtensionConfiguration');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has CustomizationConfiguration => (is => 'ro', isa => 'Paws::QBusiness::CustomizationConfiguration', traits => ['NameInRequest'], request_name => 'customizationConfiguration');
  has IdentityProviderConfiguration => (is => 'ro', isa => 'Paws::QBusiness::IdentityProviderConfiguration', traits => ['NameInRequest'], request_name => 'identityProviderConfiguration');
  has Origins => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'origins');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has SamplePromptsControlMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'samplePromptsControlMode');
  has Subtitle => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subtitle');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has Title => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'title');
  has WelcomeMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'welcomeMessage');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWebExperience');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/experiences');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::CreateWebExperienceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::CreateWebExperience - Arguments for method CreateWebExperience on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWebExperience on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method CreateWebExperience.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWebExperience.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $CreateWebExperienceResponse = $qbusiness->CreateWebExperience(
      ApplicationId                 => 'MyApplicationId',
      BrowserExtensionConfiguration => {
        EnabledBrowserExtensions => [
          'FIREFOX', ...    # values: FIREFOX, CHROME
        ],    # max: 2

      },    # OPTIONAL
      ClientToken                => 'MyClientToken',    # OPTIONAL
      CustomizationConfiguration => {
        CustomCSSUrl => 'MyCustomCSSUrl',               # max: 1284; OPTIONAL
        FaviconUrl   => 'MyFaviconUrl',                 # max: 1284; OPTIONAL
        FontUrl      => 'MyFontUrl',                    # max: 1284; OPTIONAL
        LogoUrl      => 'MyLogoUrl',                    # max: 1284; OPTIONAL
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
      RoleArn                  => 'MyRoleArn',                  # OPTIONAL
      SamplePromptsControlMode => 'ENABLED',                    # OPTIONAL
      Subtitle                 => 'MyWebExperienceSubtitle',    # OPTIONAL
      Tags                     => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      Title          => 'MyWebExperienceTitle',             # OPTIONAL
      WelcomeMessage => 'MyWebExperienceWelcomeMessage',    # OPTIONAL
    );

    # Results:
    my $WebExperienceArn = $CreateWebExperienceResponse->WebExperienceArn;
    my $WebExperienceId  = $CreateWebExperienceResponse->WebExperienceId;

    # Returns a L<Paws::QBusiness::CreateWebExperienceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/CreateWebExperience>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the Amazon Q Business web experience.



=head2 BrowserExtensionConfiguration => L<Paws::QBusiness::BrowserExtensionConfiguration>

The browser extension configuration for an Amazon Q Business web
experience.

For Amazon Q Business application using external OIDC-compliant
identity providers (IdPs). The IdP administrator must add the browser
extension sign-in redirect URLs to the IdP application. For more
information, see Configure external OIDC identity provider for your
browser extensions.
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/browser-extensions.html).



=head2 ClientToken => Str

A token you provide to identify a request to create an Amazon Q
Business web experience.



=head2 CustomizationConfiguration => L<Paws::QBusiness::CustomizationConfiguration>

Sets the custom logo, favicon, font, and color used in the Amazon Q web
experience.



=head2 IdentityProviderConfiguration => L<Paws::QBusiness::IdentityProviderConfiguration>

Information about the identity provider (IdP) used to authenticate end
users of an Amazon Q Business web experience.



=head2 Origins => ArrayRef[Str|Undef]

Sets the website domain origins that are allowed to embed the Amazon Q
Business web experience. The I<domain origin> refers to the base URL
for accessing a website including the protocol (C<http/https>), the
domain name, and the port number (if specified).

You must only submit a I<base URL> and not a full path. For example,
C<https://docs.aws.amazon.com>.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the service role attached to your web
experience.

You must provide this value if you're using IAM Identity Center to
manage end user access to your application. If you're using legacy
identity management to manage user access, you don't need to provide
this value.



=head2 SamplePromptsControlMode => Str

Determines whether sample prompts are enabled in the web experience for
an end user.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 Subtitle => Str

A subtitle to personalize your Amazon Q Business web experience.



=head2 Tags => ArrayRef[L<Paws::QBusiness::Tag>]

A list of key-value pairs that identify or categorize your Amazon Q
Business web experience. You can also use tags to help control access
to the web experience. Tag keys and values can consist of Unicode
letters, digits, white space, and any of the following symbols: _ . : /
= + - @.



=head2 Title => Str

The title for your Amazon Q Business web experience.



=head2 WelcomeMessage => Str

The customized welcome message for end users of an Amazon Q Business
web experience.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWebExperience in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

