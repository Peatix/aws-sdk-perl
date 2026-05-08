package Paws::OpenSearch;
  use Moose;
  sub service { 'es' }
  sub signing_name { 'es' }
  sub version { '2021-01-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AcceptInboundConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::AcceptInboundConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::AddDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddDirectQueryDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::AddDirectQueryDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::AddTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociatePackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::AssociatePackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociatePackages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::AssociatePackages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AuthorizeVpcEndpointAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::AuthorizeVpcEndpointAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelDomainConfigChange {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::CancelDomainConfigChange', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelServiceSoftwareUpdate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::CancelServiceSoftwareUpdate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::CreateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::CreateDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateOutboundConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::CreateOutboundConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::CreatePackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpcEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::CreateVpcEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DeleteApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DeleteDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDirectQueryDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DeleteDirectQueryDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DeleteDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInboundConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DeleteInboundConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteOutboundConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DeleteOutboundConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DeletePackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpcEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DeleteVpcEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DescribeDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDomainAutoTunes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DescribeDomainAutoTunes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDomainChangeProgress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DescribeDomainChangeProgress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDomainConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DescribeDomainConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDomainHealth {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DescribeDomainHealth', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDomainNodes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DescribeDomainNodes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DescribeDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDryRunProgress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DescribeDryRunProgress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInboundConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DescribeInboundConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceTypeLimits {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DescribeInstanceTypeLimits', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeOutboundConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DescribeOutboundConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePackages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DescribePackages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservedInstanceOfferings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DescribeReservedInstanceOfferings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservedInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DescribeReservedInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DescribeVpcEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DissociatePackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DissociatePackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DissociatePackages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::DissociatePackages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::GetApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCompatibleVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::GetCompatibleVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::GetDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDirectQueryDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::GetDirectQueryDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDomainMaintenanceStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::GetDomainMaintenanceStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPackageVersionHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::GetPackageVersionHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUpgradeHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::GetUpgradeHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUpgradeStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::GetUpgradeStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::ListApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataSources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::ListDataSources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDirectQueryDataSources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::ListDirectQueryDataSources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomainMaintenances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::ListDomainMaintenances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomainNames {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::ListDomainNames', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomainsForPackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::ListDomainsForPackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInstanceTypeDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::ListInstanceTypeDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPackagesForDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::ListPackagesForDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListScheduledActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::ListScheduledActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::ListTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::ListVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVpcEndpointAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::ListVpcEndpointAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVpcEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::ListVpcEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVpcEndpointsForDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::ListVpcEndpointsForDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PurchaseReservedInstanceOffering {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::PurchaseReservedInstanceOffering', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectInboundConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::RejectInboundConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::RemoveTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeVpcEndpointAccess {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::RevokeVpcEndpointAccess', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDomainMaintenance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::StartDomainMaintenance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartServiceSoftwareUpdate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::StartServiceSoftwareUpdate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::UpdateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::UpdateDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDirectQueryDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::UpdateDirectQueryDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDomainConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::UpdateDomainConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePackage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::UpdatePackage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePackageScope {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::UpdatePackageScope', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateScheduledAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::UpdateScheduledAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVpcEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::UpdateVpcEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpgradeDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearch::UpgradeDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllApplications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListApplications(@_, nextToken => $next_result->nextToken);
        push @{ $result->ApplicationSummaries }, @{ $next_result->ApplicationSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'ApplicationSummaries') foreach (@{ $result->ApplicationSummaries });
        $result = $self->ListApplications(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'ApplicationSummaries') foreach (@{ $result->ApplicationSummaries });
    }

    return undef
  }


  sub operations { qw/AcceptInboundConnection AddDataSource AddDirectQueryDataSource AddTags AssociatePackage AssociatePackages AuthorizeVpcEndpointAccess CancelDomainConfigChange CancelServiceSoftwareUpdate CreateApplication CreateDomain CreateOutboundConnection CreatePackage CreateVpcEndpoint DeleteApplication DeleteDataSource DeleteDirectQueryDataSource DeleteDomain DeleteInboundConnection DeleteOutboundConnection DeletePackage DeleteVpcEndpoint DescribeDomain DescribeDomainAutoTunes DescribeDomainChangeProgress DescribeDomainConfig DescribeDomainHealth DescribeDomainNodes DescribeDomains DescribeDryRunProgress DescribeInboundConnections DescribeInstanceTypeLimits DescribeOutboundConnections DescribePackages DescribeReservedInstanceOfferings DescribeReservedInstances DescribeVpcEndpoints DissociatePackage DissociatePackages GetApplication GetCompatibleVersions GetDataSource GetDirectQueryDataSource GetDomainMaintenanceStatus GetPackageVersionHistory GetUpgradeHistory GetUpgradeStatus ListApplications ListDataSources ListDirectQueryDataSources ListDomainMaintenances ListDomainNames ListDomainsForPackage ListInstanceTypeDetails ListPackagesForDomain ListScheduledActions ListTags ListVersions ListVpcEndpointAccess ListVpcEndpoints ListVpcEndpointsForDomain PurchaseReservedInstanceOffering RejectInboundConnection RemoveTags RevokeVpcEndpointAccess StartDomainMaintenance StartServiceSoftwareUpdate UpdateApplication UpdateDataSource UpdateDirectQueryDataSource UpdateDomainConfig UpdatePackage UpdatePackageScope UpdateScheduledAction UpdateVpcEndpoint UpgradeDomain / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch - Perl Interface to AWS Amazon OpenSearch Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('OpenSearch');
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

Use the Amazon OpenSearch Service configuration API to create,
configure, and manage OpenSearch Service domains. The endpoint for
configuration service requests is Region specific:
es.I<region>.amazonaws.com. For example, es.us-east-1.amazonaws.com.
For a current list of supported Regions and endpoints, see Amazon Web
Services service endpoints
(https://docs.aws.amazon.com/general/latest/gr/rande.html#service-regions).

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AcceptInboundConnection

=over

=item ConnectionId => Str


=back

Each argument is described in detail in: L<Paws::OpenSearch::AcceptInboundConnection>

Returns: a L<Paws::OpenSearch::AcceptInboundConnectionResponse> instance

Allows the destination Amazon OpenSearch Service domain owner to accept
an inbound cross-cluster search connection request. For more
information, see Cross-cluster search for Amazon OpenSearch Service
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).


=head2 AddDataSource

=over

=item DataSourceType => L<Paws::OpenSearch::DataSourceType>

=item DomainName => Str

=item Name => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::AddDataSource>

Returns: a L<Paws::OpenSearch::AddDataSourceResponse> instance

Creates a new direct-query data source to the specified domain. For
more information, see Creating Amazon OpenSearch Service data source
integrations with Amazon S3
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3-creating.html).


=head2 AddDirectQueryDataSource

=over

=item DataSourceName => Str

=item DataSourceType => L<Paws::OpenSearch::DirectQueryDataSourceType>

=item OpenSearchArns => ArrayRef[Str|Undef]

=item [Description => Str]

=item [TagList => ArrayRef[L<Paws::OpenSearch::Tag>]]


=back

Each argument is described in detail in: L<Paws::OpenSearch::AddDirectQueryDataSource>

Returns: a L<Paws::OpenSearch::AddDirectQueryDataSourceResponse> instance

Adds a new data source in Amazon OpenSearch Service so that you can
perform direct queries on external data.


=head2 AddTags

=over

=item ARN => Str

=item TagList => ArrayRef[L<Paws::OpenSearch::Tag>]


=back

Each argument is described in detail in: L<Paws::OpenSearch::AddTags>

Returns: nothing

Attaches tags to an existing Amazon OpenSearch Service domain, data
source, or application.

Tags are a set of case-sensitive key-value pairs. A domain, data
source, or application can have up to 10 tags. For more information,
see Tagging Amazon OpenSearch Service resources
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-awsresourcetagging.html).


=head2 AssociatePackage

=over

=item DomainName => Str

=item PackageID => Str

=item [AssociationConfiguration => L<Paws::OpenSearch::PackageAssociationConfiguration>]

=item [PrerequisitePackageIDList => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::OpenSearch::AssociatePackage>

Returns: a L<Paws::OpenSearch::AssociatePackageResponse> instance

Associates a package with an Amazon OpenSearch Service domain. For more
information, see Custom packages for Amazon OpenSearch Service
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).


=head2 AssociatePackages

=over

=item DomainName => Str

=item PackageList => ArrayRef[L<Paws::OpenSearch::PackageDetailsForAssociation>]


=back

Each argument is described in detail in: L<Paws::OpenSearch::AssociatePackages>

Returns: a L<Paws::OpenSearch::AssociatePackagesResponse> instance

Operation in the Amazon OpenSearch Service API for associating multiple
packages with a domain simultaneously.


=head2 AuthorizeVpcEndpointAccess

=over

=item DomainName => Str

=item [Account => Str]

=item [Service => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::AuthorizeVpcEndpointAccess>

Returns: a L<Paws::OpenSearch::AuthorizeVpcEndpointAccessResponse> instance

Provides access to an Amazon OpenSearch Service domain through the use
of an interface VPC endpoint.


=head2 CancelDomainConfigChange

=over

=item DomainName => Str

=item [DryRun => Bool]


=back

Each argument is described in detail in: L<Paws::OpenSearch::CancelDomainConfigChange>

Returns: a L<Paws::OpenSearch::CancelDomainConfigChangeResponse> instance

Cancels a pending configuration change on an Amazon OpenSearch Service
domain.


=head2 CancelServiceSoftwareUpdate

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::OpenSearch::CancelServiceSoftwareUpdate>

Returns: a L<Paws::OpenSearch::CancelServiceSoftwareUpdateResponse> instance

Cancels a scheduled service software update for an Amazon OpenSearch
Service domain. You can only perform this operation before the
C<AutomatedUpdateDate> and when the domain's C<UpdateStatus> is
C<PENDING_UPDATE>. For more information, see Service software updates
in Amazon OpenSearch Service
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html).


=head2 CreateApplication

=over

=item Name => Str

=item [AppConfigs => ArrayRef[L<Paws::OpenSearch::AppConfig>]]

=item [ClientToken => Str]

=item [DataSources => ArrayRef[L<Paws::OpenSearch::DataSource>]]

=item [IamIdentityCenterOptions => L<Paws::OpenSearch::IamIdentityCenterOptionsInput>]

=item [TagList => ArrayRef[L<Paws::OpenSearch::Tag>]]


=back

Each argument is described in detail in: L<Paws::OpenSearch::CreateApplication>

Returns: a L<Paws::OpenSearch::CreateApplicationResponse> instance

Creates an OpenSearch UI application. For more information, see Using
the OpenSearch user interface in Amazon OpenSearch Service
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/application.html).


