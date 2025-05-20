
package Paws::Transfer::UpdateWebApp;
  use Moose;
  has AccessEndpoint => (is => 'ro', isa => 'Str');
  has IdentityProviderDetails => (is => 'ro', isa => 'Paws::Transfer::UpdateWebAppIdentityProviderDetails');
  has WebAppId => (is => 'ro', isa => 'Str', required => 1);
  has WebAppUnits => (is => 'ro', isa => 'Paws::Transfer::WebAppUnits');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWebApp');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::UpdateWebAppResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::UpdateWebApp - Arguments for method UpdateWebApp on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWebApp on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method UpdateWebApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWebApp.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $UpdateWebAppResponse = $transfer->UpdateWebApp(
      WebAppId                => 'MyWebAppId',
      AccessEndpoint          => 'MyWebAppAccessEndpoint',    # OPTIONAL
      IdentityProviderDetails => {
        IdentityCenterConfig => {
          Role => 'MyRole',    # min: 20, max: 2048; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      WebAppUnits => {
        Provisioned => 1,    # min: 1; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $WebAppId = $UpdateWebAppResponse->WebAppId;

    # Returns a L<Paws::Transfer::UpdateWebAppResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/UpdateWebApp>

=head1 ATTRIBUTES


=head2 AccessEndpoint => Str

The C<AccessEndpoint> is the URL that you provide to your users for
them to interact with the Transfer Family web app. You can specify a
custom URL or use the default value.



=head2 IdentityProviderDetails => L<Paws::Transfer::UpdateWebAppIdentityProviderDetails>

Provide updated identity provider values in a
C<WebAppIdentityProviderDetails> object.



=head2 B<REQUIRED> WebAppId => Str

Provide the identifier of the web app that you are updating.



=head2 WebAppUnits => L<Paws::Transfer::WebAppUnits>

A union that contains the value for number of concurrent connections or
the user sessions on your web app.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWebApp in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

