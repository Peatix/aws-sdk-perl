
package Paws::AppFabric::GetAppAuthorization;
  use Moose;
  has AppAuthorizationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appAuthorizationIdentifier', required => 1);
  has AppBundleIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appBundleIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAppAuthorization');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppFabric::GetAppAuthorizationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppFabric::GetAppAuthorization - Arguments for method GetAppAuthorization on L<Paws::AppFabric>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAppAuthorization on the
L<AppFabric|Paws::AppFabric> service. Use the attributes of this class
as arguments to method GetAppAuthorization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAppAuthorization.

=head1 SYNOPSIS

    my $appfabric = Paws->service('AppFabric');
    my $GetAppAuthorizationResponse = $appfabric->GetAppAuthorization(
      AppAuthorizationIdentifier => 'MyIdentifier',
      AppBundleIdentifier        => 'MyIdentifier',

    );

    # Results:
    my $AppAuthorization = $GetAppAuthorizationResponse->AppAuthorization;

    # Returns a L<Paws::AppFabric::GetAppAuthorizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appfabric/GetAppAuthorization>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppAuthorizationIdentifier => Str

The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of
the app authorization to use for the request.



=head2 B<REQUIRED> AppBundleIdentifier => Str

The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of
the app bundle to use for the request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAppAuthorization in L<Paws::AppFabric>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

