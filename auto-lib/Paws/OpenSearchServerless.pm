package Paws::OpenSearchServerless;
  use Moose;
  sub service { 'aoss' }
  sub signing_name { 'aoss' }
  sub version { '2021-11-01' }
  sub target_prefix { 'OpenSearchServerless' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub BatchGetCollection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::BatchGetCollection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetEffectiveLifecyclePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::BatchGetEffectiveLifecyclePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetLifecyclePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::BatchGetLifecyclePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetVpcEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::BatchGetVpcEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::CreateAccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCollection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::CreateCollection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLifecyclePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::CreateLifecyclePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSecurityConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::CreateSecurityConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSecurityPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::CreateSecurityPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpcEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::CreateVpcEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::DeleteAccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCollection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::DeleteCollection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLifecyclePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::DeleteLifecyclePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSecurityConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::DeleteSecurityConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSecurityPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::DeleteSecurityPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpcEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::DeleteVpcEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::GetAccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::GetAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPoliciesStats {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::GetPoliciesStats', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSecurityConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::GetSecurityConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSecurityPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::GetSecurityPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccessPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::ListAccessPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCollections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::ListCollections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLifecyclePolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::ListLifecyclePolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSecurityConfigs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::ListSecurityConfigs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSecurityPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::ListSecurityPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVpcEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::ListVpcEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAccessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::UpdateAccessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::UpdateAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCollection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::UpdateCollection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLifecyclePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::UpdateLifecyclePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSecurityConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::UpdateSecurityConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSecurityPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::UpdateSecurityPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVpcEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpenSearchServerless::UpdateVpcEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/BatchGetCollection BatchGetEffectiveLifecyclePolicy BatchGetLifecyclePolicy BatchGetVpcEndpoint CreateAccessPolicy CreateCollection CreateLifecyclePolicy CreateSecurityConfig CreateSecurityPolicy CreateVpcEndpoint DeleteAccessPolicy DeleteCollection DeleteLifecyclePolicy DeleteSecurityConfig DeleteSecurityPolicy DeleteVpcEndpoint GetAccessPolicy GetAccountSettings GetPoliciesStats GetSecurityConfig GetSecurityPolicy ListAccessPolicies ListCollections ListLifecyclePolicies ListSecurityConfigs ListSecurityPolicies ListTagsForResource ListVpcEndpoints TagResource UntagResource UpdateAccessPolicy UpdateAccountSettings UpdateCollection UpdateLifecyclePolicy UpdateSecurityConfig UpdateSecurityPolicy UpdateVpcEndpoint / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless - Perl Interface to AWS OpenSearch Service Serverless

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('OpenSearchServerless');
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

Use the Amazon OpenSearch Serverless API to create, configure, and
manage OpenSearch Serverless collections and security policies.

OpenSearch Serverless is an on-demand, pre-provisioned serverless
configuration for Amazon OpenSearch Service. OpenSearch Serverless
removes the operational complexities of provisioning, configuring, and
tuning your OpenSearch clusters. It enables you to easily search and
analyze petabytes of data without having to worry about the underlying
infrastructure and data management.

To learn more about OpenSearch Serverless, see What is Amazon
OpenSearch Serverless?
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-overview.html)

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aoss-2021-11-01>


=head1 METHODS

=head2 BatchGetCollection

=over

=item [Ids => ArrayRef[Str|Undef]]

=item [Names => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::BatchGetCollection>

Returns: a L<Paws::OpenSearchServerless::BatchGetCollectionResponse> instance

Returns attributes for one or more collections, including the
collection endpoint and the OpenSearch Dashboards endpoint. For more
information, see Creating and managing Amazon OpenSearch Serverless
collections
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html).


=head2 BatchGetEffectiveLifecyclePolicy

=over

=item ResourceIdentifiers => ArrayRef[L<Paws::OpenSearchServerless::LifecyclePolicyResourceIdentifier>]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::BatchGetEffectiveLifecyclePolicy>

Returns: a L<Paws::OpenSearchServerless::BatchGetEffectiveLifecyclePolicyResponse> instance

Returns a list of successful and failed retrievals for the OpenSearch
Serverless indexes. For more information, see Viewing data lifecycle
policies
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-list).


=head2 BatchGetLifecyclePolicy

=over

=item Identifiers => ArrayRef[L<Paws::OpenSearchServerless::LifecyclePolicyIdentifier>]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::BatchGetLifecyclePolicy>