=head2 CreateDomain

=over

=item DomainName => Str

=item [AccessPolicies => Str]

=item [AdvancedOptions => L<Paws::OpenSearch::AdvancedOptions>]

=item [AdvancedSecurityOptions => L<Paws::OpenSearch::AdvancedSecurityOptionsInput>]

=item [AIMLOptions => L<Paws::OpenSearch::AIMLOptionsInput>]

=item [AutoTuneOptions => L<Paws::OpenSearch::AutoTuneOptionsInput>]

=item [ClusterConfig => L<Paws::OpenSearch::ClusterConfig>]

=item [CognitoOptions => L<Paws::OpenSearch::CognitoOptions>]

=item [DomainEndpointOptions => L<Paws::OpenSearch::DomainEndpointOptions>]

=item [EBSOptions => L<Paws::OpenSearch::EBSOptions>]

=item [EncryptionAtRestOptions => L<Paws::OpenSearch::EncryptionAtRestOptions>]

=item [EngineVersion => Str]

=item [IdentityCenterOptions => L<Paws::OpenSearch::IdentityCenterOptionsInput>]

=item [IPAddressType => Str]

=item [LogPublishingOptions => L<Paws::OpenSearch::LogPublishingOptions>]

=item [NodeToNodeEncryptionOptions => L<Paws::OpenSearch::NodeToNodeEncryptionOptions>]

