
package Paws::AppStream::CreateThemeForStack;
  use Moose;
  has FaviconS3Location => (is => 'ro', isa => 'Paws::AppStream::S3Location', required => 1);
  has FooterLinks => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::ThemeFooterLink]');
  has OrganizationLogoS3Location => (is => 'ro', isa => 'Paws::AppStream::S3Location', required => 1);
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has ThemeStyling => (is => 'ro', isa => 'Str', required => 1);
  has TitleText => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateThemeForStack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::CreateThemeForStackResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateThemeForStack - Arguments for method CreateThemeForStack on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateThemeForStack on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method CreateThemeForStack.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateThemeForStack.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $CreateThemeForStackResult = $appstream2->CreateThemeForStack(
      FaviconS3Location => {
        S3Bucket => 'MyS3Bucket',    # min: 3, max: 63
        S3Key    => 'MyS3Key',       # min: 1, max: 1024; OPTIONAL
      },
      OrganizationLogoS3Location => {
        S3Bucket => 'MyS3Bucket',    # min: 3, max: 63
        S3Key    => 'MyS3Key',       # min: 1, max: 1024; OPTIONAL
      },
      StackName    => 'MyName',
      ThemeStyling => 'LIGHT_BLUE',
      TitleText    => 'MyThemeTitleText',
      FooterLinks  => [
        {
          DisplayName =>
            'MyThemeFooterLinkDisplayName',    # min: 1, max: 300; OPTIONAL
          FooterLinkURL => 'MyThemeFooterLinkURL', # min: 1, max: 1000; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Theme = $CreateThemeForStackResult->Theme;

    # Returns a L<Paws::AppStream::CreateThemeForStackResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/CreateThemeForStack>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FaviconS3Location => L<Paws::AppStream::S3Location>

The S3 location of the favicon. The favicon enables users to recognize
their application streaming site in a browser full of tabs or
bookmarks. It is displayed at the top of the browser tab for the
application streaming site during users' streaming sessions.



=head2 FooterLinks => ArrayRef[L<Paws::AppStream::ThemeFooterLink>]

The links that are displayed in the footer of the streaming application
catalog page. These links are helpful resources for users, such as the
organization's IT support and product marketing sites.



=head2 B<REQUIRED> OrganizationLogoS3Location => L<Paws::AppStream::S3Location>

The organization logo that appears on the streaming application catalog
page.



=head2 B<REQUIRED> StackName => Str

The name of the stack for the theme.



=head2 B<REQUIRED> ThemeStyling => Str

The color theme that is applied to website links, text, and buttons.
These colors are also applied as accents in the background for the
streaming application catalog page.

Valid values are: C<"LIGHT_BLUE">, C<"BLUE">, C<"PINK">, C<"RED">

=head2 B<REQUIRED> TitleText => Str

The title that is displayed at the top of the browser tab during users'
application streaming sessions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateThemeForStack in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