Returns: a L<Paws::OpenSearchServerless::BatchGetLifecyclePolicyResponse> instance

Returns one or more configured OpenSearch Serverless lifecycle
policies. For more information, see Viewing data lifecycle policies
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-list).


=head2 BatchGetVpcEndpoint

=over

=item Ids => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::BatchGetVpcEndpoint>

Returns: a L<Paws::OpenSearchServerless::BatchGetVpcEndpointResponse> instance

Returns attributes for one or more VPC endpoints associated with the
current account. For more information, see Access Amazon OpenSearch
Serverless using an interface endpoint
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html).


=head2 CreateAccessPolicy

=over

=item Name => Str

=item Policy => Str

=item Type => Str

=item [ClientToken => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::CreateAccessPolicy>

Returns: a L<Paws::OpenSearchServerless::CreateAccessPolicyResponse> instance

Creates a data access policy for OpenSearch Serverless. Access policies
limit access to collections and the resources within them, and allow a
user to access that data irrespective of the access mechanism or
network source. For more information, see Data access control for
Amazon OpenSearch Serverless
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html).


=head2 CreateCollection

=over

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [StandbyReplicas => Str]

=item [Tags => ArrayRef[L<Paws::OpenSearchServerless::Tag>]]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::CreateCollection>

Returns: a L<Paws::OpenSearchServerless::CreateCollectionResponse> instance

Creates a new OpenSearch Serverless collection. For more information,
see Creating and managing Amazon OpenSearch Serverless collections
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html).


=head2 CreateLifecyclePolicy

=over

=item Name => Str

=item Policy => Str

=item Type => Str

=item [ClientToken => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::CreateLifecyclePolicy>

Returns: a L<Paws::OpenSearchServerless::CreateLifecyclePolicyResponse> instance

Creates a lifecyle policy to be applied to OpenSearch Serverless
indexes. Lifecycle policies define the number of days or hours to
retain the data on an OpenSearch Serverless index. For more
information, see Creating data lifecycle policies
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-create).


=head2 CreateSecurityConfig

=over

=item Name => Str

=item Type => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [IamIdentityCenterOptions => L<Paws::OpenSearchServerless::CreateIamIdentityCenterConfigOptions>]

=item [SamlOptions => L<Paws::OpenSearchServerless::SamlConfigOptions>]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::CreateSecurityConfig>

Returns: a L<Paws::OpenSearchServerless::CreateSecurityConfigResponse> instance

Specifies a security configuration for OpenSearch Serverless. For more
information, see SAML authentication for Amazon OpenSearch Serverless
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html).


=head2 CreateSecurityPolicy

=over

=item Name => Str

=item Policy => Str

=item Type => Str

=item [ClientToken => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::CreateSecurityPolicy>

Returns: a L<Paws::OpenSearchServerless::CreateSecurityPolicyResponse> instance

Creates a security policy to be used by one or more OpenSearch
Serverless collections. Security policies provide access to a
collection and its OpenSearch Dashboards endpoint from public networks
or specific VPC endpoints. They also allow you to secure a collection
with a KMS encryption key. For more information, see Network access for
Amazon OpenSearch Serverless
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html)
and Encryption at rest for Amazon OpenSearch Serverless
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html).


=head2 CreateVpcEndpoint

=over

=item Name => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item VpcId => Str

=item [ClientToken => Str]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::CreateVpcEndpoint>

Returns: a L<Paws::OpenSearchServerless::CreateVpcEndpointResponse> instance

Creates an OpenSearch Serverless-managed interface VPC endpoint. For
more information, see Access Amazon OpenSearch Serverless using an
interface endpoint
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html).


=head2 DeleteAccessPolicy

=over

=item Name => Str

=item Type => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::DeleteAccessPolicy>

Returns: a L<Paws::OpenSearchServerless::DeleteAccessPolicyResponse> instance

Deletes an OpenSearch Serverless access policy. For more information,
see Data access control for Amazon OpenSearch Serverless
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html).


=head2 DeleteCollection

=over

=item Id => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::DeleteCollection>

Returns: a L<Paws::OpenSearchServerless::DeleteCollectionResponse> instance

Deletes an OpenSearch Serverless collection. For more information, see
Creating and managing Amazon OpenSearch Serverless collections
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html).


=head2 DeleteLifecyclePolicy

=over

=item Name => Str

=item Type => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::DeleteLifecyclePolicy>