=item [OffPeakWindowOptions => L<Paws::OpenSearch::OffPeakWindowOptions>]

=item [SnapshotOptions => L<Paws::OpenSearch::SnapshotOptions>]

=item [SoftwareUpdateOptions => L<Paws::OpenSearch::SoftwareUpdateOptions>]

=item [TagList => ArrayRef[L<Paws::OpenSearch::Tag>]]

=item [VPCOptions => L<Paws::OpenSearch::VPCOptions>]


=back

Each argument is described in detail in: L<Paws::OpenSearch::CreateDomain>

Returns: a L<Paws::OpenSearch::CreateDomainResponse> instance

Creates an Amazon OpenSearch Service domain. For more information, see
Creating and managing Amazon OpenSearch Service domains
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html).


=head2 CreateOutboundConnection

=over

=item ConnectionAlias => Str

=item LocalDomainInfo => L<Paws::OpenSearch::DomainInformationContainer>

=item RemoteDomainInfo => L<Paws::OpenSearch::DomainInformationContainer>

=item [ConnectionMode => Str]

=item [ConnectionProperties => L<Paws::OpenSearch::ConnectionProperties>]


=back

Each argument is described in detail in: L<Paws::OpenSearch::CreateOutboundConnection>

Returns: a L<Paws::OpenSearch::CreateOutboundConnectionResponse> instance

Creates a new cross-cluster search connection from a source Amazon
OpenSearch Service domain to a destination domain. For more
information, see Cross-cluster search for Amazon OpenSearch Service
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).


=head2 CreatePackage

=over

=item PackageName => Str

=item PackageSource => L<Paws::OpenSearch::PackageSource>

=item PackageType => Str

=item [EngineVersion => Str]

=item [PackageConfiguration => L<Paws::OpenSearch::PackageConfiguration>]

=item [PackageDescription => Str]

=item [PackageEncryptionOptions => L<Paws::OpenSearch::PackageEncryptionOptions>]

=item [PackageVendingOptions => L<Paws::OpenSearch::PackageVendingOptions>]


=back

Each argument is described in detail in: L<Paws::OpenSearch::CreatePackage>

Returns: a L<Paws::OpenSearch::CreatePackageResponse> instance

Creates a package for use with Amazon OpenSearch Service domains. For
more information, see Custom packages for Amazon OpenSearch Service
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).


=head2 CreateVpcEndpoint

