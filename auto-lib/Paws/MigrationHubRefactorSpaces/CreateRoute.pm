
package Paws::MigrationHubRefactorSpaces::CreateRoute;
  use Moose;
  has ApplicationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationIdentifier', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has DefaultRoute => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::DefaultRouteInput');
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EnvironmentIdentifier', required => 1);
  has RouteType => (is => 'ro', isa => 'Str', required => 1);
  has ServiceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::TagMap');
  has UriPathRoute => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::UriPathRouteInput');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRoute');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubRefactorSpaces::CreateRouteResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::CreateRoute - Arguments for method CreateRoute on L<Paws::MigrationHubRefactorSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRoute on the
L<AWS Migration Hub Refactor Spaces|Paws::MigrationHubRefactorSpaces> service. Use the attributes of this class
as arguments to method CreateRoute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRoute.

=head1 SYNOPSIS

    my $refactor-spaces = Paws->service('MigrationHubRefactorSpaces');
    my $CreateRouteResponse = $refactor -spaces->CreateRoute(
      ApplicationIdentifier => 'MyApplicationId',
      EnvironmentIdentifier => 'MyEnvironmentId',
      RouteType             => 'DEFAULT',
      ServiceIdentifier     => 'MyServiceId',
      ClientToken           => 'MyClientToken',     # OPTIONAL
      DefaultRoute          => {
        ActivationState => 'ACTIVE',    # values: ACTIVE, INACTIVE; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagMapKeyString' =>
          'MyTagMapValueString',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      UriPathRoute => {
        ActivationState   => 'ACTIVE',      # values: ACTIVE, INACTIVE; OPTIONAL
        SourcePath        => 'MyUriPath',   # min: 1, max: 2048
        AppendSourcePath  => 1,             # OPTIONAL
        IncludeChildPaths => 1,             # OPTIONAL
        Methods           => [
          'DELETE', ...   # values: DELETE, GET, HEAD, OPTIONS, PATCH, POST, PUT
        ],    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ApplicationId      = $CreateRouteResponse->ApplicationId;
    my $Arn                = $CreateRouteResponse->Arn;
    my $CreatedByAccountId = $CreateRouteResponse->CreatedByAccountId;
    my $CreatedTime        = $CreateRouteResponse->CreatedTime;
    my $LastUpdatedTime    = $CreateRouteResponse->LastUpdatedTime;
    my $OwnerAccountId     = $CreateRouteResponse->OwnerAccountId;
    my $RouteId            = $CreateRouteResponse->RouteId;
    my $RouteType          = $CreateRouteResponse->RouteType;
    my $ServiceId          = $CreateRouteResponse->ServiceId;
    my $State              = $CreateRouteResponse->State;
    my $Tags               = $CreateRouteResponse->Tags;
    my $UriPathRoute       = $CreateRouteResponse->UriPathRoute;

    # Returns a L<Paws::MigrationHubRefactorSpaces::CreateRouteResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/refactor-spaces/CreateRoute>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationIdentifier => Str

The ID of the application within which the route is being created.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 DefaultRoute => L<Paws::MigrationHubRefactorSpaces::DefaultRouteInput>

Configuration for the default route type.



=head2 B<REQUIRED> EnvironmentIdentifier => Str

The ID of the environment in which the route is created.



=head2 B<REQUIRED> RouteType => Str

The route type of the route. C<DEFAULT> indicates that all traffic that
does not match another route is forwarded to the default route.
Applications must have a default route before any other routes can be
created. C<URI_PATH> indicates a route that is based on a URI path.

Valid values are: C<"DEFAULT">, C<"URI_PATH">

=head2 B<REQUIRED> ServiceIdentifier => Str

The ID of the service in which the route is created. Traffic that
matches this route is forwarded to this service.



=head2 Tags => L<Paws::MigrationHubRefactorSpaces::TagMap>

The tags to assign to the route. A tag is a label that you assign to an
Amazon Web Services resource. Each tag consists of a key-value pair..



=head2 UriPathRoute => L<Paws::MigrationHubRefactorSpaces::UriPathRouteInput>

The configuration for the URI path route type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRoute in L<Paws::MigrationHubRefactorSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

