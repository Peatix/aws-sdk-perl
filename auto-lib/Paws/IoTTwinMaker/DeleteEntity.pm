
package Paws::IoTTwinMaker::DeleteEntity;
  use Moose;
  has EntityId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'entityId', required => 1);
  has IsRecursive => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'isRecursive');
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEntity');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/entities/{entityId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::DeleteEntityResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::DeleteEntity - Arguments for method DeleteEntity on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEntity on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method DeleteEntity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEntity.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $DeleteEntityResponse = $iottwinmaker->DeleteEntity(
      EntityId    => 'MyEntityId',
      WorkspaceId => 'MyId',
      IsRecursive => 1,              # OPTIONAL
    );

    # Results:
    my $State = $DeleteEntityResponse->State;

    # Returns a L<Paws::IoTTwinMaker::DeleteEntityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/DeleteEntity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntityId => Str

The ID of the entity to delete.



=head2 IsRecursive => Bool

A Boolean value that specifies whether the operation deletes child
entities.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace that contains the entity to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEntity in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