=over

=item DomainArn => Str

=item VpcOptions => L<Paws::OpenSearch::VPCOptions>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::CreateVpcEndpoint>

Returns: a L<Paws::OpenSearch::CreateVpcEndpointResponse> instance

Creates an Amazon OpenSearch Service-managed VPC endpoint.


=head2 DeleteApplication

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::OpenSearch::DeleteApplication>

Returns: a L<Paws::OpenSearch::DeleteApplicationResponse> instance

Deletes a specified OpenSearch application.


=head2 DeleteDataSource

=over

=item DomainName => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::OpenSearch::DeleteDataSource>

Returns: a L<Paws::OpenSearch::DeleteDataSourceResponse> instance

Deletes a direct-query data source. For more information, see Deleting
an Amazon OpenSearch Service data source with Amazon S3
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3-delete.html).


=head2 DeleteDirectQueryDataSource

=over

=item DataSourceName => Str


=back

Each argument is described in detail in: L<Paws::OpenSearch::DeleteDirectQueryDataSource>

Returns: nothing

Deletes a previously configured direct query data source from Amazon
OpenSearch Service.


=head2 DeleteDomain

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::OpenSearch::DeleteDomain>

Returns: a L<Paws::OpenSearch::DeleteDomainResponse> instance

Deletes an Amazon OpenSearch Service domain and all of its data. You
can't recover a domain after you delete it.


=head2 DeleteInboundConnection

=over

=item ConnectionId => Str


=back

Each argument is described in detail in: L<Paws::OpenSearch::DeleteInboundConnection>

Returns: a L<Paws::OpenSearch::DeleteInboundConnectionResponse> instance

Allows the destination Amazon OpenSearch Service domain owner to delete
an existing inbound cross-cluster search connection. For more
information, see Cross-cluster search for Amazon OpenSearch Service
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).


=head2 DeleteOutboundConnection

=over

=item ConnectionId => Str


=back

Each argument is described in detail in: L<Paws::OpenSearch::DeleteOutboundConnection>

Returns: a L<Paws::OpenSearch::DeleteOutboundConnectionResponse> instance

Allows the source Amazon OpenSearch Service domain owner to delete an
existing outbound cross-cluster search connection. For more
information, see Cross-cluster search for Amazon OpenSearch Service
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).


=head2 DeletePackage

=over

=item PackageID => Str


=back

Each argument is described in detail in: L<Paws::OpenSearch::DeletePackage>

Returns: a L<Paws::OpenSearch::DeletePackageResponse> instance

Deletes an Amazon OpenSearch Service package. For more information, see
Custom packages for Amazon OpenSearch Service
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).


=head2 DeleteVpcEndpoint

=over

=item VpcEndpointId => Str


=back

Each argument is described in detail in: L<Paws::OpenSearch::DeleteVpcEndpoint>

Returns: a L<Paws::OpenSearch::DeleteVpcEndpointResponse> instance

Deletes an Amazon OpenSearch Service-managed interface VPC endpoint.


=head2 DescribeDomain

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::OpenSearch::DescribeDomain>

Returns: a L<Paws::OpenSearch::DescribeDomainResponse> instance

Describes the domain configuration for the specified Amazon OpenSearch
Service domain, including the domain ID, domain service endpoint, and
domain ARN.


=head2 DescribeDomainAutoTunes

=over

=item DomainName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::DescribeDomainAutoTunes>

Returns: a L<Paws::OpenSearch::DescribeDomainAutoTunesResponse> instance

Returns the list of optimizations that Auto-Tune has made to an Amazon
OpenSearch Service domain. For more information, see Auto-Tune for
Amazon OpenSearch Service
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html).


=head2 DescribeDomainChangeProgress

=over

=item DomainName => Str

=item [ChangeId => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::DescribeDomainChangeProgress>

Returns: a L<Paws::OpenSearch::DescribeDomainChangeProgressResponse> instance

Returns information about the current blue/green deployment happening
on an Amazon OpenSearch Service domain. For more information, see
Making configuration changes in Amazon OpenSearch Service
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-configuration-changes.html).


=head2 DescribeDomainConfig

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::OpenSearch::DescribeDomainConfig>

Returns: a L<Paws::OpenSearch::DescribeDomainConfigResponse> instance

Returns the configuration of an Amazon OpenSearch Service domain.


=head2 DescribeDomainHealth

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::OpenSearch::DescribeDomainHealth>

Returns: a L<Paws::OpenSearch::DescribeDomainHealthResponse> instance

Returns information about domain and node health, the standby
Availability Zone, number of nodes per Availability Zone, and shard
count per node.


=head2 DescribeDomainNodes

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::OpenSearch::DescribeDomainNodes>

Returns: a L<Paws::OpenSearch::DescribeDomainNodesResponse> instance

Returns information about domain and nodes, including data nodes,
master nodes, ultrawarm nodes, Availability Zone(s), standby nodes,
node configurations, and node states.


