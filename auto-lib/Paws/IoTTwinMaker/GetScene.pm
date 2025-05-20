
package Paws::IoTTwinMaker::GetScene;
  use Moose;
  has SceneId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sceneId', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetScene');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/scenes/{sceneId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::GetSceneResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::GetScene - Arguments for method GetScene on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetScene on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method GetScene.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetScene.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $GetSceneResponse = $iottwinmaker->GetScene(
      SceneId     => 'MyId',
      WorkspaceId => 'MyId',

    );

    # Results:
    my $Arn                    = $GetSceneResponse->Arn;
    my $Capabilities           = $GetSceneResponse->Capabilities;
    my $ContentLocation        = $GetSceneResponse->ContentLocation;
    my $CreationDateTime       = $GetSceneResponse->CreationDateTime;
    my $Description            = $GetSceneResponse->Description;
    my $Error                  = $GetSceneResponse->Error;
    my $GeneratedSceneMetadata = $GetSceneResponse->GeneratedSceneMetadata;
    my $SceneId                = $GetSceneResponse->SceneId;
    my $SceneMetadata          = $GetSceneResponse->SceneMetadata;
    my $UpdateDateTime         = $GetSceneResponse->UpdateDateTime;
    my $WorkspaceId            = $GetSceneResponse->WorkspaceId;

    # Returns a L<Paws::IoTTwinMaker::GetSceneResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/GetScene>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SceneId => Str

The ID of the scene.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace that contains the scene.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetScene in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

