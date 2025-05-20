
package Paws::IoTTwinMaker::UpdateScene;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'capabilities');
  has ContentLocation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contentLocation');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has SceneId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sceneId', required => 1);
  has SceneMetadata => (is => 'ro', isa => 'Paws::IoTTwinMaker::SceneMetadataMap', traits => ['NameInRequest'], request_name => 'sceneMetadata');
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateScene');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/scenes/{sceneId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::UpdateSceneResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::UpdateScene - Arguments for method UpdateScene on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateScene on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method UpdateScene.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateScene.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $UpdateSceneResponse = $iottwinmaker->UpdateScene(
      SceneId      => 'MyId',
      WorkspaceId  => 'MyId',
      Capabilities => [
        'MySceneCapability', ...    # max: 256
      ],    # OPTIONAL
      ContentLocation => 'MyS3Url',          # OPTIONAL
      Description     => 'MyDescription',    # OPTIONAL
      SceneMetadata   => {
        'MyName' =>
          'MySceneMetadataValue',    # key: min: 1, max: 256, value: max: 2048
      },    # OPTIONAL
    );

    # Results:
    my $UpdateDateTime = $UpdateSceneResponse->UpdateDateTime;

    # Returns a L<Paws::IoTTwinMaker::UpdateSceneResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/UpdateScene>

=head1 ATTRIBUTES


=head2 Capabilities => ArrayRef[Str|Undef]

A list of capabilities that the scene uses to render.



=head2 ContentLocation => Str

The relative path that specifies the location of the content definition
file.



=head2 Description => Str

The description of this scene.



=head2 B<REQUIRED> SceneId => Str

The ID of the scene.



=head2 SceneMetadata => L<Paws::IoTTwinMaker::SceneMetadataMap>

The scene metadata.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace that contains the scene.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateScene in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

