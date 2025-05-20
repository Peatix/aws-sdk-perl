
package Paws::IoTTwinMaker::GetSceneResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'capabilities');
  has ContentLocation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contentLocation', required => 1);
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Error => (is => 'ro', isa => 'Paws::IoTTwinMaker::SceneError', traits => ['NameInRequest'], request_name => 'error');
  has GeneratedSceneMetadata => (is => 'ro', isa => 'Paws::IoTTwinMaker::GeneratedSceneMetadataMap', traits => ['NameInRequest'], request_name => 'generatedSceneMetadata');
  has SceneId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sceneId', required => 1);
  has SceneMetadata => (is => 'ro', isa => 'Paws::IoTTwinMaker::SceneMetadataMap', traits => ['NameInRequest'], request_name => 'sceneMetadata');
  has UpdateDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateDateTime', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workspaceId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::GetSceneResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the scene.


=head2 Capabilities => ArrayRef[Str|Undef]

A list of capabilities that the scene uses to render.


=head2 B<REQUIRED> ContentLocation => Str

The relative path that specifies the location of the content definition
file.


=head2 B<REQUIRED> CreationDateTime => Str

The date and time when the scene was created.


=head2 Description => Str

The description of the scene.


=head2 Error => L<Paws::IoTTwinMaker::SceneError>

The SceneResponse error.


=head2 GeneratedSceneMetadata => L<Paws::IoTTwinMaker::GeneratedSceneMetadataMap>

The generated scene metadata.


=head2 B<REQUIRED> SceneId => Str

The ID of the scene.


=head2 SceneMetadata => L<Paws::IoTTwinMaker::SceneMetadataMap>

The response metadata.


=head2 B<REQUIRED> UpdateDateTime => Str

The date and time when the scene was last updated.


=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace that contains the scene.


=head2 _request_id => Str


=cut

