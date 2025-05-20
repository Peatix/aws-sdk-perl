
package Paws::AppFabric::ConnectAppAuthorization;
  use Moose;
  has AppAuthorizationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appAuthorizationIdentifier', required => 1);
  has AppBundleIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appBundleIdentifier', required => 1);
  has AuthRequest => (is => 'ro', isa => 'Paws::AppFabric::AuthRequest', traits => ['NameInRequest'], request_name => 'authRequest');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConnectAppAuthorization');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}/connect');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppFabric::ConnectAppAuthorizationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppFabric::ConnectAppAuthorization - Arguments for method ConnectAppAuthorization on L<Paws::AppFabric>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ConnectAppAuthorization on the
L<AppFabric|Paws::AppFabric> service. Use the attributes of this class
as arguments to method ConnectAppAuthorization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ConnectAppAuthorization.

=head1 SYNOPSIS

    my $appfabric = Paws->service('AppFabric');
    my $ConnectAppAuthorizationResponse = $appfabric->ConnectAppAuthorization(
      AppAuthorizationIdentifier => 'MyIdentifier',
      AppBundleIdentifier        => 'MyIdentifier',
      AuthRequest                => {
        Code        => 'MySensitiveString2048',    # min: 1, max: 2048
        RedirectUri => 'MyRedirectUri',            # max: 1024

      },    # OPTIONAL
    );

    # Results:
    my $AppAuthorizationSummary =
      $ConnectAppAuthorizationResponse->AppAuthorizationSummary;

    # Returns a L<Paws::AppFabric::ConnectAppAuthorizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appfabric/ConnectAppAuthorization>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppAuthorizationIdentifier => Str

The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of
the app authorization to use for the request.



=head2 B<REQUIRED> AppBundleIdentifier => Str

The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of
the app bundle that contains the app authorization to use for the
request.



=head2 AuthRequest => L<Paws::AppFabric::AuthRequest>

Contains OAuth2 authorization information.

This is required if the app authorization for the request is configured
with an OAuth2 (C<oauth2>) authorization type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ConnectAppAuthorization in L<Paws::AppFabric>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

