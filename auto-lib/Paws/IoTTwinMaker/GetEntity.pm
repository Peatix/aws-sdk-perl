
package Paws::IoTTwinMaker::GetEntity;
  use Moose;
  has EntityId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'entityId', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEntity');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/entities/{entityId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::GetEntityResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::GetEntity - Arguments for method GetEntity on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEntity on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method GetEntity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEntity.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $GetEntityResponse = $iottwinmaker->GetEntity(
      EntityId    => 'MyEntityId',
      WorkspaceId => 'MyId',

    );

    # Results:
    my $AreAllComponentsReturned = $GetEntityResponse->AreAllComponentsReturned;
    my $Arn                      = $GetEntityResponse->Arn;
    my $Components               = $GetEntityResponse->Components;
    my $CreationDateTime         = $GetEntityResponse->CreationDateTime;
    my $Description              = $GetEntityResponse->Description;
    my $EntityId                 = $GetEntityResponse->EntityId;
    my $EntityName               = $GetEntityResponse->EntityName;
    my $HasChildEntities         = $GetEntityResponse->HasChildEntities;
    my $ParentEntityId           = $GetEntityResponse->ParentEntityId;
    my $Status                   = $GetEntityResponse->Status;
    my $SyncSource               = $GetEntityResponse->SyncSource;
    my $UpdateDateTime           = $GetEntityResponse->UpdateDateTime;
    my $WorkspaceId              = $GetEntityResponse->WorkspaceId;

    # Returns a L<Paws::IoTTwinMaker::GetEntityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/GetEntity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntityId => Str

The ID of the entity.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEntity in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