Returns: a L<Paws::OpenSearchServerless::DeleteLifecyclePolicyResponse> instance

Deletes an OpenSearch Serverless lifecycle policy. For more
information, see Deleting data lifecycle policies
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-delete).


=head2 DeleteSecurityConfig

=over

=item Id => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::DeleteSecurityConfig>

Returns: a L<Paws::OpenSearchServerless::DeleteSecurityConfigResponse> instance

Deletes a security configuration for OpenSearch Serverless. For more
information, see SAML authentication for Amazon OpenSearch Serverless
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html).


=head2 DeleteSecurityPolicy

=over

=item Name => Str

=item Type => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::DeleteSecurityPolicy>

Returns: a L<Paws::OpenSearchServerless::DeleteSecurityPolicyResponse> instance

Deletes an OpenSearch Serverless security policy.


=head2 DeleteVpcEndpoint

=over

=item Id => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::DeleteVpcEndpoint>

Returns: a L<Paws::OpenSearchServerless::DeleteVpcEndpointResponse> instance

Deletes an OpenSearch Serverless-managed interface endpoint. For more
information, see Access Amazon OpenSearch Serverless using an interface
endpoint
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html).


=head2 GetAccessPolicy

=over

=item Name => Str

=item Type => Str


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::GetAccessPolicy>

Returns: a L<Paws::OpenSearchServerless::GetAccessPolicyResponse> instance

Returns an OpenSearch Serverless access policy. For more information,
see Data access control for Amazon OpenSearch Serverless
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html).


=head2 GetAccountSettings






Each argument is described in detail in: L<Paws::OpenSearchServerless::GetAccountSettings>

Returns: a L<Paws::OpenSearchServerless::GetAccountSettingsResponse> instance

Returns account-level settings related to OpenSearch Serverless.


=head2 GetPoliciesStats






Each argument is described in detail in: L<Paws::OpenSearchServerless::GetPoliciesStats>

Returns: a L<Paws::OpenSearchServerless::GetPoliciesStatsResponse> instance

Returns statistical information about your OpenSearch Serverless access
policies, security configurations, and security policies.


=head2 GetSecurityConfig

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::GetSecurityConfig>

Returns: a L<Paws::OpenSearchServerless::GetSecurityConfigResponse> instance

Returns information about an OpenSearch Serverless security
configuration. For more information, see SAML authentication for Amazon
OpenSearch Serverless
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html).


=head2 GetSecurityPolicy

=over

=item Name => Str

=item Type => Str


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::GetSecurityPolicy>

Returns: a L<Paws::OpenSearchServerless::GetSecurityPolicyResponse> instance

Returns information about a configured OpenSearch Serverless security
policy. For more information, see Network access for Amazon OpenSearch
Serverless
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html)
and Encryption at rest for Amazon OpenSearch Serverless
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html).


=head2 ListAccessPolicies

=over

=item Type => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Resource => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::ListAccessPolicies>

Returns: a L<Paws::OpenSearchServerless::ListAccessPoliciesResponse> instance

Returns information about a list of OpenSearch Serverless access
policies.


=head2 ListCollections

=over

=item [CollectionFilters => L<Paws::OpenSearchServerless::CollectionFilters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::ListCollections>

Returns: a L<Paws::OpenSearchServerless::ListCollectionsResponse> instance

Lists all OpenSearch Serverless collections. For more information, see
Creating and managing Amazon OpenSearch Serverless collections
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html).

Make sure to include an empty request body {} if you don't include any
collection filters in the request.


=head2 ListLifecyclePolicies

=over

=item Type => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Resources => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::ListLifecyclePolicies>

Returns: a L<Paws::OpenSearchServerless::ListLifecyclePoliciesResponse> instance

Returns a list of OpenSearch Serverless lifecycle policies. For more
information, see Viewing data lifecycle policies
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-list).


=head2 ListSecurityConfigs

=over

=item Type => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::ListSecurityConfigs>

Returns: a L<Paws::OpenSearchServerless::ListSecurityConfigsResponse> instance

Returns information about configured OpenSearch Serverless security
configurations. For more information, see SAML authentication for
Amazon OpenSearch Serverless
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html).


=head2 ListSecurityPolicies

=over

=item Type => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Resource => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::ListSecurityPolicies>

Returns: a L<Paws::OpenSearchServerless::ListSecurityPoliciesResponse> instance

Returns information about configured OpenSearch Serverless security
policies.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::ListTagsForResource>

