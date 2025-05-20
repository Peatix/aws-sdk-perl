
package Paws::QBusiness::GetWebExperienceResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationId');
  has AuthenticationConfiguration => (is => 'ro', isa => 'Paws::QBusiness::WebExperienceAuthConfiguration', traits => ['NameInRequest'], request_name => 'authenticationConfiguration');
  has BrowserExtensionConfiguration => (is => 'ro', isa => 'Paws::QBusiness::BrowserExtensionConfiguration', traits => ['NameInRequest'], request_name => 'browserExtensionConfiguration');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CustomizationConfiguration => (is => 'ro', isa => 'Paws::QBusiness::CustomizationConfiguration', traits => ['NameInRequest'], request_name => 'customizationConfiguration');
  has DefaultEndpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultEndpoint');
  has Error => (is => 'ro', isa => 'Paws::QBusiness::ErrorDetail', traits => ['NameInRequest'], request_name => 'error');
  has IdentityProviderConfiguration => (is => 'ro', isa => 'Paws::QBusiness::IdentityProviderConfiguration', traits => ['NameInRequest'], request_name => 'identityProviderConfiguration');
  has Origins => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'origins');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has SamplePromptsControlMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'samplePromptsControlMode');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Subtitle => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subtitle');
  has Title => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'title');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has WebExperienceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'webExperienceArn');
  has WebExperienceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'webExperienceId');
  has WelcomeMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'welcomeMessage');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::GetWebExperienceResponse

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The identifier of the Amazon Q Business application linked to the web
experience.


=head2 AuthenticationConfiguration => L<Paws::QBusiness::WebExperienceAuthConfiguration>

The authentication configuration information for your Amazon Q Business
web experience.


=head2 BrowserExtensionConfiguration => L<Paws::QBusiness::BrowserExtensionConfiguration>

The browser extension configuration for an Amazon Q Business web
experience.


=head2 CreatedAt => Str

The Unix timestamp when the Amazon Q Business web experience was last
created.


=head2 CustomizationConfiguration => L<Paws::QBusiness::CustomizationConfiguration>

Gets the custom logo, favicon, font, and color used in the Amazon Q web
experience.


=head2 DefaultEndpoint => Str

The endpoint of your Amazon Q Business web experience.


=head2 Error => L<Paws::QBusiness::ErrorDetail>

When the C<Status> field value is C<FAILED>, the C<ErrorMessage> field
contains a description of the error that caused the data source
connector to fail.


=head2 IdentityProviderConfiguration => L<Paws::QBusiness::IdentityProviderConfiguration>

Information about the identity provider (IdP) used to authenticate end
users of an Amazon Q Business web experience.


=head2 Origins => ArrayRef[Str|Undef]

Gets the website domain origins that are allowed to embed the Amazon Q
Business web experience. The I<domain origin> refers to the base URL
for accessing a website including the protocol (C<http/https>), the
domain name, and the port number (if specified).


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the service role attached to your web
experience.


=head2 SamplePromptsControlMode => Str

Determines whether sample prompts are enabled in the web experience for
an end user.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 Status => Str

The current status of the Amazon Q Business web experience. When the
C<Status> field value is C<FAILED>, the C<ErrorMessage> field contains
a description of the error that caused the data source connector to
fail.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"DELETING">, C<"FAILED">, C<"PENDING_AUTH_CONFIG">
=head2 Subtitle => Str

The subtitle for your Amazon Q Business web experience.


=head2 Title => Str

The title for your Amazon Q Business web experience.


=head2 UpdatedAt => Str

The Unix timestamp when the Amazon Q Business web experience was last
updated.


=head2 WebExperienceArn => Str

The Amazon Resource Name (ARN) of the role with the permission to
access the Amazon Q Business web experience and required resources.


=head2 WebExperienceId => Str

The identifier of the Amazon Q Business web experience.


=head2 WelcomeMessage => Str

The customized welcome message for end users of an Amazon Q Business
web experience.


=head2 _request_id => Str


=cut