=head2 DescribeDomains

=over

=item DomainNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::OpenSearch::DescribeDomains>

Returns: a L<Paws::OpenSearch::DescribeDomainsResponse> instance

Returns domain configuration information about the specified Amazon
OpenSearch Service domains.


=head2 DescribeDryRunProgress

=over

=item DomainName => Str

=item [DryRunId => Str]

=item [LoadDryRunConfig => Bool]


=back

Each argument is described in detail in: L<Paws::OpenSearch::DescribeDryRunProgress>

Returns: a L<Paws::OpenSearch::DescribeDryRunProgressResponse> instance

Describes the progress of a pre-update dry run analysis on an Amazon
OpenSearch Service domain. For more information, see Determining
whether a change will cause a blue/green deployment
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-configuration-changes#dryrun).


=head2 DescribeInboundConnections

=over

=item [Filters => ArrayRef[L<Paws::OpenSearch::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::DescribeInboundConnections>

Returns: a L<Paws::OpenSearch::DescribeInboundConnectionsResponse> instance

Lists all the inbound cross-cluster search connections for a
destination (remote) Amazon OpenSearch Service domain. For more
information, see Cross-cluster search for Amazon OpenSearch Service
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).


=head2 DescribeInstanceTypeLimits

=over

=item EngineVersion => Str

=item InstanceType => Str

=item [DomainName => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::DescribeInstanceTypeLimits>

Returns: a L<Paws::OpenSearch::DescribeInstanceTypeLimitsResponse> instance

Describes the instance count, storage, and master node limits for a
given OpenSearch or Elasticsearch version and instance type.


=head2 DescribeOutboundConnections

=over

=item [Filters => ArrayRef[L<Paws::OpenSearch::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::DescribeOutboundConnections>

Returns: a L<Paws::OpenSearch::DescribeOutboundConnectionsResponse> instance

Lists all the outbound cross-cluster connections for a local (source)
Amazon OpenSearch Service domain. For more information, see
Cross-cluster search for Amazon OpenSearch Service
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).


=head2 DescribePackages

=over

=item [Filters => ArrayRef[L<Paws::OpenSearch::DescribePackagesFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::DescribePackages>

Returns: a L<Paws::OpenSearch::DescribePackagesResponse> instance

Describes all packages available to OpenSearch Service. For more
information, see Custom packages for Amazon OpenSearch Service
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).


=head2 DescribeReservedInstanceOfferings

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ReservedInstanceOfferingId => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::DescribeReservedInstanceOfferings>

Returns: a L<Paws::OpenSearch::DescribeReservedInstanceOfferingsResponse> instance

Describes the available Amazon OpenSearch Service Reserved Instance
offerings for a given Region. For more information, see Reserved
Instances in Amazon OpenSearch Service
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ri.html).


=head2 DescribeReservedInstances

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ReservedInstanceId => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::DescribeReservedInstances>

Returns: a L<Paws::OpenSearch::DescribeReservedInstancesResponse> instance

Describes the Amazon OpenSearch Service instances that you have
reserved in a given Region. For more information, see Reserved
Instances in Amazon OpenSearch Service
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ri.html).


=head2 DescribeVpcEndpoints

=over

=item VpcEndpointIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::OpenSearch::DescribeVpcEndpoints>

Returns: a L<Paws::OpenSearch::DescribeVpcEndpointsResponse> instance

Describes one or more Amazon OpenSearch Service-managed VPC endpoints.


=head2 DissociatePackage

=over

=item DomainName => Str

=item PackageID => Str


=back

Each argument is described in detail in: L<Paws::OpenSearch::DissociatePackage>

Returns: a L<Paws::OpenSearch::DissociatePackageResponse> instance

Removes a package from the specified Amazon OpenSearch Service domain.
The package can't be in use with any OpenSearch index for the
dissociation to succeed. The package is still available in OpenSearch
Service for association later. For more information, see Custom
packages for Amazon OpenSearch Service
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).


=head2 DissociatePackages

=over

=item DomainName => Str

=item PackageList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::OpenSearch::DissociatePackages>

Returns: a L<Paws::OpenSearch::DissociatePackagesResponse> instance

Dissociates multiple packages from a domain simulatneously.


=head2 GetApplication

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::OpenSearch::GetApplication>

Returns: a L<Paws::OpenSearch::GetApplicationResponse> instance

Retrieves the configuration and status of an existing OpenSearch
application.


=head2 GetCompatibleVersions

=over

=item [DomainName => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::GetCompatibleVersions>

Returns: a L<Paws::OpenSearch::GetCompatibleVersionsResponse> instance

Returns a map of OpenSearch or Elasticsearch versions and the versions
you can upgrade them to.


=head2 GetDataSource

=over

=item DomainName => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::OpenSearch::GetDataSource>

Returns: a L<Paws::OpenSearch::GetDataSourceResponse> instance

Retrieves information about a direct query data source.


=head2 GetDirectQueryDataSource

=over

=item DataSourceName => Str


=back

Each argument is described in detail in: L<Paws::OpenSearch::GetDirectQueryDataSource>

Returns: a L<Paws::OpenSearch::GetDirectQueryDataSourceResponse> instance

Returns detailed configuration information for a specific direct query
data source in Amazon OpenSearch Service.


=head2 GetDomainMaintenanceStatus

=over

=item DomainName => Str

=item MaintenanceId => Str


=back

Each argument is described in detail in: L<Paws::OpenSearch::GetDomainMaintenanceStatus>

Returns: a L<Paws::OpenSearch::GetDomainMaintenanceStatusResponse> instance

The status of the maintenance action.


=head2 GetPackageVersionHistory

=over

=item PackageID => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::GetPackageVersionHistory>

Returns: a L<Paws::OpenSearch::GetPackageVersionHistoryResponse> instance

Returns a list of Amazon OpenSearch Service package versions, along
with their creation time, commit message, and plugin properties (if the
package is a zip plugin package). For more information, see Custom
packages for Amazon OpenSearch Service
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).


=head2 GetUpgradeHistory

=over

=item DomainName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::GetUpgradeHistory>

Returns: a L<Paws::OpenSearch::GetUpgradeHistoryResponse> instance

Retrieves the complete history of the last 10 upgrades performed on an
Amazon OpenSearch Service domain.


=head2 GetUpgradeStatus

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::OpenSearch::GetUpgradeStatus>

Returns: a L<Paws::OpenSearch::GetUpgradeStatusResponse> instance

Returns the most recent status of the last upgrade or upgrade
eligibility check performed on an Amazon OpenSearch Service domain.


=head2 ListApplications

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Statuses => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::OpenSearch::ListApplications>

Returns: a L<Paws::OpenSearch::ListApplicationsResponse> instance

Lists all OpenSearch applications under your account.


=head2 ListDataSources

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::OpenSearch::ListDataSources>

Returns: a L<Paws::OpenSearch::ListDataSourcesResponse> instance

Lists direct-query data sources for a specific domain. For more
information, see For more information, see Working with Amazon
OpenSearch Service direct queries with Amazon S3
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3.html).


