
package Paws::Transfer::CreateWebApp;
  use Moose;
  has AccessEndpoint => (is => 'ro', isa => 'Str');
  has IdentityProviderDetails => (is => 'ro', isa => 'Paws::Transfer::WebAppIdentityProviderDetails', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::Tag]');
  has WebAppEndpointPolicy => (is => 'ro', isa => 'Str');
  has WebAppUnits => (is => 'ro', isa => 'Paws::Transfer::WebAppUnits');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWebApp');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::CreateWebAppResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::CreateWebApp - Arguments for method CreateWebApp on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWebApp on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method CreateWebApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWebApp.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $CreateWebAppResponse = $transfer->CreateWebApp(
      IdentityProviderDetails => {
        IdentityCenterConfig => {
          InstanceArn =>
            'MyIdentityCenterInstanceArn',    # min: 10, max: 1224; OPTIONAL
          Role => 'MyRole',                   # min: 20, max: 2048; OPTIONAL
        },    # OPTIONAL
      },
      AccessEndpoint => 'MyWebAppAccessEndpoint',    # OPTIONAL
      Tags           => [
        {
          Key   => 'MyTagKey',      # max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      WebAppEndpointPolicy => 'FIPS',    # OPTIONAL
      WebAppUnits          => {
        Provisioned => 1,                # min: 1; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $WebAppId = $CreateWebAppResponse->WebAppId;

    # Returns a L<Paws::Transfer::CreateWebAppResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/CreateWebApp>

=head1 ATTRIBUTES


=head2 AccessEndpoint => Str

The C<AccessEndpoint> is the URL that you provide to your users for
them to interact with the Transfer Family web app. You can specify a
custom URL or use the default value.

Before you enter a custom URL for this parameter, follow the steps
described in Update your access endpoint with a custom URL
(https://docs.aws.amazon.com/transfer/latest/userguide/webapp-customize.html).



=head2 B<REQUIRED> IdentityProviderDetails => L<Paws::Transfer::WebAppIdentityProviderDetails>

You can provide a structure that contains the details for the identity
provider to use with your web app.

For more details about this parameter, see Configure your identity
provider for Transfer Family web apps
(https://docs.aws.amazon.com/transfer/latest/userguide/webapp-identity-center.html).



=head2 Tags => ArrayRef[L<Paws::Transfer::Tag>]

Key-value pairs that can be used to group and search for web apps.



=head2 WebAppEndpointPolicy => Str

Setting for the type of endpoint policy for the web app. The default
value is C<STANDARD>.

If you are creating the web app in an Amazon Web Services GovCloud (US)
Region, you can set this parameter to C<FIPS>.

Valid values are: C<"FIPS">, C<"STANDARD">

=head2 WebAppUnits => L<Paws::Transfer::WebAppUnits>

A union that contains the value for number of concurrent connections or
the user sessions on your web app.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWebApp in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