Returns: a L<Paws::OpenSearchServerless::ListTagsForResourceResponse> instance

Returns the tags for an OpenSearch Serverless resource. For more
information, see Tagging Amazon OpenSearch Serverless collections
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-collection.html).


=head2 ListVpcEndpoints

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VpcEndpointFilters => L<Paws::OpenSearchServerless::VpcEndpointFilters>]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::ListVpcEndpoints>

Returns: a L<Paws::OpenSearchServerless::ListVpcEndpointsResponse> instance

Returns the OpenSearch Serverless-managed interface VPC endpoints
associated with the current account. For more information, see Access
Amazon OpenSearch Serverless using an interface endpoint
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html).


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::OpenSearchServerless::Tag>]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::TagResource>

Returns: a L<Paws::OpenSearchServerless::TagResourceResponse> instance

Associates tags with an OpenSearch Serverless resource. For more
information, see Tagging Amazon OpenSearch Serverless collections
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-collection.html).


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::UntagResource>

Returns: a L<Paws::OpenSearchServerless::UntagResourceResponse> instance

Removes a tag or set of tags from an OpenSearch Serverless resource.
For more information, see Tagging Amazon OpenSearch Serverless
collections
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-collection.html).


=head2 UpdateAccessPolicy

=over

=item Name => Str

=item PolicyVersion => Str

=item Type => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Policy => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::UpdateAccessPolicy>

Returns: a L<Paws::OpenSearchServerless::UpdateAccessPolicyResponse> instance

Updates an OpenSearch Serverless access policy. For more information,
see Data access control for Amazon OpenSearch Serverless
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html).


=head2 UpdateAccountSettings

=over

=item [CapacityLimits => L<Paws::OpenSearchServerless::CapacityLimits>]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::UpdateAccountSettings>

Returns: a L<Paws::OpenSearchServerless::UpdateAccountSettingsResponse> instance

Update the OpenSearch Serverless settings for the current Amazon Web
Services account. For more information, see Managing capacity limits
for Amazon OpenSearch Serverless
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-scaling.html).


=head2 UpdateCollection

=over

=item Id => Str

=item [ClientToken => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::UpdateCollection>

Returns: a L<Paws::OpenSearchServerless::UpdateCollectionResponse> instance

Updates an OpenSearch Serverless collection.


=head2 UpdateLifecyclePolicy

=over

=item Name => Str

=item PolicyVersion => Str

=item Type => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Policy => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::UpdateLifecyclePolicy>

Returns: a L<Paws::OpenSearchServerless::UpdateLifecyclePolicyResponse> instance

Updates an OpenSearch Serverless access policy. For more information,
see Updating data lifecycle policies
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-update).


=head2 UpdateSecurityConfig

=over

=item ConfigVersion => Str

=item Id => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [IamIdentityCenterOptionsUpdates => L<Paws::OpenSearchServerless::UpdateIamIdentityCenterConfigOptions>]

=item [SamlOptions => L<Paws::OpenSearchServerless::SamlConfigOptions>]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::UpdateSecurityConfig>

Returns: a L<Paws::OpenSearchServerless::UpdateSecurityConfigResponse> instance

Updates a security configuration for OpenSearch Serverless. For more
information, see SAML authentication for Amazon OpenSearch Serverless
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html).


=head2 UpdateSecurityPolicy

=over

=item Name => Str

=item PolicyVersion => Str

=item Type => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Policy => Str]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::UpdateSecurityPolicy>

Returns: a L<Paws::OpenSearchServerless::UpdateSecurityPolicyResponse> instance

Updates an OpenSearch Serverless security policy. For more information,
see Network access for Amazon OpenSearch Serverless
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html)
and Encryption at rest for Amazon OpenSearch Serverless
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html).


=head2 UpdateVpcEndpoint

=over

=item Id => Str

=item [AddSecurityGroupIds => ArrayRef[Str|Undef]]

=item [AddSubnetIds => ArrayRef[Str|Undef]]

=item [ClientToken => Str]

=item [RemoveSecurityGroupIds => ArrayRef[Str|Undef]]

=item [RemoveSubnetIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::OpenSearchServerless::UpdateVpcEndpoint>

Returns: a L<Paws::OpenSearchServerless::UpdateVpcEndpointResponse> instance

Updates an OpenSearch Serverless-managed interface endpoint. For more
information, see Access Amazon OpenSearch Serverless using an interface
endpoint
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

