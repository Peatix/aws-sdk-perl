
package Paws::Grafana::UpdatePermissions;
  use Moose;
  has UpdateInstructionBatch => (is => 'ro', isa => 'ArrayRef[Paws::Grafana::UpdateInstruction]', traits => ['NameInRequest'], request_name => 'updateInstructionBatch', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePermissions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/permissions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Grafana::UpdatePermissionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::UpdatePermissions - Arguments for method UpdatePermissions on L<Paws::Grafana>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePermissions on the
L<Amazon Managed Grafana|Paws::Grafana> service. Use the attributes of this class
as arguments to method UpdatePermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePermissions.

=head1 SYNOPSIS

    my $grafana = Paws->service('Grafana');
    my $UpdatePermissionsResponse = $grafana->UpdatePermissions(
      UpdateInstructionBatch => [
        {
          Action => 'ADD',      # values: ADD, REVOKE
          Role   => 'ADMIN',    # values: ADMIN, EDITOR, VIEWER
          Users  => [
            {
              Id   => 'MySsoId',     # min: 1, max: 47
              Type => 'SSO_USER',    # values: SSO_USER, SSO_GROUP

            },
            ...
          ],

        },
        ...
      ],
      WorkspaceId => 'MyWorkspaceId',

    );

    # Results:
    my $Errors = $UpdatePermissionsResponse->Errors;

    # Returns a L<Paws::Grafana::UpdatePermissionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/grafana/UpdatePermissions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> UpdateInstructionBatch => ArrayRef[L<Paws::Grafana::UpdateInstruction>]

An array of structures that contain the permission updates to make.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePermissions in L<Paws::Grafana>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