=head2 ListDirectQueryDataSources

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::ListDirectQueryDataSources>

Returns: a L<Paws::OpenSearch::ListDirectQueryDataSourcesResponse> instance

Lists an inventory of all the direct query data sources that you have
configured within Amazon OpenSearch Service.


=head2 ListDomainMaintenances

=over

=item DomainName => Str

=item [Action => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::ListDomainMaintenances>

Returns: a L<Paws::OpenSearch::ListDomainMaintenancesResponse> instance

A list of maintenance actions for the domain.


=head2 ListDomainNames

=over

=item [EngineType => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::ListDomainNames>

Returns: a L<Paws::OpenSearch::ListDomainNamesResponse> instance

Returns the names of all Amazon OpenSearch Service domains owned by the
current user in the active Region.


=head2 ListDomainsForPackage

=over

=item PackageID => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::ListDomainsForPackage>

Returns: a L<Paws::OpenSearch::ListDomainsForPackageResponse> instance

Lists all Amazon OpenSearch Service domains associated with a given
package. For more information, see Custom packages for Amazon
OpenSearch Service
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).


=head2 ListInstanceTypeDetails

=over

=item EngineVersion => Str

=item [DomainName => Str]

=item [InstanceType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RetrieveAZs => Bool]


=back

Each argument is described in detail in: L<Paws::OpenSearch::ListInstanceTypeDetails>

Returns: a L<Paws::OpenSearch::ListInstanceTypeDetailsResponse> instance

Lists all instance types and available features for a given OpenSearch
or Elasticsearch version.


=head2 ListPackagesForDomain

=over

=item DomainName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::ListPackagesForDomain>

Returns: a L<Paws::OpenSearch::ListPackagesForDomainResponse> instance

Lists all packages associated with an Amazon OpenSearch Service domain.
For more information, see Custom packages for Amazon OpenSearch Service
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).


=head2 ListScheduledActions

=over

=item DomainName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::ListScheduledActions>

Returns: a L<Paws::OpenSearch::ListScheduledActionsResponse> instance

Retrieves a list of configuration changes that are scheduled for a
domain. These changes can be service software updates
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html)
or blue/green Auto-Tune enhancements
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html#auto-tune-types).


=head2 ListTags

=over

=item ARN => Str


=back

Each argument is described in detail in: L<Paws::OpenSearch::ListTags>

Returns: a L<Paws::OpenSearch::ListTagsResponse> instance

Returns all resource tags for an Amazon OpenSearch Service domain, data
source, or application. For more information, see Tagging Amazon
OpenSearch Service resources
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-awsresourcetagging.html).


=head2 ListVersions

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::ListVersions>

