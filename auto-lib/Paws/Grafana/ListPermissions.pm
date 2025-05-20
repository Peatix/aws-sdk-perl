
package Paws::Grafana::ListPermissions;
  use Moose;
  has GroupId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'groupId');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'userId');
  has UserType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'userType');
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPermissions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/permissions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Grafana::ListPermissionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::ListPermissions - Arguments for method ListPermissions on L<Paws::Grafana>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPermissions on the
L<Amazon Managed Grafana|Paws::Grafana> service. Use the attributes of this class
as arguments to method ListPermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPermissions.

=head1 SYNOPSIS

    my $grafana = Paws->service('Grafana');
    my $ListPermissionsResponse = $grafana->ListPermissions(
      WorkspaceId => 'MyWorkspaceId',
      GroupId     => 'MySsoId',              # OPTIONAL
      MaxResults  => 1,                      # OPTIONAL
      NextToken   => 'MyPaginationToken',    # OPTIONAL
      UserId      => 'MySsoId',              # OPTIONAL
      UserType    => 'SSO_USER',             # OPTIONAL
    );

    # Results:
    my $NextToken   = $ListPermissionsResponse->NextToken;
    my $Permissions = $ListPermissionsResponse->Permissions;

    # Returns a L<Paws::Grafana::ListPermissionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/grafana/ListPermissions>

=head1 ATTRIBUTES


=head2 GroupId => Str

(Optional) Limits the results to only the group that matches this ID.



=head2 MaxResults => Int

The maximum number of results to include in the response.



=head2 NextToken => Str

The token to use when requesting the next set of results. You received
this token from a previous C<ListPermissions> operation.



=head2 UserId => Str

(Optional) Limits the results to only the user that matches this ID.



=head2 UserType => Str

(Optional) If you specify C<SSO_USER>, then only the permissions of IAM
Identity Center users are returned. If you specify C<SSO_GROUP>, only
the permissions of IAM Identity Center groups are returned.

Valid values are: C<"SSO_USER">, C<"SSO_GROUP">

=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace to list permissions for. This parameter is
required.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPermissions in L<Paws::Grafana>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

