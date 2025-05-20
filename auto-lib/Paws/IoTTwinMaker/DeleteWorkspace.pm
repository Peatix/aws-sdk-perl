
package Paws::IoTTwinMaker::DeleteWorkspace;
  use Moose;
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteWorkspace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::DeleteWorkspaceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::DeleteWorkspace - Arguments for method DeleteWorkspace on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteWorkspace on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method DeleteWorkspace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteWorkspace.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $DeleteWorkspaceResponse = $iottwinmaker->DeleteWorkspace(
      WorkspaceId => 'MyId',

    );

    # Results:
    my $Message = $DeleteWorkspaceResponse->Message;

    # Returns a L<Paws::IoTTwinMaker::DeleteWorkspaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/DeleteWorkspace>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteWorkspace in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

