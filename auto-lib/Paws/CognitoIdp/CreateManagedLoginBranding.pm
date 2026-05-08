
package Paws::CognitoIdp::CreateManagedLoginBranding;
  use Moose;
  has Assets => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::AssetType]');
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has Settings => (is => 'ro', isa => 'Paws::CognitoIdp::Document');
  has UseCognitoProvidedValues => (is => 'ro', isa => 'Bool');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateManagedLoginBranding');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::CreateManagedLoginBrandingResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateManagedLoginBranding - Arguments for method CreateManagedLoginBranding on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateManagedLoginBranding on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method CreateManagedLoginBranding.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateManagedLoginBranding.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $CreateManagedLoginBrandingResponse =
      $cognito -idp->CreateManagedLoginBranding(
      ClientId   => 'MyClientIdType',
      UserPoolId => 'MyUserPoolIdType',
      Assets     => [
        {
          Category => 'FAVICON_ICO'
          , # values: FAVICON_ICO, FAVICON_SVG, EMAIL_GRAPHIC, SMS_GRAPHIC, AUTH_APP_GRAPHIC, PASSWORD_GRAPHIC, PASSKEY_GRAPHIC, PAGE_HEADER_LOGO, PAGE_HEADER_BACKGROUND, PAGE_FOOTER_LOGO, PAGE_FOOTER_BACKGROUND, PAGE_BACKGROUND, FORM_BACKGROUND, FORM_LOGO, IDP_BUTTON_ICON
          ColorMode => 'LIGHT',              # values: LIGHT, DARK, DYNAMIC
          Extension => 'ICO',                # values: ICO, JPEG, PNG, SVG, WEBP
          Bytes     => 'BlobAssetBytesType', # max: 1000000; OPTIONAL
          ResourceId => 'MyResourceIdType',    # min: 1, max: 40; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Settings => {

      },    # OPTIONAL
      UseCognitoProvidedValues => 1,    # OPTIONAL
      );

    # Results:
    my $ManagedLoginBranding =
      $CreateManagedLoginBrandingResponse->ManagedLoginBranding;

    # Returns a L<Paws::CognitoIdp::CreateManagedLoginBrandingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 Assets => ArrayRef[L<Paws::CognitoIdp::AssetType>]

An array of image files that you want to apply to functions like
backgrounds, logos, and icons. Each object must also indicate whether
it is for dark mode, light mode, or browser-adaptive mode.



=head2 B<REQUIRED> ClientId => Str

The app client that you want to create the branding style for. Each
style is linked to an app client until you delete it.



=head2 Settings => L<Paws::CognitoIdp::Document>

A JSON file, encoded as a C<Document> type, with the the settings that
you want to apply to your style.



=head2 UseCognitoProvidedValues => Bool

When true, applies the default branding style options. These default
options are managed by Amazon Cognito. You can modify them later in the
branding designer.

When you specify C<true> for this option, you must also omit values for
C<Settings> and C<Assets> in the request.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool where you want to create a new branding style.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateManagedLoginBranding in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

