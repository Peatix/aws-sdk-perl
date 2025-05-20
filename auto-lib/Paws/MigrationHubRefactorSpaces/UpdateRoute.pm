
package Paws::MigrationHubRefactorSpaces::UpdateRoute;
  use Moose;
  has ActivationState => (is => 'ro', isa => 'Str', required => 1);
  has ApplicationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationIdentifier', required => 1);
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EnvironmentIdentifier', required => 1);
  has RouteIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'RouteIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRoute');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes/{RouteIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubRefactorSpaces::UpdateRouteResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::UpdateRoute - Arguments for method UpdateRoute on L<Paws::MigrationHubRefactorSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRoute on the
L<AWS Migration Hub Refactor Spaces|Paws::MigrationHubRefactorSpaces> service. Use the attributes of this class
as arguments to method UpdateRoute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRoute.

=head1 SYNOPSIS

    my $refactor-spaces = Paws->service('MigrationHubRefactorSpaces');
    my $UpdateRouteResponse = $refactor -spaces->UpdateRoute(
      ActivationState       => 'ACTIVE',
      ApplicationIdentifier => 'MyApplicationId',
      EnvironmentIdentifier => 'MyEnvironmentId',
      RouteIdentifier       => 'MyRouteId',

    );

    # Results:
    my $ApplicationId   = $UpdateRouteResponse->ApplicationId;
    my $Arn             = $UpdateRouteResponse->Arn;
    my $LastUpdatedTime = $UpdateRouteResponse->LastUpdatedTime;
    my $RouteId         = $UpdateRouteResponse->RouteId;
    my $ServiceId       = $UpdateRouteResponse->ServiceId;
    my $State           = $UpdateRouteResponse->State;

    # Returns a L<Paws::MigrationHubRefactorSpaces::UpdateRouteResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/refactor-spaces/UpdateRoute>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActivationState => Str

If set to C<ACTIVE>, traffic is forwarded to this routeE<rsquo>s
service after the route is updated.

Valid values are: C<"ACTIVE">, C<"INACTIVE">

=head2 B<REQUIRED> ApplicationIdentifier => Str

The ID of the application within which the route is being updated.



=head2 B<REQUIRED> EnvironmentIdentifier => Str

The ID of the environment in which the route is being updated.



=head2 B<REQUIRED> RouteIdentifier => Str

The unique identifier of the route to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRoute in L<Paws::MigrationHubRefactorSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

