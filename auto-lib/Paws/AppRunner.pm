package Paws::AppRunner;
  use Moose;
  sub service { 'apprunner' }
  sub signing_name { 'apprunner' }
  sub version { '2020-05-15' }
  sub target_prefix { 'AppRunner' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateCustomDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::AssociateCustomDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAutoScalingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::CreateAutoScalingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::CreateConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateObservabilityConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::CreateObservabilityConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::CreateService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpcConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::CreateVpcConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpcIngressConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::CreateVpcIngressConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAutoScalingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::DeleteAutoScalingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::DeleteConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteObservabilityConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::DeleteObservabilityConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::DeleteService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpcConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::DeleteVpcConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpcIngressConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::DeleteVpcIngressConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAutoScalingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::DescribeAutoScalingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCustomDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::DescribeCustomDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeObservabilityConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::DescribeObservabilityConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::DescribeService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::DescribeVpcConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcIngressConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::DescribeVpcIngressConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateCustomDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::DisassociateCustomDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAutoScalingConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::ListAutoScalingConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::ListConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListObservabilityConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::ListObservabilityConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOperations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::ListOperations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::ListServices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServicesForAutoScalingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::ListServicesForAutoScalingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVpcConnectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::ListVpcConnectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVpcIngressConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::ListVpcIngressConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PauseService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::PauseService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResumeService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::ResumeService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::StartDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDefaultAutoScalingConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::UpdateDefaultAutoScalingConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::UpdateService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVpcIngressConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppRunner::UpdateVpcIngressConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssociateCustomDomain CreateAutoScalingConfiguration CreateConnection CreateObservabilityConfiguration CreateService CreateVpcConnector CreateVpcIngressConnection DeleteAutoScalingConfiguration DeleteConnection DeleteObservabilityConfiguration DeleteService DeleteVpcConnector DeleteVpcIngressConnection DescribeAutoScalingConfiguration DescribeCustomDomains DescribeObservabilityConfiguration DescribeService DescribeVpcConnector DescribeVpcIngressConnection DisassociateCustomDomain ListAutoScalingConfigurations ListConnections ListObservabilityConfigurations ListOperations ListServices ListServicesForAutoScalingConfiguration ListTagsForResource ListVpcConnectors ListVpcIngressConnections PauseService ResumeService StartDeployment TagResource UntagResource UpdateDefaultAutoScalingConfiguration UpdateService UpdateVpcIngressConnection / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner - Perl Interface to AWS AWS App Runner

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('AppRunner');
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

App Runner

App Runner is an application service that provides a fast, simple, and
cost-effective way to go directly from an existing container image or
source code to a running service in the Amazon Web Services Cloud in
seconds. You don't need to learn new technologies, decide which compute
service to use, or understand how to provision and configure Amazon Web
Services resources.

App Runner connects directly to your container registry or source code
repository. It provides an automatic delivery pipeline with fully
managed operations, high performance, scalability, and security.

For more information about App Runner, see the App Runner Developer
Guide (https://docs.aws.amazon.com/apprunner/latest/dg/). For release
information, see the App Runner Release Notes
(https://docs.aws.amazon.com/apprunner/latest/relnotes/).

To install the Software Development Kits (SDKs), Integrated Development
Environment (IDE) Toolkits, and command line tools that you can use to
access the API, see Tools for Amazon Web Services
(http://aws.amazon.com/tools/).

B<Endpoints>

For a list of Region-specific endpoints that App Runner supports, see
App Runner endpoints and quotas
(https://docs.aws.amazon.com/general/latest/gr/apprunner.html) in the
I<Amazon Web Services General Reference>.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AssociateCustomDomain

=over

=item DomainName => Str

=item ServiceArn => Str

=item [EnableWWWSubdomain => Bool]


=back

Each argument is described in detail in: L<Paws::AppRunner::AssociateCustomDomain>

Returns: a L<Paws::AppRunner::AssociateCustomDomainResponse> instance

Associate your own domain name with the App Runner subdomain URL of
your App Runner service.

After you call C<AssociateCustomDomain> and receive a successful
response, use the information in the CustomDomain record that's
returned to add CNAME records to your Domain Name System (DNS). For
each mapped domain name, add a mapping to the target App Runner
subdomain and one or more certificate validation records. App Runner
then performs DNS validation to verify that you own or control the
domain name that you associated. App Runner tracks domain validity in a
certificate stored in AWS Certificate Manager (ACM)
(https://docs.aws.amazon.com/acm/latest/userguide).


=head2 CreateAutoScalingConfiguration

=over

=item AutoScalingConfigurationName => Str

=item [MaxConcurrency => Int]

=item [MaxSize => Int]

=item [MinSize => Int]

=item [Tags => ArrayRef[L<Paws::AppRunner::Tag>]]


=back

Each argument is described in detail in: L<Paws::AppRunner::CreateAutoScalingConfiguration>

Returns: a L<Paws::AppRunner::CreateAutoScalingConfigurationResponse> instance

Create an App Runner automatic scaling configuration resource. App
Runner requires this resource when you create or update App Runner
services and you require non-default auto scaling settings. You can
share an auto scaling configuration across multiple services.

Create multiple revisions of a configuration by calling this action
multiple times using the same C<AutoScalingConfigurationName>. The call
returns incremental C<AutoScalingConfigurationRevision> values. When
you create a service and configure an auto scaling configuration
resource, the service uses the latest active revision of the auto
scaling configuration by default. You can optionally configure the
service to use a specific revision.

Configure a higher C<MinSize> to increase the spread of your App Runner
service over more Availability Zones in the Amazon Web Services Region.
The tradeoff is a higher minimal cost.

Configure a lower C<MaxSize> to control your cost. The tradeoff is
lower responsiveness during peak demand.


=head2 CreateConnection

=over

=item ConnectionName => Str

=item ProviderType => Str

=item [Tags => ArrayRef[L<Paws::AppRunner::Tag>]]


=back

Each argument is described in detail in: L<Paws::AppRunner::CreateConnection>

Returns: a L<Paws::AppRunner::CreateConnectionResponse> instance

Create an App Runner connection resource. App Runner requires a
connection resource when you create App Runner services that access
private repositories from certain third-party providers. You can share
a connection across multiple services.

A connection resource is needed to access GitHub and Bitbucket
repositories. Both require a user interface approval process through
the App Runner console before you can use the connection.


=head2 CreateObservabilityConfiguration

=over

=item ObservabilityConfigurationName => Str

=item [Tags => ArrayRef[L<Paws::AppRunner::Tag>]]

=item [TraceConfiguration => L<Paws::AppRunner::TraceConfiguration>]


=back

Each argument is described in detail in: L<Paws::AppRunner::CreateObservabilityConfiguration>

Returns: a L<Paws::AppRunner::CreateObservabilityConfigurationResponse> instance

Create an App Runner observability configuration resource. App Runner
requires this resource when you create or update App Runner services
and you want to enable non-default observability features. You can
share an observability configuration across multiple services.

Create multiple revisions of a configuration by calling this action
multiple times using the same C<ObservabilityConfigurationName>. The
call returns incremental C<ObservabilityConfigurationRevision> values.
When you create a service and configure an observability configuration
resource, the service uses the latest active revision of the
observability configuration by default. You can optionally configure
the service to use a specific revision.

The observability configuration resource is designed to configure
multiple features (currently one feature, tracing). This action takes
optional parameters that describe the configuration of these features
(currently one parameter, C<TraceConfiguration>). If you don't specify
a feature parameter, App Runner doesn't enable the feature.


=head2 CreateService

=over

=item ServiceName => Str

=item SourceConfiguration => L<Paws::AppRunner::SourceConfiguration>

=item [AutoScalingConfigurationArn => Str]

=item [EncryptionConfiguration => L<Paws::AppRunner::EncryptionConfiguration>]

=item [HealthCheckConfiguration => L<Paws::AppRunner::HealthCheckConfiguration>]

=item [InstanceConfiguration => L<Paws::AppRunner::InstanceConfiguration>]

=item [NetworkConfiguration => L<Paws::AppRunner::NetworkConfiguration>]

=item [ObservabilityConfiguration => L<Paws::AppRunner::ServiceObservabilityConfiguration>]

=item [Tags => ArrayRef[L<Paws::AppRunner::Tag>]]


=back

Each argument is described in detail in: L<Paws::AppRunner::CreateService>

Returns: a L<Paws::AppRunner::CreateServiceResponse> instance

Create an App Runner service. After the service is created, the action
also automatically starts a deployment.

This is an asynchronous operation. On a successful call, you can use
the returned C<OperationId> and the ListOperations
(https://docs.aws.amazon.com/apprunner/latest/api/API_ListOperations.html)
call to track the operation's progress.


=head2 CreateVpcConnector

=over

=item Subnets => ArrayRef[Str|Undef]

=item VpcConnectorName => Str

=item [SecurityGroups => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::AppRunner::Tag>]]


=back

Each argument is described in detail in: L<Paws::AppRunner::CreateVpcConnector>

Returns: a L<Paws::AppRunner::CreateVpcConnectorResponse> instance

Create an App Runner VPC connector resource. App Runner requires this
resource when you want to associate your App Runner service to a custom
Amazon Virtual Private Cloud (Amazon VPC).


=head2 CreateVpcIngressConnection

=over

=item IngressVpcConfiguration => L<Paws::AppRunner::IngressVpcConfiguration>

=item ServiceArn => Str

=item VpcIngressConnectionName => Str

=item [Tags => ArrayRef[L<Paws::AppRunner::Tag>]]


=back

Each argument is described in detail in: L<Paws::AppRunner::CreateVpcIngressConnection>

Returns: a L<Paws::AppRunner::CreateVpcIngressConnectionResponse> instance

Create an App Runner VPC Ingress Connection resource. App Runner
requires this resource when you want to associate your App Runner
service with an Amazon VPC endpoint.


=head2 DeleteAutoScalingConfiguration

=over

=item AutoScalingConfigurationArn => Str

=item [DeleteAllRevisions => Bool]


=back

Each argument is described in detail in: L<Paws::AppRunner::DeleteAutoScalingConfiguration>

Returns: a L<Paws::AppRunner::DeleteAutoScalingConfigurationResponse> instance

Delete an App Runner automatic scaling configuration resource. You can
delete a top level auto scaling configuration, a specific revision of
one, or all revisions associated with the top level configuration. You
can't delete the default auto scaling configuration or a configuration
that's used by one or more App Runner services.


=head2 DeleteConnection

=over

=item ConnectionArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::DeleteConnection>

Returns: a L<Paws::AppRunner::DeleteConnectionResponse> instance

Delete an App Runner connection. You must first ensure that there are
no running App Runner services that use this connection. If there are
any, the C<DeleteConnection> action fails.


=head2 DeleteObservabilityConfiguration

=over

=item ObservabilityConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::DeleteObservabilityConfiguration>

Returns: a L<Paws::AppRunner::DeleteObservabilityConfigurationResponse> instance

Delete an App Runner observability configuration resource. You can
delete a specific revision or the latest active revision. You can't
delete a configuration that's used by one or more App Runner services.


=head2 DeleteService

=over

=item ServiceArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::DeleteService>

Returns: a L<Paws::AppRunner::DeleteServiceResponse> instance

Delete an App Runner service.

This is an asynchronous operation. On a successful call, you can use
the returned C<OperationId> and the ListOperations call to track the
operation's progress.

Make sure that you don't have any active VPCIngressConnections
associated with the service you want to delete.


=head2 DeleteVpcConnector

=over

=item VpcConnectorArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::DeleteVpcConnector>

Returns: a L<Paws::AppRunner::DeleteVpcConnectorResponse> instance

Delete an App Runner VPC connector resource. You can't delete a
connector that's used by one or more App Runner services.


=head2 DeleteVpcIngressConnection

=over

=item VpcIngressConnectionArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::DeleteVpcIngressConnection>

Returns: a L<Paws::AppRunner::DeleteVpcIngressConnectionResponse> instance

Delete an App Runner VPC Ingress Connection resource that's associated
with an App Runner service. The VPC Ingress Connection must be in one
of the following states to be deleted:

=over

=item *

C<AVAILABLE>

=item *

C<FAILED_CREATION>

=item *

C<FAILED_UPDATE>

=item *

C<FAILED_DELETION>

=back



=head2 DescribeAutoScalingConfiguration

=over

=item AutoScalingConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::DescribeAutoScalingConfiguration>

Returns: a L<Paws::AppRunner::DescribeAutoScalingConfigurationResponse> instance

Return a full description of an App Runner automatic scaling
configuration resource.


=head2 DescribeCustomDomains

=over

=item ServiceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppRunner::DescribeCustomDomains>

Returns: a L<Paws::AppRunner::DescribeCustomDomainsResponse> instance

Return a description of custom domain names that are associated with an
App Runner service.


=head2 DescribeObservabilityConfiguration

=over

=item ObservabilityConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::DescribeObservabilityConfiguration>

Returns: a L<Paws::AppRunner::DescribeObservabilityConfigurationResponse> instance

Return a full description of an App Runner observability configuration
resource.


=head2 DescribeService

=over

=item ServiceArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::DescribeService>

Returns: a L<Paws::AppRunner::DescribeServiceResponse> instance

Return a full description of an App Runner service.


=head2 DescribeVpcConnector

=over

=item VpcConnectorArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::DescribeVpcConnector>

Returns: a L<Paws::AppRunner::DescribeVpcConnectorResponse> instance

Return a description of an App Runner VPC connector resource.


=head2 DescribeVpcIngressConnection

=over

=item VpcIngressConnectionArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::DescribeVpcIngressConnection>

Returns: a L<Paws::AppRunner::DescribeVpcIngressConnectionResponse> instance

Return a full description of an App Runner VPC Ingress Connection
resource.


=head2 DisassociateCustomDomain

=over

=item DomainName => Str

=item ServiceArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::DisassociateCustomDomain>

Returns: a L<Paws::AppRunner::DisassociateCustomDomainResponse> instance

Disassociate a custom domain name from an App Runner service.

Certificates tracking domain validity are associated with a custom
domain and are stored in AWS Certificate Manager (ACM)
(https://docs.aws.amazon.com/acm/latest/userguide). These certificates
aren't deleted as part of this action. App Runner delays certificate
deletion for 30 days after a domain is disassociated from your service.


=head2 ListAutoScalingConfigurations

=over

=item [AutoScalingConfigurationName => Str]

=item [LatestOnly => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppRunner::ListAutoScalingConfigurations>

Returns: a L<Paws::AppRunner::ListAutoScalingConfigurationsResponse> instance

Returns a list of active App Runner automatic scaling configurations in
your Amazon Web Services account. You can query the revisions for a
specific configuration name or the revisions for all active
configurations in your account. You can optionally query only the
latest revision of each requested name.

To retrieve a full description of a particular configuration revision,
call and provide one of the ARNs returned by
C<ListAutoScalingConfigurations>.


=head2 ListConnections

=over

=item [ConnectionName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppRunner::ListConnections>

Returns: a L<Paws::AppRunner::ListConnectionsResponse> instance

Returns a list of App Runner connections that are associated with your
Amazon Web Services account.


=head2 ListObservabilityConfigurations

=over

=item [LatestOnly => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ObservabilityConfigurationName => Str]


=back

Each argument is described in detail in: L<Paws::AppRunner::ListObservabilityConfigurations>

Returns: a L<Paws::AppRunner::ListObservabilityConfigurationsResponse> instance

Returns a list of active App Runner observability configurations in
your Amazon Web Services account. You can query the revisions for a
specific configuration name or the revisions for all active
configurations in your account. You can optionally query only the
latest revision of each requested name.

To retrieve a full description of a particular configuration revision,
call and provide one of the ARNs returned by
C<ListObservabilityConfigurations>.


=head2 ListOperations

=over

=item ServiceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppRunner::ListOperations>

Returns: a L<Paws::AppRunner::ListOperationsResponse> instance

Return a list of operations that occurred on an App Runner service.

The resulting list of OperationSummary objects is sorted in reverse
chronological order. The first object on the list represents the last
started operation.


=head2 ListServices

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppRunner::ListServices>

Returns: a L<Paws::AppRunner::ListServicesResponse> instance

Returns a list of running App Runner services in your Amazon Web
Services account.


=head2 ListServicesForAutoScalingConfiguration

=over

=item AutoScalingConfigurationArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppRunner::ListServicesForAutoScalingConfiguration>

Returns: a L<Paws::AppRunner::ListServicesForAutoScalingConfigurationResponse> instance

Returns a list of the associated App Runner services using an auto
scaling configuration.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::ListTagsForResource>

Returns: a L<Paws::AppRunner::ListTagsForResourceResponse> instance

List tags that are associated with for an App Runner resource. The
response contains a list of tag key-value pairs.


=head2 ListVpcConnectors

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppRunner::ListVpcConnectors>

Returns: a L<Paws::AppRunner::ListVpcConnectorsResponse> instance

Returns a list of App Runner VPC connectors in your Amazon Web Services
account.


=head2 ListVpcIngressConnections

=over

=item [Filter => L<Paws::AppRunner::ListVpcIngressConnectionsFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppRunner::ListVpcIngressConnections>

Returns: a L<Paws::AppRunner::ListVpcIngressConnectionsResponse> instance

Return a list of App Runner VPC Ingress Connections in your Amazon Web
Services account.


=head2 PauseService

=over

=item ServiceArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::PauseService>

Returns: a L<Paws::AppRunner::PauseServiceResponse> instance

Pause an active App Runner service. App Runner reduces compute capacity
for the service to zero and loses state (for example, ephemeral storage
is removed).

This is an asynchronous operation. On a successful call, you can use
the returned C<OperationId> and the ListOperations call to track the
operation's progress.


=head2 ResumeService

=over

=item ServiceArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::ResumeService>

Returns: a L<Paws::AppRunner::ResumeServiceResponse> instance

Resume an active App Runner service. App Runner provisions compute
capacity for the service.

This is an asynchronous operation. On a successful call, you can use
the returned C<OperationId> and the ListOperations call to track the
operation's progress.


=head2 StartDeployment

=over

=item ServiceArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::StartDeployment>

Returns: a L<Paws::AppRunner::StartDeploymentResponse> instance

Initiate a manual deployment of the latest commit in a source code
repository or the latest image in a source image repository to an App
Runner service.

For a source code repository, App Runner retrieves the commit and
builds a Docker image. For a source image repository, App Runner
retrieves the latest Docker image. In both cases, App Runner then
deploys the new image to your service and starts a new container
instance.

This is an asynchronous operation. On a successful call, you can use
the returned C<OperationId> and the ListOperations call to track the
operation's progress.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::AppRunner::Tag>]


=back

Each argument is described in detail in: L<Paws::AppRunner::TagResource>

Returns: a L<Paws::AppRunner::TagResourceResponse> instance

Add tags to, or update the tag values of, an App Runner resource. A tag
is a key-value pair.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::AppRunner::UntagResource>

Returns: a L<Paws::AppRunner::UntagResourceResponse> instance

Remove tags from an App Runner resource.


=head2 UpdateDefaultAutoScalingConfiguration

=over

=item AutoScalingConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::UpdateDefaultAutoScalingConfiguration>

Returns: a L<Paws::AppRunner::UpdateDefaultAutoScalingConfigurationResponse> instance

Update an auto scaling configuration to be the default. The existing
default auto scaling configuration will be set to non-default
automatically.


=head2 UpdateService

=over

=item ServiceArn => Str

=item [AutoScalingConfigurationArn => Str]

=item [HealthCheckConfiguration => L<Paws::AppRunner::HealthCheckConfiguration>]

=item [InstanceConfiguration => L<Paws::AppRunner::InstanceConfiguration>]

=item [NetworkConfiguration => L<Paws::AppRunner::NetworkConfiguration>]

=item [ObservabilityConfiguration => L<Paws::AppRunner::ServiceObservabilityConfiguration>]

=item [SourceConfiguration => L<Paws::AppRunner::SourceConfiguration>]


=back

Each argument is described in detail in: L<Paws::AppRunner::UpdateService>

Returns: a L<Paws::AppRunner::UpdateServiceResponse> instance

Update an App Runner service. You can update the source configuration
and instance configuration of the service. You can also update the ARN
of the auto scaling configuration resource that's associated with the
service. However, you can't change the name or the encryption
configuration of the service. These can be set only when you create the
service.

To update the tags applied to your service, use the separate actions
TagResource and UntagResource.

This is an asynchronous operation. On a successful call, you can use
the returned C<OperationId> and the ListOperations call to track the
operation's progress.


=head2 UpdateVpcIngressConnection

=over

=item IngressVpcConfiguration => L<Paws::AppRunner::IngressVpcConfiguration>

=item VpcIngressConnectionArn => Str


=back

Each argument is described in detail in: L<Paws::AppRunner::UpdateVpcIngressConnection>

Returns: a L<Paws::AppRunner::UpdateVpcIngressConnectionResponse> instance

Update an existing App Runner VPC Ingress Connection resource. The VPC
Ingress Connection must be in one of the following states to be
updated:

=over

=item *

AVAILABLE

=item *

FAILED_CREATION

=item *

FAILED_UPDATE

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

