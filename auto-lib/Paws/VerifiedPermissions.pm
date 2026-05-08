package Paws::VerifiedPermissions;
  use Moose;
  sub service { 'verifiedpermissions' }
  sub signing_name { 'verifiedpermissions' }
  sub version { '2021-12-01' }
  sub target_prefix { 'VerifiedPermissions' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub BatchGetPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::BatchGetPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchIsAuthorized {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::BatchIsAuthorized', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchIsAuthorizedWithToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::BatchIsAuthorizedWithToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIdentitySource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::CreateIdentitySource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::CreatePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePolicyStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::CreatePolicyStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePolicyTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::CreatePolicyTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIdentitySource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::DeleteIdentitySource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::DeletePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePolicyStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::DeletePolicyStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePolicyTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::DeletePolicyTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIdentitySource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::GetIdentitySource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::GetPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPolicyStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::GetPolicyStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPolicyTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::GetPolicyTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::GetSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub IsAuthorized {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::IsAuthorized', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub IsAuthorizedWithToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::IsAuthorizedWithToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIdentitySources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::ListIdentitySources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::ListPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPolicyStores {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::ListPolicyStores', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPolicyTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::ListPolicyTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::PutSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIdentitySource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::UpdateIdentitySource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::UpdatePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePolicyStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::UpdatePolicyStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePolicyTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::VerifiedPermissions::UpdatePolicyTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllIdentitySources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIdentitySources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListIdentitySources(@_, nextToken => $next_result->nextToken);
        push @{ $result->identitySources }, @{ $next_result->identitySources };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'identitySources') foreach (@{ $result->identitySources });
        $result = $self->ListIdentitySources(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'identitySources') foreach (@{ $result->identitySources });
    }

    return undef
  }
  sub ListAllPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPolicies(@_, nextToken => $next_result->nextToken);
        push @{ $result->policies }, @{ $next_result->policies };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'policies') foreach (@{ $result->policies });
        $result = $self->ListPolicies(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'policies') foreach (@{ $result->policies });
    }

    return undef
  }
  sub ListAllPolicyStores {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPolicyStores(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPolicyStores(@_, nextToken => $next_result->nextToken);
        push @{ $result->policyStores }, @{ $next_result->policyStores };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'policyStores') foreach (@{ $result->policyStores });
        $result = $self->ListPolicyStores(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'policyStores') foreach (@{ $result->policyStores });
    }

    return undef
  }
  sub ListAllPolicyTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPolicyTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPolicyTemplates(@_, nextToken => $next_result->nextToken);
        push @{ $result->policyTemplates }, @{ $next_result->policyTemplates };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'policyTemplates') foreach (@{ $result->policyTemplates });
        $result = $self->ListPolicyTemplates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'policyTemplates') foreach (@{ $result->policyTemplates });
    }

    return undef
  }


  sub operations { qw/BatchGetPolicy BatchIsAuthorized BatchIsAuthorizedWithToken CreateIdentitySource CreatePolicy CreatePolicyStore CreatePolicyTemplate DeleteIdentitySource DeletePolicy DeletePolicyStore DeletePolicyTemplate GetIdentitySource GetPolicy GetPolicyStore GetPolicyTemplate GetSchema IsAuthorized IsAuthorizedWithToken ListIdentitySources ListPolicies ListPolicyStores ListPolicyTemplates ListTagsForResource PutSchema TagResource UntagResource UpdateIdentitySource UpdatePolicy UpdatePolicyStore UpdatePolicyTemplate / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions - Perl Interface to AWS Amazon Verified Permissions

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('VerifiedPermissions');
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

Amazon Verified Permissions is a permissions management service from
Amazon Web Services. You can use Verified Permissions to manage
permissions for your application, and authorize user access based on
those permissions. Using Verified Permissions, application developers
can grant access based on information about the users, resources, and
requested actions. You can also evaluate additional information like
group membership, attributes of the resources, and session context,
such as time of request and IP addresses. Verified Permissions manages
these permissions by letting you create and store authorization
policies for your applications, such as consumer-facing web sites and
enterprise business systems.

Verified Permissions uses Cedar as the policy language to express your
permission requirements. Cedar supports both role-based access control
(RBAC) and attribute-based access control (ABAC) authorization models.

For more information about configuring, administering, and using Amazon
Verified Permissions in your applications, see the Amazon Verified
Permissions User Guide
(https://docs.aws.amazon.com/verifiedpermissions/latest/userguide/).

For more information about the Cedar policy language, see the Cedar
Policy Language Guide (https://docs.cedarpolicy.com/).

When you write Cedar policies that reference principals, resources and
actions, you can define the unique identifiers used for each of those
elements. We strongly recommend that you follow these best practices:

=over

=item *

B<Use values like universally unique identifiers (UUIDs) for all
principal and resource identifiers.>

For example, if user C<jane> leaves the company, and you later let
someone else use the name C<jane>, then that new user automatically
gets access to everything granted by policies that still reference
C<User::"jane">. Cedar canE<rsquo>t distinguish between the new user
and the old. This applies to both principal and resource identifiers.
Always use identifiers that are guaranteed unique and never reused to
ensure that you donE<rsquo>t unintentionally grant access because of
the presence of an old identifier in a policy.

Where you use a UUID for an entity, we recommend that you follow it
with the // comment specifier and the E<lsquo>friendlyE<rsquo> name of
your entity. This helps to make your policies easier to understand. For
example: principal == User::"a1b2c3d4-e5f6-a1b2-c3d4-EXAMPLE11111", //
alice

=item *

B<Do not include personally identifying, confidential, or sensitive
information as part of the unique identifier for your principals or
resources.> These identifiers are included in log entries shared in
CloudTrail trails.

=back

Several operations return structures that appear similar, but have
different purposes. As new functionality is added to the product, the
structure used in a parameter of one operation might need to change in
a way that wouldn't make sense for the same parameter in a different
operation. To help you understand the purpose of each, the following
naming convention is used for the structures:

=over

=item *

Parameter type structures that end in C<Detail> are used in C<Get>
operations.

=item *

Parameter type structures that end in C<Item> are used in C<List>
operations.

=item *

Parameter type structures that use neither suffix are used in the
mutating (create and update) operations.

=back


For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 BatchGetPolicy

=over

=item Requests => ArrayRef[L<Paws::VerifiedPermissions::BatchGetPolicyInputItem>]


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::BatchGetPolicy>

Returns: a L<Paws::VerifiedPermissions::BatchGetPolicyOutput> instance

Retrieves information about a group (batch) of policies.

The C<BatchGetPolicy> operation doesn't have its own IAM permission. To
authorize this operation for Amazon Web Services principals, include
the permission C<verifiedpermissions:GetPolicy> in their IAM policies.


=head2 BatchIsAuthorized

=over

=item PolicyStoreId => Str

=item Requests => ArrayRef[L<Paws::VerifiedPermissions::BatchIsAuthorizedInputItem>]

=item [Entities => L<Paws::VerifiedPermissions::EntitiesDefinition>]


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::BatchIsAuthorized>

Returns: a L<Paws::VerifiedPermissions::BatchIsAuthorizedOutput> instance

Makes a series of decisions about multiple authorization requests for
one principal or resource. Each request contains the equivalent content
of an C<IsAuthorized> request: principal, action, resource, and
context. Either the C<principal> or the C<resource> parameter must be
identical across all requests. For example, Verified Permissions won't
evaluate a pair of requests where C<bob> views C<photo1> and C<alice>
views C<photo2>. Authorization of C<bob> to view C<photo1> and
C<photo2>, or C<bob> and C<alice> to view C<photo1>, are valid batches.

The request is evaluated against all policies in the specified policy
store that match the entities that you declare. The result of the
decisions is a series of C<Allow> or C<Deny> responses, along with the
IDs of the policies that produced each decision.

The C<entities> of a C<BatchIsAuthorized> API request can contain up to
100 principals and up to 100 resources. The C<requests> of a
C<BatchIsAuthorized> API request can contain up to 30 requests.

The C<BatchIsAuthorized> operation doesn't have its own IAM permission.
To authorize this operation for Amazon Web Services principals, include
the permission C<verifiedpermissions:IsAuthorized> in their IAM
policies.


=head2 BatchIsAuthorizedWithToken

=over

=item PolicyStoreId => Str

=item Requests => ArrayRef[L<Paws::VerifiedPermissions::BatchIsAuthorizedWithTokenInputItem>]

=item [AccessToken => Str]

=item [Entities => L<Paws::VerifiedPermissions::EntitiesDefinition>]

=item [IdentityToken => Str]


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::BatchIsAuthorizedWithToken>

Returns: a L<Paws::VerifiedPermissions::BatchIsAuthorizedWithTokenOutput> instance

Makes a series of decisions about multiple authorization requests for
one token. The principal in this request comes from an external
identity source in the form of an identity or access token, formatted
as a JSON web token (JWT) (https://wikipedia.org/wiki/JSON_Web_Token).
The information in the parameters can also define additional context
that Verified Permissions can include in the evaluations.

The request is evaluated against all policies in the specified policy
store that match the entities that you provide in the entities
declaration and in the token. The result of the decisions is a series
of C<Allow> or C<Deny> responses, along with the IDs of the policies
that produced each decision.

The C<entities> of a C<BatchIsAuthorizedWithToken> API request can
contain up to 100 resources and up to 99 user groups. The C<requests>
of a C<BatchIsAuthorizedWithToken> API request can contain up to 30
requests.

The C<BatchIsAuthorizedWithToken> operation doesn't have its own IAM
permission. To authorize this operation for Amazon Web Services
principals, include the permission
C<verifiedpermissions:IsAuthorizedWithToken> in their IAM policies.


=head2 CreateIdentitySource

=over

=item Configuration => L<Paws::VerifiedPermissions::Configuration>

=item PolicyStoreId => Str

=item [ClientToken => Str]

=item [PrincipalEntityType => Str]


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::CreateIdentitySource>

Returns: a L<Paws::VerifiedPermissions::CreateIdentitySourceOutput> instance

Adds an identity source to a policy storeE<ndash>an Amazon Cognito user
pool or OpenID Connect (OIDC) identity provider (IdP).

After you create an identity source, you can use the identities
provided by the IdP as proxies for the principal in authorization
queries that use the IsAuthorizedWithToken
(https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html)
or BatchIsAuthorizedWithToken
(https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_BatchIsAuthorizedWithToken.html)
API operations. These identities take the form of tokens that contain
claims about the user, such as IDs, attributes and group memberships.
Identity sources provide identity (ID) tokens and access tokens.
Verified Permissions derives information about your user and session
from token claims. Access tokens provide action C<context> to your
policies, and ID tokens provide principal C<Attributes>.

Tokens from an identity source user continue to be usable until they
expire. Token revocation and resource deletion have no effect on the
validity of a token in your policy store

To reference a user from this identity source in your Cedar policies,
refer to the following syntax examples.

=over

=item *

Amazon Cognito user pool: C<Namespace::[Entity type]::[User pool
ID]|[user principal attribute]>, for example
C<MyCorp::User::us-east-1_EXAMPLE|a1b2c3d4-5678-90ab-cdef-EXAMPLE11111>.

=item *

OpenID Connect (OIDC) provider: C<Namespace::[Entity
type]::[entityIdPrefix]|[user principal attribute]>, for example
C<MyCorp::User::MyOIDCProvider|a1b2c3d4-5678-90ab-cdef-EXAMPLE22222>.

=back

Verified Permissions is I< eventually consistent
(https://wikipedia.org/wiki/Eventual_consistency) >. It can take a few
seconds for a new or changed element to propagate through the service
and be visible in the results of other Verified Permissions operations.


=head2 CreatePolicy

=over

=item Definition => L<Paws::VerifiedPermissions::PolicyDefinition>

=item PolicyStoreId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::CreatePolicy>

Returns: a L<Paws::VerifiedPermissions::CreatePolicyOutput> instance

Creates a Cedar policy and saves it in the specified policy store. You
can create either a static policy or a policy linked to a policy
template.

=over

=item *

To create a static policy, provide the Cedar policy text in the
C<StaticPolicy> section of the C<PolicyDefinition>.

=item *

To create a policy that is dynamically linked to a policy template,
specify the policy template ID and the principal and resource to
associate with this policy in the C<templateLinked> section of the
C<PolicyDefinition>. If the policy template is ever updated, any
policies linked to the policy template automatically use the updated
template.

=back

Creating a policy causes it to be validated against the schema in the
policy store. If the policy doesn't pass validation, the operation
fails and the policy isn't stored.

Verified Permissions is I< eventually consistent
(https://wikipedia.org/wiki/Eventual_consistency) >. It can take a few
seconds for a new or changed element to propagate through the service
and be visible in the results of other Verified Permissions operations.


=head2 CreatePolicyStore

=over

=item ValidationSettings => L<Paws::VerifiedPermissions::ValidationSettings>

=item [ClientToken => Str]

=item [DeletionProtection => Str]

=item [Description => Str]

=item [Tags => L<Paws::VerifiedPermissions::TagMap>]


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::CreatePolicyStore>

Returns: a L<Paws::VerifiedPermissions::CreatePolicyStoreOutput> instance

Creates a policy store. A policy store is a container for policy
resources.

Although Cedar supports multiple namespaces
(https://docs.cedarpolicy.com/schema/schema.html#namespace), Verified
Permissions currently supports only one namespace per policy store.

Verified Permissions is I< eventually consistent
(https://wikipedia.org/wiki/Eventual_consistency) >. It can take a few
seconds for a new or changed element to propagate through the service
and be visible in the results of other Verified Permissions operations.


=head2 CreatePolicyTemplate

=over

=item PolicyStoreId => Str

=item Statement => Str

=item [ClientToken => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::CreatePolicyTemplate>

Returns: a L<Paws::VerifiedPermissions::CreatePolicyTemplateOutput> instance

Creates a policy template. A template can use placeholders for the
principal and resource. A template must be instantiated into a policy
by associating it with specific principals and resources to use for the
placeholders. That instantiated policy can then be considered in
authorization decisions. The instantiated policy works identically to
any other policy, except that it is dynamically linked to the template.
If the template changes, then any policies that are linked to that
template are immediately updated as well.

Verified Permissions is I< eventually consistent
(https://wikipedia.org/wiki/Eventual_consistency) >. It can take a few
seconds for a new or changed element to propagate through the service
and be visible in the results of other Verified Permissions operations.


=head2 DeleteIdentitySource

=over

=item IdentitySourceId => Str

=item PolicyStoreId => Str


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::DeleteIdentitySource>

Returns: a L<Paws::VerifiedPermissions::DeleteIdentitySourceOutput> instance

Deletes an identity source that references an identity provider (IdP)
such as Amazon Cognito. After you delete the identity source, you can
no longer use tokens for identities from that identity source to
represent principals in authorization queries made using
IsAuthorizedWithToken
(https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html).
operations.


=head2 DeletePolicy

=over

=item PolicyId => Str

=item PolicyStoreId => Str


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::DeletePolicy>

Returns: a L<Paws::VerifiedPermissions::DeletePolicyOutput> instance

Deletes the specified policy from the policy store.

This operation is idempotent; if you specify a policy that doesn't
exist, the request response returns a successful C<HTTP 200> status
code.


=head2 DeletePolicyStore

=over

=item PolicyStoreId => Str


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::DeletePolicyStore>

Returns: a L<Paws::VerifiedPermissions::DeletePolicyStoreOutput> instance

Deletes the specified policy store.

This operation is idempotent. If you specify a policy store that does
not exist, the request response will still return a successful HTTP 200
status code.


=head2 DeletePolicyTemplate

=over

=item PolicyStoreId => Str

=item PolicyTemplateId => Str


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::DeletePolicyTemplate>

Returns: a L<Paws::VerifiedPermissions::DeletePolicyTemplateOutput> instance

Deletes the specified policy template from the policy store.

This operation also deletes any policies that were created from the
specified policy template. Those policies are immediately removed from
all future API responses, and are asynchronously deleted from the
policy store.


=head2 GetIdentitySource

=over

=item IdentitySourceId => Str

=item PolicyStoreId => Str


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::GetIdentitySource>

Returns: a L<Paws::VerifiedPermissions::GetIdentitySourceOutput> instance

Retrieves the details about the specified identity source.


=head2 GetPolicy

=over

=item PolicyId => Str

=item PolicyStoreId => Str


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::GetPolicy>

Returns: a L<Paws::VerifiedPermissions::GetPolicyOutput> instance

Retrieves information about the specified policy.


=head2 GetPolicyStore

=over

=item PolicyStoreId => Str

=item [Tags => Bool]


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::GetPolicyStore>

Returns: a L<Paws::VerifiedPermissions::GetPolicyStoreOutput> instance

Retrieves details about a policy store.


=head2 GetPolicyTemplate

=over

=item PolicyStoreId => Str

=item PolicyTemplateId => Str


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::GetPolicyTemplate>

Returns: a L<Paws::VerifiedPermissions::GetPolicyTemplateOutput> instance

Retrieve the details for the specified policy template in the specified
policy store.


=head2 GetSchema

=over

=item PolicyStoreId => Str


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::GetSchema>

Returns: a L<Paws::VerifiedPermissions::GetSchemaOutput> instance

Retrieve the details for the specified schema in the specified policy
store.


=head2 IsAuthorized

=over

=item PolicyStoreId => Str

=item [Action => L<Paws::VerifiedPermissions::ActionIdentifier>]

=item [Context => L<Paws::VerifiedPermissions::ContextDefinition>]

=item [Entities => L<Paws::VerifiedPermissions::EntitiesDefinition>]

=item [Principal => L<Paws::VerifiedPermissions::EntityIdentifier>]

=item [Resource => L<Paws::VerifiedPermissions::EntityIdentifier>]


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::IsAuthorized>

Returns: a L<Paws::VerifiedPermissions::IsAuthorizedOutput> instance

Makes an authorization decision about a service request described in
the parameters. The information in the parameters can also define
additional context that Verified Permissions can include in the
evaluation. The request is evaluated against all matching policies in
the specified policy store. The result of the decision is either
C<Allow> or C<Deny>, along with a list of the policies that resulted in
the decision.


=head2 IsAuthorizedWithToken

=over

=item PolicyStoreId => Str

=item [AccessToken => Str]

=item [Action => L<Paws::VerifiedPermissions::ActionIdentifier>]

=item [Context => L<Paws::VerifiedPermissions::ContextDefinition>]

=item [Entities => L<Paws::VerifiedPermissions::EntitiesDefinition>]

=item [IdentityToken => Str]

=item [Resource => L<Paws::VerifiedPermissions::EntityIdentifier>]


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::IsAuthorizedWithToken>

Returns: a L<Paws::VerifiedPermissions::IsAuthorizedWithTokenOutput> instance

Makes an authorization decision about a service request described in
the parameters. The principal in this request comes from an external
identity source in the form of an identity token formatted as a JSON
web token (JWT) (https://wikipedia.org/wiki/JSON_Web_Token). The
information in the parameters can also define additional context that
Verified Permissions can include in the evaluation. The request is
evaluated against all matching policies in the specified policy store.
The result of the decision is either C<Allow> or C<Deny>, along with a
list of the policies that resulted in the decision.

Verified Permissions validates each token that is specified in a
request by checking its expiration date and its signature.

Tokens from an identity source user continue to be usable until they
expire. Token revocation and resource deletion have no effect on the
validity of a token in your policy store


=head2 ListIdentitySources

=over

=item PolicyStoreId => Str

=item [Filters => ArrayRef[L<Paws::VerifiedPermissions::IdentitySourceFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::ListIdentitySources>

Returns: a L<Paws::VerifiedPermissions::ListIdentitySourcesOutput> instance

Returns a paginated list of all of the identity sources defined in the
specified policy store.


=head2 ListPolicies

=over

=item PolicyStoreId => Str

=item [Filter => L<Paws::VerifiedPermissions::PolicyFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::ListPolicies>

Returns: a L<Paws::VerifiedPermissions::ListPoliciesOutput> instance

Returns a paginated list of all policies stored in the specified policy
store.


=head2 ListPolicyStores

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::ListPolicyStores>

Returns: a L<Paws::VerifiedPermissions::ListPolicyStoresOutput> instance

Returns a paginated list of all policy stores in the calling Amazon Web
Services account.


=head2 ListPolicyTemplates

=over

=item PolicyStoreId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::ListPolicyTemplates>

Returns: a L<Paws::VerifiedPermissions::ListPolicyTemplatesOutput> instance

Returns a paginated list of all policy templates in the specified
policy store.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::ListTagsForResource>

Returns: a L<Paws::VerifiedPermissions::ListTagsForResourceOutput> instance

Returns the tags associated with the specified Amazon Verified
Permissions resource. In Verified Permissions, policy stores can be
tagged.


=head2 PutSchema

=over

=item Definition => L<Paws::VerifiedPermissions::SchemaDefinition>

=item PolicyStoreId => Str


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::PutSchema>

Returns: a L<Paws::VerifiedPermissions::PutSchemaOutput> instance

Creates or updates the policy schema in the specified policy store. The
schema is used to validate any Cedar policies and policy templates
submitted to the policy store. Any changes to the schema validate only
policies and templates submitted after the schema change. Existing
policies and templates are not re-evaluated against the changed schema.
If you later update a policy, then it is evaluated against the new
schema at that time.

Verified Permissions is I< eventually consistent
(https://wikipedia.org/wiki/Eventual_consistency) >. It can take a few
seconds for a new or changed element to propagate through the service
and be visible in the results of other Verified Permissions operations.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::VerifiedPermissions::TagMap>


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::TagResource>

Returns: a L<Paws::VerifiedPermissions::TagResourceOutput> instance

Assigns one or more tags (key-value pairs) to the specified Amazon
Verified Permissions resource. Tags can help you organize and
categorize your resources. You can also use them to scope user
permissions by granting a user permission to access or change only
resources with certain tag values. In Verified Permissions, policy
stores can be tagged.

Tags don't have any semantic meaning to Amazon Web Services and are
interpreted strictly as strings of characters.

You can use the TagResource action with a resource that already has
tags. If you specify a new tag key, this tag is appended to the list of
tags associated with the resource. If you specify a tag key that is
already associated with the resource, the new tag value that you
specify replaces the previous value for that tag.

You can associate as many as 50 tags with a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::UntagResource>

Returns: a L<Paws::VerifiedPermissions::UntagResourceOutput> instance

Removes one or more tags from the specified Amazon Verified Permissions
resource. In Verified Permissions, policy stores can be tagged.


=head2 UpdateIdentitySource

=over

=item IdentitySourceId => Str

=item PolicyStoreId => Str

=item UpdateConfiguration => L<Paws::VerifiedPermissions::UpdateConfiguration>

=item [PrincipalEntityType => Str]


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::UpdateIdentitySource>

Returns: a L<Paws::VerifiedPermissions::UpdateIdentitySourceOutput> instance

Updates the specified identity source to use a new identity provider
(IdP), or to change the mapping of identities from the IdP to a
different principal entity type.

Verified Permissions is I< eventually consistent
(https://wikipedia.org/wiki/Eventual_consistency) >. It can take a few
seconds for a new or changed element to propagate through the service
and be visible in the results of other Verified Permissions operations.


=head2 UpdatePolicy

=over

=item Definition => L<Paws::VerifiedPermissions::UpdatePolicyDefinition>

=item PolicyId => Str

=item PolicyStoreId => Str


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::UpdatePolicy>

Returns: a L<Paws::VerifiedPermissions::UpdatePolicyOutput> instance

Modifies a Cedar static policy in the specified policy store. You can
change only certain elements of the UpdatePolicyDefinition
(https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyInput.html#amazonverifiedpermissions-UpdatePolicy-request-UpdatePolicyDefinition)
parameter. You can directly update only static policies. To change a
template-linked policy, you must update the template instead, using
UpdatePolicyTemplate
(https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyTemplate.html).

=over

=item *

If policy validation is enabled in the policy store, then updating a
static policy causes Verified Permissions to validate the policy
against the schema in the policy store. If the updated static policy
doesn't pass validation, the operation fails and the update isn't
stored.

=item *

When you edit a static policy, you can change only certain elements of
a static policy:

=over

=item *

The action referenced by the policy.

=item *

A condition clause, such as when and unless.

=back

You can't change these elements of a static policy:

=over

=item *

Changing a policy from a static policy to a template-linked policy.

=item *

Changing the effect of a static policy from permit or forbid.

=item *

The principal referenced by a static policy.

=item *

The resource referenced by a static policy.

=back

=item *

To update a template-linked policy, you must update the template
instead.

=back

Verified Permissions is I< eventually consistent
(https://wikipedia.org/wiki/Eventual_consistency) >. It can take a few
seconds for a new or changed element to propagate through the service
and be visible in the results of other Verified Permissions operations.


=head2 UpdatePolicyStore

=over

=item PolicyStoreId => Str

=item ValidationSettings => L<Paws::VerifiedPermissions::ValidationSettings>

=item [DeletionProtection => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::UpdatePolicyStore>

Returns: a L<Paws::VerifiedPermissions::UpdatePolicyStoreOutput> instance

Modifies the validation setting for a policy store.

Verified Permissions is I< eventually consistent
(https://wikipedia.org/wiki/Eventual_consistency) >. It can take a few
seconds for a new or changed element to propagate through the service
and be visible in the results of other Verified Permissions operations.


=head2 UpdatePolicyTemplate

=over

=item PolicyStoreId => Str

=item PolicyTemplateId => Str

=item Statement => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::VerifiedPermissions::UpdatePolicyTemplate>

Returns: a L<Paws::VerifiedPermissions::UpdatePolicyTemplateOutput> instance

Updates the specified policy template. You can update only the
description and the some elements of the policyBody
(https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyTemplate.html#amazonverifiedpermissions-UpdatePolicyTemplate-request-policyBody).

Changes you make to the policy template content are immediately (within
the constraints of eventual consistency) reflected in authorization
decisions that involve all template-linked policies instantiated from
this template.

Verified Permissions is I< eventually consistent
(https://wikipedia.org/wiki/Eventual_consistency) >. It can take a few
seconds for a new or changed element to propagate through the service
and be visible in the results of other Verified Permissions operations.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllIdentitySources(sub { },PolicyStoreId => Str, [Filters => ArrayRef[L<Paws::VerifiedPermissions::IdentitySourceFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllIdentitySources(PolicyStoreId => Str, [Filters => ArrayRef[L<Paws::VerifiedPermissions::IdentitySourceFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - identitySources, passing the object as the first parameter, and the string 'identitySources' as the second parameter 

If not, it will return a a L<Paws::VerifiedPermissions::ListIdentitySourcesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPolicies(sub { },PolicyStoreId => Str, [Filter => L<Paws::VerifiedPermissions::PolicyFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllPolicies(PolicyStoreId => Str, [Filter => L<Paws::VerifiedPermissions::PolicyFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - policies, passing the object as the first parameter, and the string 'policies' as the second parameter 

If not, it will return a a L<Paws::VerifiedPermissions::ListPoliciesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPolicyStores(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllPolicyStores([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - policyStores, passing the object as the first parameter, and the string 'policyStores' as the second parameter 

If not, it will return a a L<Paws::VerifiedPermissions::ListPolicyStoresOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPolicyTemplates(sub { },PolicyStoreId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPolicyTemplates(PolicyStoreId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - policyTemplates, passing the object as the first parameter, and the string 'policyTemplates' as the second parameter 

If not, it will return a a L<Paws::VerifiedPermissions::ListPolicyTemplatesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