Returns: a L<Paws::OpenSearch::ListVersionsResponse> instance

Lists all versions of OpenSearch and Elasticsearch that Amazon
OpenSearch Service supports.


=head2 ListVpcEndpointAccess

=over

=item DomainName => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::ListVpcEndpointAccess>

Returns: a L<Paws::OpenSearch::ListVpcEndpointAccessResponse> instance

Retrieves information about each Amazon Web Services principal that is
allowed to access a given Amazon OpenSearch Service domain through the
use of an interface VPC endpoint.


=head2 ListVpcEndpoints

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::ListVpcEndpoints>

Returns: a L<Paws::OpenSearch::ListVpcEndpointsResponse> instance

Retrieves all Amazon OpenSearch Service-managed VPC endpoints in the
current Amazon Web Services account and Region.


=head2 ListVpcEndpointsForDomain

=over

=item DomainName => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::ListVpcEndpointsForDomain>

Returns: a L<Paws::OpenSearch::ListVpcEndpointsForDomainResponse> instance

Retrieves all Amazon OpenSearch Service-managed VPC endpoints
associated with a particular domain.


=head2 PurchaseReservedInstanceOffering

=over

=item ReservationName => Str

=item ReservedInstanceOfferingId => Str

=item [InstanceCount => Int]


=back

Each argument is described in detail in: L<Paws::OpenSearch::PurchaseReservedInstanceOffering>

Returns: a L<Paws::OpenSearch::PurchaseReservedInstanceOfferingResponse> instance

Allows you to purchase Amazon OpenSearch Service Reserved Instances.


=head2 RejectInboundConnection

=over

=item ConnectionId => Str


=back

Each argument is described in detail in: L<Paws::OpenSearch::RejectInboundConnection>

Returns: a L<Paws::OpenSearch::RejectInboundConnectionResponse> instance

Allows the remote Amazon OpenSearch Service domain owner to reject an
inbound cross-cluster connection request.


=head2 RemoveTags

=over

=item ARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::OpenSearch::RemoveTags>

Returns: nothing

Removes the specified set of tags from an Amazon OpenSearch Service
domain, data source, or application. For more information, see Tagging
Amazon OpenSearch Service resources
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains.html#managedomains-awsresorcetagging).


=head2 RevokeVpcEndpointAccess

=over

=item DomainName => Str

=item [Account => Str]

