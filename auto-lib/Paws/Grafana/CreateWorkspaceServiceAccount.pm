
package Paws::Grafana::CreateWorkspaceServiceAccount;
  use Moose;
  has GrafanaRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'grafanaRole', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorkspaceServiceAccount');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/serviceaccounts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Grafana::CreateWorkspaceServiceAccountResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::CreateWorkspaceServiceAccount - Arguments for method CreateWorkspaceServiceAccount on L<Paws::Grafana>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorkspaceServiceAccount on the
L<Amazon Managed Grafana|Paws::Grafana> service. Use the attributes of this class
as arguments to method CreateWorkspaceServiceAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorkspaceServiceAccount.

=head1 SYNOPSIS

    my $grafana = Paws->service('Grafana');
    my $CreateWorkspaceServiceAccountResponse =
      $grafana->CreateWorkspaceServiceAccount(
      GrafanaRole => 'ADMIN',
      Name        => 'MyServiceAccountName',
      WorkspaceId => 'MyWorkspaceId',

      );

    # Results:
    my $GrafanaRole = $CreateWorkspaceServiceAccountResponse->GrafanaRole;
    my $Id          = $CreateWorkspaceServiceAccountResponse->Id;
    my $Name        = $CreateWorkspaceServiceAccountResponse->Name;
    my $WorkspaceId = $CreateWorkspaceServiceAccountResponse->WorkspaceId;

    # Returns a L<Paws::Grafana::CreateWorkspaceServiceAccountResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/grafana/CreateWorkspaceServiceAccount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GrafanaRole => Str

The permission level to use for this service account.

For more information about the roles and the permissions each has, see
User roles
(https://docs.aws.amazon.com/grafana/latest/userguide/Grafana-user-roles.html)
in the I<Amazon Managed Grafana User Guide>.

Valid values are: C<"ADMIN">, C<"EDITOR">, C<"VIEWER">

=head2 B<REQUIRED> Name => Str

A name for the service account. The name must be unique within the
workspace, as it determines the ID associated with the service account.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace within which to create the service account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorkspaceServiceAccount in L<Paws::Grafana>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

