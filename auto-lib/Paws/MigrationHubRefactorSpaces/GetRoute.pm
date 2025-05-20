
package Paws::MigrationHubRefactorSpaces::GetRoute;
  use Moose;
  has ApplicationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationIdentifier', required => 1);
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EnvironmentIdentifier', required => 1);
  has RouteIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'RouteIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRoute');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes/{RouteIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubRefactorSpaces::GetRouteResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::GetRoute - Arguments for method GetRoute on L<Paws::MigrationHubRefactorSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRoute on the
L<AWS Migration Hub Refactor Spaces|Paws::MigrationHubRefactorSpaces> service. Use the attributes of this class
as arguments to method GetRoute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRoute.

=head1 SYNOPSIS

    my $refactor-spaces = Paws->service('MigrationHubRefactorSpaces');
    my $GetRouteResponse = $refactor -spaces->GetRoute(
      ApplicationIdentifier => 'MyApplicationId',
      EnvironmentIdentifier => 'MyEnvironmentId',
      RouteIdentifier       => 'MyRouteId',

    );

    # Results:
    my $AppendSourcePath   = $GetRouteResponse->AppendSourcePath;
    my $ApplicationId      = $GetRouteResponse->ApplicationId;
    my $Arn                = $GetRouteResponse->Arn;
    my $CreatedByAccountId = $GetRouteResponse->CreatedByAccountId;
    my $CreatedTime        = $GetRouteResponse->CreatedTime;
    my $EnvironmentId      = $GetRouteResponse->EnvironmentId;
    my $Error              = $GetRouteResponse->Error;
    my $IncludeChildPaths  = $GetRouteResponse->IncludeChildPaths;
    my $LastUpdatedTime    = $GetRouteResponse->LastUpdatedTime;
    my $Methods            = $GetRouteResponse->Methods;
    my $OwnerAccountId     = $GetRouteResponse->OwnerAccountId;
    my $PathResourceToId   = $GetRouteResponse->PathResourceToId;
    my $RouteId            = $GetRouteResponse->RouteId;
    my $RouteType          = $GetRouteResponse->RouteType;
    my $ServiceId          = $GetRouteResponse->ServiceId;
    my $SourcePath         = $GetRouteResponse->SourcePath;
    my $State              = $GetRouteResponse->State;
    my $Tags               = $GetRouteResponse->Tags;

    # Returns a L<Paws::MigrationHubRefactorSpaces::GetRouteResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/refactor-spaces/GetRoute>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationIdentifier => Str

The ID of the application.



=head2 B<REQUIRED> EnvironmentIdentifier => Str

The ID of the environment.



=head2 B<REQUIRED> RouteIdentifier => Str

The ID of the route.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRoute in L<Paws::MigrationHubRefactorSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

