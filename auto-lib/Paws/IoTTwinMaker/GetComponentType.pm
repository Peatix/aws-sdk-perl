
package Paws::IoTTwinMaker::GetComponentType;
  use Moose;
  has ComponentTypeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'componentTypeId', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetComponentType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/component-types/{componentTypeId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::GetComponentTypeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::GetComponentType - Arguments for method GetComponentType on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetComponentType on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method GetComponentType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetComponentType.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $GetComponentTypeResponse = $iottwinmaker->GetComponentType(
      ComponentTypeId => 'MyComponentTypeId',
      WorkspaceId     => 'MyId',

    );

    # Results:
    my $Arn               = $GetComponentTypeResponse->Arn;
    my $ComponentTypeId   = $GetComponentTypeResponse->ComponentTypeId;
    my $ComponentTypeName = $GetComponentTypeResponse->ComponentTypeName;
    my $CompositeComponentTypes =
      $GetComponentTypeResponse->CompositeComponentTypes;
    my $CreationDateTime    = $GetComponentTypeResponse->CreationDateTime;
    my $Description         = $GetComponentTypeResponse->Description;
    my $ExtendsFrom         = $GetComponentTypeResponse->ExtendsFrom;
    my $Functions           = $GetComponentTypeResponse->Functions;
    my $IsAbstract          = $GetComponentTypeResponse->IsAbstract;
    my $IsSchemaInitialized = $GetComponentTypeResponse->IsSchemaInitialized;
    my $IsSingleton         = $GetComponentTypeResponse->IsSingleton;
    my $PropertyDefinitions = $GetComponentTypeResponse->PropertyDefinitions;
    my $PropertyGroups      = $GetComponentTypeResponse->PropertyGroups;
    my $Status              = $GetComponentTypeResponse->Status;
    my $SyncSource          = $GetComponentTypeResponse->SyncSource;
    my $UpdateDateTime      = $GetComponentTypeResponse->UpdateDateTime;
    my $WorkspaceId         = $GetComponentTypeResponse->WorkspaceId;

    # Returns a L<Paws::IoTTwinMaker::GetComponentTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/GetComponentType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComponentTypeId => Str

The ID of the component type.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace that contains the component type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetComponentType in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

