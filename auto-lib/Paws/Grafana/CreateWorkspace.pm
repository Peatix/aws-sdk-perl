
package Paws::Grafana::CreateWorkspace;
  use Moose;
  has AccountAccessType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountAccessType', required => 1);
  has AuthenticationProviders => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'authenticationProviders', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Configuration => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configuration');
  has GrafanaVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'grafanaVersion');
  has NetworkAccessControl => (is => 'ro', isa => 'Paws::Grafana::NetworkAccessConfiguration', traits => ['NameInRequest'], request_name => 'networkAccessControl');
  has OrganizationRoleName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'organizationRoleName');
  has PermissionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'permissionType', required => 1);
  has StackSetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stackSetName');
  has Tags => (is => 'ro', isa => 'Paws::Grafana::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has VpcConfiguration => (is => 'ro', isa => 'Paws::Grafana::VpcConfiguration', traits => ['NameInRequest'], request_name => 'vpcConfiguration');
  has WorkspaceDataSources => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'workspaceDataSources');
  has WorkspaceDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workspaceDescription');
  has WorkspaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workspaceName');
  has WorkspaceNotificationDestinations => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'workspaceNotificationDestinations');
  has WorkspaceOrganizationalUnits => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'workspaceOrganizationalUnits');
  has WorkspaceRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workspaceRoleArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorkspace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Grafana::CreateWorkspaceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::CreateWorkspace - Arguments for method CreateWorkspace on L<Paws::Grafana>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorkspace on the
L<Amazon Managed Grafana|Paws::Grafana> service. Use the attributes of this class
as arguments to method CreateWorkspace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorkspace.

=head1 SYNOPSIS

    my $grafana = Paws->service('Grafana');
    my $CreateWorkspaceResponse = $grafana->CreateWorkspace(
      AccountAccessType       => 'CURRENT_ACCOUNT',
      AuthenticationProviders => [
        'AWS_SSO', ...    # values: AWS_SSO, SAML
      ],
      PermissionType       => 'CUSTOMER_MANAGED',
      ClientToken          => 'MyClientToken',                     # OPTIONAL
      Configuration        => 'MyOverridableConfigurationJson',    # OPTIONAL
      GrafanaVersion       => 'MyGrafanaVersion',                  # OPTIONAL
      NetworkAccessControl => {
        PrefixListIds => [
          'MyPrefixListId', ...    # min: 1, max: 100
        ],
        VpceIds => [
          'MyVpceId', ...          # min: 1, max: 100
        ],

      },    # OPTIONAL
      OrganizationRoleName => 'MyOrganizationRoleName',    # OPTIONAL
      StackSetName         => 'MyStackSetName',            # OPTIONAL
      Tags                 => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      VpcConfiguration => {
        SecurityGroupIds => [
          'MySecurityGroupId', ...    # max: 255
        ],    # min: 1, max: 5
        SubnetIds => [
          'MySubnetId', ...    # max: 255
        ],    # min: 2, max: 6

      },    # OPTIONAL
      WorkspaceDataSources => [
        'AMAZON_OPENSEARCH_SERVICE',
        ... # values: AMAZON_OPENSEARCH_SERVICE, CLOUDWATCH, PROMETHEUS, XRAY, TIMESTREAM, SITEWISE, ATHENA, REDSHIFT, TWINMAKER
      ],    # OPTIONAL
      WorkspaceDescription              => 'MyDescription',      # OPTIONAL
      WorkspaceName                     => 'MyWorkspaceName',    # OPTIONAL
      WorkspaceNotificationDestinations => [
        'SNS', ...                                               # values: SNS
      ],    # OPTIONAL
      WorkspaceOrganizationalUnits => [ 'MyOrganizationalUnit', ... ]
      ,                                      # OPTIONAL
      WorkspaceRoleArn => 'MyIamRoleArn',    # OPTIONAL
    );

    # Results:
    my $Workspace = $CreateWorkspaceResponse->Workspace;

    # Returns a L<Paws::Grafana::CreateWorkspaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/grafana/CreateWorkspace>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountAccessType => Str

Specifies whether the workspace can access Amazon Web Services
resources in this Amazon Web Services account only, or whether it can
also access Amazon Web Services resources in other accounts in the same
organization. If you specify C<ORGANIZATION>, you must specify which
organizational units the workspace can access in the
C<workspaceOrganizationalUnits> parameter.

