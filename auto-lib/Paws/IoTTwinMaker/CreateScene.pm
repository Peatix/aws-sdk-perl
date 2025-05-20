
package Paws::IoTTwinMaker::CreateScene;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'capabilities');
  has ContentLocation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contentLocation', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has SceneId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sceneId', required => 1);
  has SceneMetadata => (is => 'ro', isa => 'Paws::IoTTwinMaker::SceneMetadataMap', traits => ['NameInRequest'], request_name => 'sceneMetadata');
  has Tags => (is => 'ro', isa => 'Paws::IoTTwinMaker::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateScene');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/scenes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::CreateSceneResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::CreateScene - Arguments for method CreateScene on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateScene on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method CreateScene.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateScene.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $CreateSceneResponse = $iottwinmaker->CreateScene(
      ContentLocation => 'MyS3Url',
      SceneId         => 'MyId',
      WorkspaceId     => 'MyId',
      Capabilities    => [
        'MySceneCapability', ...    # max: 256
      ],    # OPTIONAL
      Description   => 'MyDescription',    # OPTIONAL
      SceneMetadata => {
        'MyName' =>
          'MySceneMetadataValue',    # key: min: 1, max: 256, value: max: 2048
      },    # OPTIONAL
      Tags => {
        'MyTagKey' =>
          'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn              = $CreateSceneResponse->Arn;
    my $CreationDateTime = $CreateSceneResponse->CreationDateTime;

    # Returns a L<Paws::IoTTwinMaker::CreateSceneResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/CreateScene>

=head1 ATTRIBUTES


=head2 Capabilities => ArrayRef[Str|Undef]

A list of capabilities that the scene uses to render itself.



=head2 B<REQUIRED> ContentLocation => Str

The relative path that specifies the location of the content definition
file.



=head2 Description => Str

The description for this scene.



=head2 B<REQUIRED> SceneId => Str

The ID of the scene.



=head2 SceneMetadata => L<Paws::IoTTwinMaker::SceneMetadataMap>

The request metadata.



=head2 Tags => L<Paws::IoTTwinMaker::TagMap>

Metadata that you can use to manage the scene.



=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace that contains the scene.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateScene in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