=item [Service => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::RevokeVpcEndpointAccess>

Returns: a L<Paws::OpenSearch::RevokeVpcEndpointAccessResponse> instance

Revokes access to an Amazon OpenSearch Service domain that was provided
through an interface VPC endpoint.


=head2 StartDomainMaintenance

=over

=item Action => Str

=item DomainName => Str

=item [NodeId => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::StartDomainMaintenance>

Returns: a L<Paws::OpenSearch::StartDomainMaintenanceResponse> instance

Starts the node maintenance process on the data node. These processes
can include a node reboot, an Opensearch or Elasticsearch process
restart, or a Dashboard or Kibana restart.


=head2 StartServiceSoftwareUpdate

=over

=item DomainName => Str

=item [DesiredStartTime => Int]

=item [ScheduleAt => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::StartServiceSoftwareUpdate>

Returns: a L<Paws::OpenSearch::StartServiceSoftwareUpdateResponse> instance

Schedules a service software update for an Amazon OpenSearch Service
domain. For more information, see Service software updates in Amazon
OpenSearch Service
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html).


=head2 UpdateApplication

=over

=item Id => Str

=item [AppConfigs => ArrayRef[L<Paws::OpenSearch::AppConfig>]]

=item [DataSources => ArrayRef[L<Paws::OpenSearch::DataSource>]]


=back

Each argument is described in detail in: L<Paws::OpenSearch::UpdateApplication>

Returns: a L<Paws::OpenSearch::UpdateApplicationResponse> instance

Updates the configuration and settings of an existing OpenSearch
application.


=head2 UpdateDataSource

=over

=item DataSourceType => L<Paws::OpenSearch::DataSourceType>

=item DomainName => Str

=item Name => Str

=item [Description => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::UpdateDataSource>

Returns: a L<Paws::OpenSearch::UpdateDataSourceResponse> instance

Updates a direct-query data source. For more information, see Working
with Amazon OpenSearch Service data source integrations with Amazon S3
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3-creating.html).


=head2 UpdateDirectQueryDataSource

=over

=item DataSourceName => Str

=item DataSourceType => L<Paws::OpenSearch::DirectQueryDataSourceType>

=item OpenSearchArns => ArrayRef[Str|Undef]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearch::UpdateDirectQueryDataSource>

Returns: a L<Paws::OpenSearch::UpdateDirectQueryDataSourceResponse> instance

Updates the configuration or properties of an existing direct query
data source in Amazon OpenSearch Service.


=head2 UpdateDomainConfig

=over

=item DomainName => Str

=item [AccessPolicies => Str]

=item [AdvancedOptions => L<Paws::OpenSearch::AdvancedOptions>]

=item [AdvancedSecurityOptions => L<Paws::OpenSearch::AdvancedSecurityOptionsInput>]

=item [AIMLOptions => L<Paws::OpenSearch::AIMLOptionsInput>]

=item [AutoTuneOptions => L<Paws::OpenSearch::AutoTuneOptions>]

=item [ClusterConfig => L<Paws::OpenSearch::ClusterConfig>]

=item [CognitoOptions => L<Paws::OpenSearch::CognitoOptions>]

=item [DomainEndpointOptions => L<Paws::OpenSearch::DomainEndpointOptions>]

=item [DryRun => Bool]

=item [DryRunMode => Str]

=item [EBSOptions => L<Paws::OpenSearch::EBSOptions>]

=item [EncryptionAtRestOptions => L<Paws::OpenSearch::EncryptionAtRestOptions>]

=item [IdentityCenterOptions => L<Paws::OpenSearch::IdentityCenterOptionsInput>]

=item [IPAddressType => Str]

=item [LogPublishingOptions => L<Paws::OpenSearch::LogPublishingOptions>]

=item [NodeToNodeEncryptionOptions => L<Paws::OpenSearch::NodeToNodeEncryptionOptions>]

=item [OffPeakWindowOptions => L<Paws::OpenSearch::OffPeakWindowOptions>]

=item [SnapshotOptions => L<Paws::OpenSearch::SnapshotOptions>]

=item [SoftwareUpdateOptions => L<Paws::OpenSearch::SoftwareUpdateOptions>]

=item [VPCOptions => L<Paws::OpenSearch::VPCOptions>]


=back

Each argument is described in detail in: L<Paws::OpenSearch::UpdateDomainConfig>

Returns: a L<Paws::OpenSearch::UpdateDomainConfigResponse> instance

Modifies the cluster configuration of the specified Amazon OpenSearch
Service domain.


=head2 UpdatePackage

=over

=item PackageID => Str

=item PackageSource => L<Paws::OpenSearch::PackageSource>

=item [CommitMessage => Str]

=item [PackageConfiguration => L<Paws::OpenSearch::PackageConfiguration>]

=item [PackageDescription => Str]

=item [PackageEncryptionOptions => L<Paws::OpenSearch::PackageEncryptionOptions>]


=back

Each argument is described in detail in: L<Paws::OpenSearch::UpdatePackage>

Returns: a L<Paws::OpenSearch::UpdatePackageResponse> instance

Updates a package for use with Amazon OpenSearch Service domains. For
more information, see Custom packages for Amazon OpenSearch Service
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).


=head2 UpdatePackageScope

=over

=item Operation => Str

=item PackageID => Str

=item PackageUserList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::OpenSearch::UpdatePackageScope>

Returns: a L<Paws::OpenSearch::UpdatePackageScopeResponse> instance

Updates the scope of a package. Scope of the package defines users who
can view and associate a package.


=head2 UpdateScheduledAction

=over

=item ActionID => Str

=item ActionType => Str

=item DomainName => Str

=item ScheduleAt => Str

=item [DesiredStartTime => Int]


=back

Each argument is described in detail in: L<Paws::OpenSearch::UpdateScheduledAction>

Returns: a L<Paws::OpenSearch::UpdateScheduledActionResponse> instance

Reschedules a planned domain configuration change for a later time.
This change can be a scheduled service software update
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html)
or a blue/green Auto-Tune enhancement
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html#auto-tune-types).


=head2 UpdateVpcEndpoint

=over

=item VpcEndpointId => Str

=item VpcOptions => L<Paws::OpenSearch::VPCOptions>


=back

Each argument is described in detail in: L<Paws::OpenSearch::UpdateVpcEndpoint>

Returns: a L<Paws::OpenSearch::UpdateVpcEndpointResponse> instance

Modifies an Amazon OpenSearch Service-managed interface VPC endpoint.


=head2 UpgradeDomain

=over

=item DomainName => Str

=item TargetVersion => Str

=item [AdvancedOptions => L<Paws::OpenSearch::AdvancedOptions>]

=item [PerformCheckOnly => Bool]


=back

Each argument is described in detail in: L<Paws::OpenSearch::UpgradeDomain>

Returns: a L<Paws::OpenSearch::UpgradeDomainResponse> instance

Allows you to either upgrade your Amazon OpenSearch Service domain or
perform an upgrade eligibility check to a compatible version of
OpenSearch or Elasticsearch.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllApplications(sub { },[MaxResults => Int, NextToken => Str, Statuses => ArrayRef[Str|Undef]])

=head2 ListAllApplications([MaxResults => Int, NextToken => Str, Statuses => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ApplicationSummaries, passing the object as the first parameter, and the string 'ApplicationSummaries' as the second parameter 

If not, it will return a a L<Paws::OpenSearch::ListApplicationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

