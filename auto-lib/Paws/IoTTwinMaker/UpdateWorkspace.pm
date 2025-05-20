
package Paws::IoTTwinMaker::UpdateWorkspace;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Role => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'role');
  has S3Location => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 's3Location');
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWorkspace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::UpdateWorkspaceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::UpdateWorkspace - Arguments for method UpdateWorkspace on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWorkspace on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method UpdateWorkspace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWorkspace.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $UpdateWorkspaceResponse = $iottwinmaker->UpdateWorkspace(
      WorkspaceId => 'MyId',
      Description => 'MyDescription',    # OPTIONAL
      Role        => 'MyRoleArn',        # OPTIONAL
      S3Location  => 'MyS3Location',     # OPTIONAL
    );

    # Results:
    my $UpdateDateTime = $UpdateWorkspaceResponse->UpdateDateTime;

    # Returns a L<Paws::IoTTwinMaker::UpdateWorkspaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/UpdateWorkspace>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the workspace.



=head2 Role => Str

The ARN of the execution role associated with the workspace.



=head2 S3Location => Str

The ARN of the S3 bucket where resources associated with the workspace
are stored.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWorkspace in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

