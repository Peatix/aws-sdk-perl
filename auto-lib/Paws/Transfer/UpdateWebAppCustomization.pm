
package Paws::Transfer::UpdateWebAppCustomization;
  use Moose;
  has FaviconFile => (is => 'ro', isa => 'Str');
  has LogoFile => (is => 'ro', isa => 'Str');
  has Title => (is => 'ro', isa => 'Str');
  has WebAppId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWebAppCustomization');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::UpdateWebAppCustomizationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::UpdateWebAppCustomization - Arguments for method UpdateWebAppCustomization on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWebAppCustomization on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method UpdateWebAppCustomization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWebAppCustomization.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $UpdateWebAppCustomizationResponse =
      $transfer->UpdateWebAppCustomization(
      WebAppId    => 'MyWebAppId',
      FaviconFile => 'BlobWebAppFaviconFile',    # OPTIONAL
      LogoFile    => 'BlobWebAppLogoFile',       # OPTIONAL
      Title       => 'MyWebAppTitle',            # OPTIONAL
      );

    # Results:
    my $WebAppId = $UpdateWebAppCustomizationResponse->WebAppId;

    # Returns a L<Paws::Transfer::UpdateWebAppCustomizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/UpdateWebAppCustomization>

=head1 ATTRIBUTES


=head2 FaviconFile => Str

Specify an icon file data string (in base64 encoding).



=head2 LogoFile => Str

Specify logo file data string (in base64 encoding).



=head2 Title => Str

Provide an updated title.



=head2 B<REQUIRED> WebAppId => Str

Provide the identifier of the web app that you are updating.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWebAppCustomization in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