Valid values are: C<"CURRENT_ACCOUNT">, C<"ORGANIZATION">

=head2 B<REQUIRED> AuthenticationProviders => ArrayRef[Str|Undef]

Specifies whether this workspace uses SAML 2.0, IAM Identity Center, or
both to authenticate users for using the Grafana console within a
workspace. For more information, see User authentication in Amazon
Managed Grafana
(https://docs.aws.amazon.com/grafana/latest/userguide/authentication-in-AMG.html).



=head2 ClientToken => Str

A unique, case-sensitive, user-provided identifier to ensure the
idempotency of the request.



=head2 Configuration => Str

The configuration string for the workspace that you create. For more
information about the format and configuration options available, see
Working in your Grafana workspace
(https://docs.aws.amazon.com/grafana/latest/userguide/AMG-configure-workspace.html).



=head2 GrafanaVersion => Str

Specifies the version of Grafana to support in the new workspace. If
not specified, defaults to the latest version (for example, 10.4).

To get a list of supported versions, use the C<ListVersions> operation.



=head2 NetworkAccessControl => L<Paws::Grafana::NetworkAccessConfiguration>

Configuration for network access to your workspace.

When this is configured, only listed IP addresses and VPC endpoints
will be able to access your workspace. Standard Grafana authentication
and authorization will still be required.

If this is not configured, or is removed, then all IP addresses and VPC
endpoints will be allowed. Standard Grafana authentication and
authorization will still be required.



=head2 OrganizationRoleName => Str

The name of an IAM role that already exists to use with Organizations
to access Amazon Web Services data sources and notification channels in
other accounts in an organization.



=head2 B<REQUIRED> PermissionType => Str

When creating a workspace through the Amazon Web Services API, CLI or
Amazon Web Services CloudFormation, you must manage IAM roles and
provision the permissions that the workspace needs to use Amazon Web
Services data sources and notification channels.

You must also specify a C<workspaceRoleArn> for a role that you will
manage for the workspace to use when accessing those datasources and
notification channels.

The ability for Amazon Managed Grafana to create and update IAM roles
on behalf of the user is supported only in the Amazon Managed Grafana
console, where this value may be set to C<SERVICE_MANAGED>.

Use only the C<CUSTOMER_MANAGED> permission type when creating a
workspace with the API, CLI or Amazon Web Services CloudFormation.

For more information, see Amazon Managed Grafana permissions and
policies for Amazon Web Services data sources and notification channels
(https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html).

Valid values are: C<"CUSTOMER_MANAGED">, C<"SERVICE_MANAGED">

=head2 StackSetName => Str

The name of the CloudFormation stack set to use to generate IAM roles
to be used for this workspace.



=head2 Tags => L<Paws::Grafana::TagMap>

The list of tags associated with the workspace.



=head2 VpcConfiguration => L<Paws::Grafana::VpcConfiguration>

The configuration settings for an Amazon VPC that contains data sources
for your Grafana workspace to connect to.

Connecting to a private VPC is not yet available in the Asia Pacific
(Seoul) Region (ap-northeast-2).



=head2 WorkspaceDataSources => ArrayRef[Str|Undef]

This parameter is for internal use only, and should not be used.



=head2 WorkspaceDescription => Str

A description for the workspace. This is used only to help you identify
this workspace.

Pattern: C<^[\\p{L}\\p{Z}\\p{N}\\p{P}]{0,2048}$>



=head2 WorkspaceName => Str

The name for the workspace. It does not have to be unique.



=head2 WorkspaceNotificationDestinations => ArrayRef[Str|Undef]

Specify the Amazon Web Services notification channels that you plan to
use in this workspace. Specifying these data sources here enables
Amazon Managed Grafana to create IAM roles and permissions that allow
Amazon Managed Grafana to use these channels.



=head2 WorkspaceOrganizationalUnits => ArrayRef[Str|Undef]

Specifies the organizational units that this workspace is allowed to
use data sources from, if this workspace is in an account that is part
of an organization.



=head2 WorkspaceRoleArn => Str

Specified the IAM role that grants permissions to the Amazon Web
Services resources that the workspace will view data from, including
both data sources and notification channels. You are responsible for
managing the permissions for this role as new data sources or
notification channels are added.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorkspace in L<Paws::Grafana>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

