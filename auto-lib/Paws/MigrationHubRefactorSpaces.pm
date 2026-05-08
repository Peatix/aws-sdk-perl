package Paws::MigrationHubRefactorSpaces;
  use Moose;
  sub service { 'refactor-spaces' }
  sub signing_name { 'refactor-spaces' }
  sub version { '2021-10-26' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubRefactorSpaces::CreateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubRefactorSpaces::CreateEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubRefactorSpaces::CreateRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubRefactorSpaces::CreateService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubRefactorSpaces::DeleteApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubRefactorSpaces::DeleteEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubRefactorSpaces::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubRefactorSpaces::DeleteRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubRefactorSpaces::DeleteService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubRefactorSpaces::GetApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubRefactorSpaces::GetEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubRefactorSpaces::GetResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubRefactorSpaces::GetRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubRefactorSpaces::GetService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubRefactorSpaces::ListApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubRefactorSpaces::ListEnvironments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironmentVpcs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubRefactorSpaces::ListEnvironmentVpcs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRoutes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubRefactorSpaces::ListRoutes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubRefactorSpaces::ListServices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubRefactorSpaces::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubRefactorSpaces::PutResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubRefactorSpaces::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubRefactorSpaces::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHubRefactorSpaces::UpdateRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllApplications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListApplications(@_, NextToken => $next_result->NextToken);
        push @{ $result->ApplicationSummaryList }, @{ $next_result->ApplicationSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ApplicationSummaryList') foreach (@{ $result->ApplicationSummaryList });
        $result = $self->ListApplications(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ApplicationSummaryList') foreach (@{ $result->ApplicationSummaryList });
    }

    return undef
  }
  sub ListAllEnvironments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnvironments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEnvironments(@_, NextToken => $next_result->NextToken);
        push @{ $result->EnvironmentSummaryList }, @{ $next_result->EnvironmentSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EnvironmentSummaryList') foreach (@{ $result->EnvironmentSummaryList });
        $result = $self->ListEnvironments(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EnvironmentSummaryList') foreach (@{ $result->EnvironmentSummaryList });
    }

    return undef
  }
  sub ListAllEnvironmentVpcs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnvironmentVpcs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEnvironmentVpcs(@_, NextToken => $next_result->NextToken);
        push @{ $result->EnvironmentVpcList }, @{ $next_result->EnvironmentVpcList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EnvironmentVpcList') foreach (@{ $result->EnvironmentVpcList });
        $result = $self->ListEnvironmentVpcs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EnvironmentVpcList') foreach (@{ $result->EnvironmentVpcList });
    }

    return undef
  }
  sub ListAllRoutes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRoutes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRoutes(@_, NextToken => $next_result->NextToken);
        push @{ $result->RouteSummaryList }, @{ $next_result->RouteSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'RouteSummaryList') foreach (@{ $result->RouteSummaryList });
        $result = $self->ListRoutes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'RouteSummaryList') foreach (@{ $result->RouteSummaryList });
    }

    return undef
  }
  sub ListAllServices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListServices(@_, NextToken => $next_result->NextToken);
        push @{ $result->ServiceSummaryList }, @{ $next_result->ServiceSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ServiceSummaryList') foreach (@{ $result->ServiceSummaryList });
        $result = $self->ListServices(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ServiceSummaryList') foreach (@{ $result->ServiceSummaryList });
    }

    return undef
  }


  sub operations { qw/CreateApplication CreateEnvironment CreateRoute CreateService DeleteApplication DeleteEnvironment DeleteResourcePolicy DeleteRoute DeleteService GetApplication GetEnvironment GetResourcePolicy GetRoute GetService ListApplications ListEnvironments ListEnvironmentVpcs ListRoutes ListServices ListTagsForResource PutResourcePolicy TagResource UntagResource UpdateRoute / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces - Perl Interface to AWS AWS Migration Hub Refactor Spaces

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MigrationHubRefactorSpaces');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Web Services Migration Hub Refactor Spaces

This API reference provides descriptions, syntax, and other details
about each of the actions and data types for Amazon Web Services
Migration Hub Refactor Spaces (Refactor Spaces). The topic for each
action shows the API request parameters and the response.
Alternatively, you can use one of the Amazon Web Services SDKs to
access an API that is tailored to the programming language or platform
that you're using. For more information, see Amazon Web Services SDKs
(https://aws.amazon.com/tools/#SDKs).

To share Refactor Spaces environments with other Amazon Web Services
accounts or with Organizations and their OUs, use Resource Access
Manager's C<CreateResourceShare> API. See CreateResourceShare
(https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html)
in the I<Amazon Web Services RAM API Reference>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/refactor-spaces-2021-10-26>


=head1 METHODS

=head2 CreateApplication

=over

=item EnvironmentIdentifier => Str

=item Name => Str

=item ProxyType => Str

=item VpcId => Str

=item [ApiGatewayProxy => L<Paws::MigrationHubRefactorSpaces::ApiGatewayProxyInput>]

=item [ClientToken => Str]

=item [Tags => L<Paws::MigrationHubRefactorSpaces::TagMap>]


=back

Each argument is described in detail in: L<Paws::MigrationHubRefactorSpaces::CreateApplication>

Returns: a L<Paws::MigrationHubRefactorSpaces::CreateApplicationResponse> instance

Creates an Amazon Web Services Migration Hub Refactor Spaces
application. The account that owns the environment also owns the
applications created inside the environment, regardless of the account
that creates the application. Refactor Spaces provisions an Amazon API
Gateway, API Gateway VPC link, and Network Load Balancer for the
application proxy inside your account.

In environments created with a CreateEnvironment:NetworkFabricType
(https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateEnvironment.html#migrationhubrefactorspaces-CreateEnvironment-request-NetworkFabricType)
of C<NONE> you need to configure VPC to VPC connectivity
(https://docs.aws.amazon.com/whitepapers/latest/aws-vpc-connectivity-options/amazon-vpc-to-amazon-vpc-connectivity-options.html)
between your service VPC and the application proxy VPC to route traffic
through the application proxy to a service with a private URL endpoint.
For more information, see Create an application
(https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/userguide/getting-started-create-application.html)
in the I<Refactor Spaces User Guide>.


=head2 CreateEnvironment

=over

=item Name => Str

=item NetworkFabricType => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => L<Paws::MigrationHubRefactorSpaces::TagMap>]


=back

Each argument is described in detail in: L<Paws::MigrationHubRefactorSpaces::CreateEnvironment>

Returns: a L<Paws::MigrationHubRefactorSpaces::CreateEnvironmentResponse> instance

Creates an Amazon Web Services Migration Hub Refactor Spaces
environment. The caller owns the environment resource, and all Refactor
Spaces applications, services, and routes created within the
environment. They are referred to as the I<environment owner>. The
environment owner has cross-account visibility and control of Refactor
Spaces resources that are added to the environment by other accounts
that the environment is shared with.

When creating an environment with a CreateEnvironment:NetworkFabricType
(https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateEnvironment.html#migrationhubrefactorspaces-CreateEnvironment-request-NetworkFabricType)
of C<TRANSIT_GATEWAY>, Refactor Spaces provisions a transit gateway to
enable services in VPCs to communicate directly across accounts. If
CreateEnvironment:NetworkFabricType
(https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateEnvironment.html#migrationhubrefactorspaces-CreateEnvironment-request-NetworkFabricType)
is C<NONE>, Refactor Spaces does not create a transit gateway and you
must use your network infrastructure to route traffic to services with
private URL endpoints.


=head2 CreateRoute

=over

=item ApplicationIdentifier => Str

=item EnvironmentIdentifier => Str

=item RouteType => Str

=item ServiceIdentifier => Str

=item [ClientToken => Str]

=item [DefaultRoute => L<Paws::MigrationHubRefactorSpaces::DefaultRouteInput>]

=item [Tags => L<Paws::MigrationHubRefactorSpaces::TagMap>]

=item [UriPathRoute => L<Paws::MigrationHubRefactorSpaces::UriPathRouteInput>]


=back

Each argument is described in detail in: L<Paws::MigrationHubRefactorSpaces::CreateRoute>

Returns: a L<Paws::MigrationHubRefactorSpaces::CreateRouteResponse> instance

Creates an Amazon Web Services Migration Hub Refactor Spaces route. The
account owner of the service resource is always the environment owner,
regardless of which account creates the route. Routes target a service
in the application. If an application does not have any routes, then
the first route must be created as a C<DEFAULT> C<RouteType>.

When created, the default route defaults to an active state so state is
not a required input. However, like all other state values the state of
the default route can be updated after creation, but only when all
other routes are also inactive. Conversely, no route can be active
without the default route also being active.

When you create a route, Refactor Spaces configures the Amazon API
Gateway to send traffic to the target service as follows:

=over

=item *

B<URL Endpoints>

If the service has a URL endpoint, and the endpoint resolves to a
private IP address, Refactor Spaces routes traffic using the API
Gateway VPC link. If a service endpoint resolves to a public IP
address, Refactor Spaces routes traffic over the public internet.
Services can have HTTP or HTTPS URL endpoints. For HTTPS URLs,
publicly-signed certificates are supported. Private Certificate
Authorities (CAs) are permitted only if the CA's domain is also
publicly resolvable.

Refactor Spaces automatically resolves the public Domain Name System
(DNS) names that are set in C<CreateService:UrlEndpoint >when you
create a service. The DNS names resolve when the DNS time-to-live (TTL)
expires, or every 60 seconds for TTLs less than 60 seconds. This
periodic DNS resolution ensures that the route configuration remains
up-to-date.

B<One-time health check>

A one-time health check is performed on the service when either the
route is updated from inactive to active, or when it is created with an
active state. If the health check fails, the route transitions the
route state to C<FAILED>, an error code of
C<SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE> is provided, and no traffic is
sent to the service.

For private URLs, a target group is created on the Network Load
Balancer and the load balancer target group runs default target health
checks. By default, the health check is run against the service
endpoint URL. Optionally, the health check can be performed against a
different protocol, port, and/or path using the
CreateService:UrlEndpoint
(https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateService.html#migrationhubrefactorspaces-CreateService-request-UrlEndpoint)
parameter. All other health check settings for the load balancer use
the default values described in the Health checks for your target
groups
(https://docs.aws.amazon.com/elasticloadbalancing/latest/application/target-group-health-checks.html)
in the I<Elastic Load Balancing guide>. The health check is considered
successful if at least one target within the target group transitions
to a healthy state.

=item *

B<Lambda function endpoints>

If the service has an Lambda function endpoint, then Refactor Spaces
configures the Lambda function's resource policy to allow the
application's API Gateway to invoke the function.

The Lambda function state is checked. If the function is not active,
the function configuration is updated so that Lambda resources are
provisioned. If the Lambda state is C<Failed>, then the route creation
fails. For more information, see the GetFunctionConfiguration's State
response parameter
(https://docs.aws.amazon.com/lambda/latest/dg/API_GetFunctionConfiguration.html#SSS-GetFunctionConfiguration-response-State)
in the I<Lambda Developer Guide>.

A check is performed to determine that a Lambda function with the
specified ARN exists. If it does not exist, the health check fails. For
public URLs, a connection is opened to the public endpoint. If the URL
is not reachable, the health check fails.

=back

B<Environments without a network bridge>

When you create environments without a network bridge
(CreateEnvironment:NetworkFabricType
(https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateEnvironment.html#migrationhubrefactorspaces-CreateEnvironment-request-NetworkFabricType)
is C<NONE)> and you use your own networking infrastructure, you need to
configure VPC to VPC connectivity
(https://docs.aws.amazon.com/whitepapers/latest/aws-vpc-connectivity-options/amazon-vpc-to-amazon-vpc-connectivity-options.html)
between your network and the application proxy VPC. Route creation from
the application proxy to service endpoints will fail if your network is
not configured to connect to the application proxy VPC. For more
information, see Create a route
(https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/userguide/getting-started-create-role.html)
in the I<Refactor Spaces User Guide>.


=head2 CreateService

=over

=item ApplicationIdentifier => Str

=item EndpointType => Str

=item EnvironmentIdentifier => Str

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [LambdaEndpoint => L<Paws::MigrationHubRefactorSpaces::LambdaEndpointInput>]

=item [Tags => L<Paws::MigrationHubRefactorSpaces::TagMap>]

=item [UrlEndpoint => L<Paws::MigrationHubRefactorSpaces::UrlEndpointInput>]

=item [VpcId => Str]


=back

Each argument is described in detail in: L<Paws::MigrationHubRefactorSpaces::CreateService>

Returns: a L<Paws::MigrationHubRefactorSpaces::CreateServiceResponse> instance

Creates an Amazon Web Services Migration Hub Refactor Spaces service.
The account owner of the service is always the environment owner,
regardless of which account in the environment creates the service.
Services have either a URL endpoint in a virtual private cloud (VPC),
or a Lambda function endpoint.

If an Amazon Web Services resource is launched in a service VPC, and
you want it to be accessible to all of an environmentE<rsquo>s services
with VPCs and routes, apply the C<RefactorSpacesSecurityGroup> to the
resource. Alternatively, to add more cross-account constraints, apply
your own security group.


=head2 DeleteApplication

=over

=item ApplicationIdentifier => Str

=item EnvironmentIdentifier => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubRefactorSpaces::DeleteApplication>

Returns: a L<Paws::MigrationHubRefactorSpaces::DeleteApplicationResponse> instance

Deletes an Amazon Web Services Migration Hub Refactor Spaces
application. Before you can delete an application, you must first
delete any services or routes within the application.


=head2 DeleteEnvironment

=over

=item EnvironmentIdentifier => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubRefactorSpaces::DeleteEnvironment>

Returns: a L<Paws::MigrationHubRefactorSpaces::DeleteEnvironmentResponse> instance

Deletes an Amazon Web Services Migration Hub Refactor Spaces
environment. Before you can delete an environment, you must first
delete any applications and services within the environment.


=head2 DeleteResourcePolicy

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubRefactorSpaces::DeleteResourcePolicy>

Returns: a L<Paws::MigrationHubRefactorSpaces::DeleteResourcePolicyResponse> instance

Deletes the resource policy set for the environment.


=head2 DeleteRoute

=over

=item ApplicationIdentifier => Str

=item EnvironmentIdentifier => Str

=item RouteIdentifier => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubRefactorSpaces::DeleteRoute>

Returns: a L<Paws::MigrationHubRefactorSpaces::DeleteRouteResponse> instance

Deletes an Amazon Web Services Migration Hub Refactor Spaces route.


=head2 DeleteService

=over

=item ApplicationIdentifier => Str

=item EnvironmentIdentifier => Str

=item ServiceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubRefactorSpaces::DeleteService>

Returns: a L<Paws::MigrationHubRefactorSpaces::DeleteServiceResponse> instance

Deletes an Amazon Web Services Migration Hub Refactor Spaces service.


=head2 GetApplication

=over

=item ApplicationIdentifier => Str

=item EnvironmentIdentifier => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubRefactorSpaces::GetApplication>

Returns: a L<Paws::MigrationHubRefactorSpaces::GetApplicationResponse> instance

Gets an Amazon Web Services Migration Hub Refactor Spaces application.


=head2 GetEnvironment

=over

=item EnvironmentIdentifier => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubRefactorSpaces::GetEnvironment>

Returns: a L<Paws::MigrationHubRefactorSpaces::GetEnvironmentResponse> instance

Gets an Amazon Web Services Migration Hub Refactor Spaces environment.


=head2 GetResourcePolicy

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubRefactorSpaces::GetResourcePolicy>

Returns: a L<Paws::MigrationHubRefactorSpaces::GetResourcePolicyResponse> instance

Gets the resource-based permission policy that is set for the given
environment.


=head2 GetRoute

=over

=item ApplicationIdentifier => Str

=item EnvironmentIdentifier => Str

=item RouteIdentifier => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubRefactorSpaces::GetRoute>

Returns: a L<Paws::MigrationHubRefactorSpaces::GetRouteResponse> instance

Gets an Amazon Web Services Migration Hub Refactor Spaces route.


=head2 GetService

=over

=item ApplicationIdentifier => Str

=item EnvironmentIdentifier => Str

=item ServiceIdentifier => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubRefactorSpaces::GetService>

Returns: a L<Paws::MigrationHubRefactorSpaces::GetServiceResponse> instance

Gets an Amazon Web Services Migration Hub Refactor Spaces service.


=head2 ListApplications

=over

=item EnvironmentIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MigrationHubRefactorSpaces::ListApplications>

Returns: a L<Paws::MigrationHubRefactorSpaces::ListApplicationsResponse> instance

Lists all the Amazon Web Services Migration Hub Refactor Spaces
applications within an environment.


=head2 ListEnvironments

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MigrationHubRefactorSpaces::ListEnvironments>

Returns: a L<Paws::MigrationHubRefactorSpaces::ListEnvironmentsResponse> instance

Lists Amazon Web Services Migration Hub Refactor Spaces environments
owned by a caller account or shared with the caller account.


=head2 ListEnvironmentVpcs

=over

=item EnvironmentIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MigrationHubRefactorSpaces::ListEnvironmentVpcs>

Returns: a L<Paws::MigrationHubRefactorSpaces::ListEnvironmentVpcsResponse> instance

Lists all Amazon Web Services Migration Hub Refactor Spaces service
virtual private clouds (VPCs) that are part of the environment.


=head2 ListRoutes

=over

=item ApplicationIdentifier => Str

=item EnvironmentIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MigrationHubRefactorSpaces::ListRoutes>

Returns: a L<Paws::MigrationHubRefactorSpaces::ListRoutesResponse> instance

Lists all the Amazon Web Services Migration Hub Refactor Spaces routes
within an application.


=head2 ListServices

=over

=item ApplicationIdentifier => Str

=item EnvironmentIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::MigrationHubRefactorSpaces::ListServices>

Returns: a L<Paws::MigrationHubRefactorSpaces::ListServicesResponse> instance

Lists all the Amazon Web Services Migration Hub Refactor Spaces
services within an application.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubRefactorSpaces::ListTagsForResource>

Returns: a L<Paws::MigrationHubRefactorSpaces::ListTagsForResourceResponse> instance

Lists the tags of a resource. The caller account must be the same as
the resourceE<rsquo>s C<OwnerAccountId>. Listing tags in other accounts
is not supported.


=head2 PutResourcePolicy

=over

=item Policy => Str

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubRefactorSpaces::PutResourcePolicy>

Returns: a L<Paws::MigrationHubRefactorSpaces::PutResourcePolicyResponse> instance

Attaches a resource-based permission policy to the Amazon Web Services
Migration Hub Refactor Spaces environment. The policy must contain the
same actions and condition statements as the
C<arn:aws:ram::aws:permission/AWSRAMDefaultPermissionRefactorSpacesEnvironment>
permission in Resource Access Manager. The policy must not contain new
lines or blank lines.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::MigrationHubRefactorSpaces::TagMap>


=back

Each argument is described in detail in: L<Paws::MigrationHubRefactorSpaces::TagResource>

Returns: a L<Paws::MigrationHubRefactorSpaces::TagResourceResponse> instance

Removes the tags of a given resource. Tags are metadata which can be
used to manage a resource. To tag a resource, the caller account must
be the same as the resourceE<rsquo>s C<OwnerAccountId>. Tagging
resources in other accounts is not supported.

Amazon Web Services Migration Hub Refactor Spaces does not propagate
tags to orchestrated resources, such as an environmentE<rsquo>s transit
gateway.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::MigrationHubRefactorSpaces::UntagResource>

Returns: a L<Paws::MigrationHubRefactorSpaces::UntagResourceResponse> instance

Adds to or modifies the tags of the given resource. Tags are metadata
which can be used to manage a resource. To untag a resource, the caller
account must be the same as the resourceE<rsquo>s C<OwnerAccountId>.
Untagging resources across accounts is not supported.


=head2 UpdateRoute

=over

=item ActivationState => Str

=item ApplicationIdentifier => Str

=item EnvironmentIdentifier => Str

=item RouteIdentifier => Str


=back

Each argument is described in detail in: L<Paws::MigrationHubRefactorSpaces::UpdateRoute>

Returns: a L<Paws::MigrationHubRefactorSpaces::UpdateRouteResponse> instance

Updates an Amazon Web Services Migration Hub Refactor Spaces route.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllApplications(sub { },EnvironmentIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllApplications(EnvironmentIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ApplicationSummaryList, passing the object as the first parameter, and the string 'ApplicationSummaryList' as the second parameter 

If not, it will return a a L<Paws::MigrationHubRefactorSpaces::ListApplicationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEnvironments(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllEnvironments([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EnvironmentSummaryList, passing the object as the first parameter, and the string 'EnvironmentSummaryList' as the second parameter 

If not, it will return a a L<Paws::MigrationHubRefactorSpaces::ListEnvironmentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEnvironmentVpcs(sub { },EnvironmentIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllEnvironmentVpcs(EnvironmentIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EnvironmentVpcList, passing the object as the first parameter, and the string 'EnvironmentVpcList' as the second parameter 

If not, it will return a a L<Paws::MigrationHubRefactorSpaces::ListEnvironmentVpcsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRoutes(sub { },ApplicationIdentifier => Str, EnvironmentIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllRoutes(ApplicationIdentifier => Str, EnvironmentIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - RouteSummaryList, passing the object as the first parameter, and the string 'RouteSummaryList' as the second parameter 

If not, it will return a a L<Paws::MigrationHubRefactorSpaces::ListRoutesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServices(sub { },ApplicationIdentifier => Str, EnvironmentIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllServices(ApplicationIdentifier => Str, EnvironmentIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ServiceSummaryList, passing the object as the first parameter, and the string 'ServiceSummaryList' as the second parameter 

If not, it will return a a L<Paws::MigrationHubRefactorSpaces::ListServicesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

