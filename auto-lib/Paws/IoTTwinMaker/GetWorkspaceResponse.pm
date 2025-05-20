
package Paws::IoTTwinMaker::GetWorkspaceResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has LinkedServices => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'linkedServices');
  has Role => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'role');
  has S3Location => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 's3Location');
  has UpdateDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateDateTime', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workspaceId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::GetWorkspaceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the workspace.


=head2 B<REQUIRED> CreationDateTime => Str

The date and time when the workspace was created.


=head2 Description => Str

The description of the workspace.


=head2 LinkedServices => ArrayRef[Str|Undef]

A list of services that are linked to the workspace.


=head2 Role => Str

The ARN of the execution role associated with the workspace.


=head2 S3Location => Str

The ARN of the S3 bucket where resources associated with the workspace
are stored.


=head2 B<REQUIRED> UpdateDateTime => Str

The date and time when the workspace was last updated.


=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace.


=head2 _request_id => Str


=cut

