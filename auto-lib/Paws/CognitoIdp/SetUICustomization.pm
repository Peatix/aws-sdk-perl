
package Paws::CognitoIdp::SetUICustomization;
  use Moose;
  has ClientId => (is => 'ro', isa => 'Str');
  has CSS => (is => 'ro', isa => 'Str');
  has ImageFile => (is => 'ro', isa => 'Str');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetUICustomization');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::SetUICustomizationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::SetUICustomization - Arguments for method SetUICustomization on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetUICustomization on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method SetUICustomization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetUICustomization.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $SetUICustomizationResponse = $cognito -idp->SetUICustomization(
      UserPoolId => 'MyUserPoolIdType',
      CSS        => 'MyCSSType',            # OPTIONAL
      ClientId   => 'MyClientIdType',       # OPTIONAL
      ImageFile  => 'BlobImageFileType',    # OPTIONAL
    );

    # Results:
    my $UICustomization = $SetUICustomizationResponse->UICustomization;

    # Returns a L<Paws::CognitoIdp::SetUICustomizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 ClientId => Str

The ID of the app client that you want to customize. To apply a default
style to all app clients not configured with client-level branding, set
this parameter value to C<ALL>.



=head2 CSS => Str

A plaintext CSS file that contains the custom fields that you want to
apply to your user pool or app client. To download a template, go to
the Amazon Cognito console. Navigate to your user pool I<App clients>
tab, select I<Login pages>, edit I<Hosted UI (classic) style>, and
select the link to C<CSS template.css>.



=head2 ImageFile => Str

The image that you want to set as your login in the classic hosted UI,
as a Base64-formatted binary object.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool where you want to apply branding to the classic
hosted UI.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetUICustomization in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

