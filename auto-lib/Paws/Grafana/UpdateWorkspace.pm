
package Paws::Grafana::UpdateWorkspace;
  use Moose;
  has AccountAccessType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountAccessType');
  has NetworkAccessControl => (is => 'ro', isa => 'Paws::Grafana::NetworkAccessConfiguration', traits => ['NameInRequest'], request_name => 'networkAccessControl');
  has OrganizationRoleName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'organizationRoleName');
  has PermissionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'permissionType');
  has RemoveNetworkAccessConfiguration => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'removeNetworkAccessConfiguration');
  has RemoveVpcConfiguration => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'removeVpcConfiguration');
  has StackSetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stackSetName');
  has VpcConfiguration => (is => 'ro', isa => 'Paws::Grafana::VpcConfiguration', traits => ['NameInRequest'], request_name => 'vpcConfiguration');
  has WorkspaceDataSources => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'workspaceDataSources');
  has WorkspaceDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workspaceDescription');
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);
  has WorkspaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workspaceName');
  has WorkspaceNotificationDestinations => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'workspaceNotificationDestinations');
  has WorkspaceOrganizationalUnits => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'workspaceOrganizationalUnits');
  has WorkspaceRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workspaceRoleArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWorkspace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Grafana::UpdateWorkspaceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::UpdateWorkspace - Arguments for method UpdateWorkspace on L<Paws::Grafana>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWorkspace on the
L<Amazon Managed Grafana|Paws::Grafana> service. Use the attributes of this class
as arguments to method UpdateWorkspace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWorkspace.

=head1 SYNOPSIS

    my $grafana = Paws->service('Grafana');
    my $UpdateWorkspaceResponse = $grafana->UpdateWorkspace(
      WorkspaceId          => 'MyWorkspaceId',
      AccountAccessType    => 'CURRENT_ACCOUNT',    # OPTIONAL
      NetworkAccessControl => {
        PrefixListIds => [
          'MyPrefixListId', ...                     # min: 1, max: 100
        ],
        VpceIds => [
          'MyVpceId', ...                           # min: 1, max: 100
        ],

      },    # OPTIONAL
      OrganizationRoleName             => 'MyOrganizationRoleName',   # OPTIONAL
      PermissionType                   => 'CUSTOMER_MANAGED',         # OPTIONAL
      RemoveNetworkAccessConfiguration => 1,                          # OPTIONAL
      RemoveVpcConfiguration           => 1,                          # OPTIONAL
      StackSetName                     => 'MyStackSetName',           # OPTIONAL
      VpcConfiguration                 => {
        SecurityGroupIds => [
          'MySecurityGroupId', ...                                    # max: 255
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
    my $Workspace = $UpdateWorkspaceResponse->Workspace;

    # Returns a L<Paws::Grafana::UpdateWorkspaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/grafana/UpdateWorkspace>

=head1 ATTRIBUTES


=head2 AccountAccessType => Str

Specifies whether the workspace can access Amazon Web Services
resources in this Amazon Web Services account only, or whether it can
also access Amazon Web Services resources in other accounts in the same
organization. If you specify C<ORGANIZATION>, you must specify which
organizational units the workspace can access in the
C<workspaceOrganizationalUnits> parameter.

Valid values are: C<"CURRENT_ACCOUNT">, C<"ORGANIZATION">

=head2 NetworkAccessControl => L<Paws::Grafana::NetworkAccessConfiguration>

The configuration settings for network access to your workspace.

When this is configured, only listed IP addresses and VPC endpoints
will be able to access your workspace. Standard Grafana authentication
and authorization will still be required.

If this is not configured, or is removed, then all IP addresses and VPC
endpoints will be allowed. Standard Grafana authentication and
authorization will still be required.



=head2 OrganizationRoleName => Str

The name of an IAM role that already exists to use to access resources
through Organizations. This can only be used with a workspace that has
the C<permissionType> set to C<CUSTOMER_MANAGED>.



=head2 PermissionType => Str

Use this parameter if you want to change a workspace from
C<SERVICE_MANAGED> to C<CUSTOMER_MANAGED>. This allows you to manage
the permissions that the workspace uses to access datasources and
notification channels. If the workspace is in a member Amazon Web
Services account of an organization, and that account is not a
delegated administrator account, and you want the workspace to access
data sources in other Amazon Web Services accounts in the organization,
you must choose C<CUSTOMER_MANAGED>.

If you specify this as C<CUSTOMER_MANAGED>, you must also specify a
C<workspaceRoleArn> that the workspace will use for accessing Amazon
Web Services resources.

For more information on the role and permissions needed, see Amazon
Managed Grafana permissions and policies for Amazon Web Services data
sources and notification channels
(https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html)

Do not use this to convert a C<CUSTOMER_MANAGED> workspace to
C<SERVICE_MANAGED>. Do not include this parameter if you want to leave
the workspace as C<SERVICE_MANAGED>.

You can convert a C<CUSTOMER_MANAGED> workspace to C<SERVICE_MANAGED>
using the Amazon Managed Grafana console. For more information, see
Managing permissions for data sources and notification channels
(https://docs.aws.amazon.com/grafana/latest/userguide/AMG-datasource-and-notification.html).

Valid values are: C<"CUSTOMER_MANAGED">, C<"SERVICE_MANAGED">

=head2 RemoveNetworkAccessConfiguration => Bool

Whether to remove the network access configuration from the workspace.

Setting this to C<true> and providing a C<networkAccessControl> to set
will return an error.

If you remove this configuration by setting this to C<true>, then all
IP addresses and VPC endpoints will be allowed. Standard Grafana
authentication and authorization will still be required.



=head2 RemoveVpcConfiguration => Bool

Whether to remove the VPC configuration from the workspace.

Setting this to C<true> and providing a C<vpcConfiguration> to set will
return an error.



=head2 StackSetName => Str

The name of the CloudFormation stack set to use to generate IAM roles
to be used for this workspace.



=head2 VpcConfiguration => L<Paws::Grafana::VpcConfiguration>

The configuration settings for an Amazon VPC that contains data sources
for your Grafana workspace to connect to.



=head2 WorkspaceDataSources => ArrayRef[Str|Undef]

This parameter is for internal use only, and should not be used.



=head2 WorkspaceDescription => Str

A description for the workspace. This is used only to help you identify
this workspace.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace to update.



=head2 WorkspaceName => Str

A new name for the workspace to update.



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

Specifies an IAM role that grants permissions to Amazon Web Services
resources that the workspace accesses, such as data sources and
notification channels. If this workspace has C<permissionType>
C<CUSTOMER_MANAGED>, then this role is required.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWorkspace in L<Paws::Grafana>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

