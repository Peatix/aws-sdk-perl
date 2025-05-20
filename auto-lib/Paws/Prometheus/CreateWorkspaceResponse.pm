
package Paws::Prometheus::CreateWorkspaceResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has KmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyArn');
  has Status => (is => 'ro', isa => 'Paws::Prometheus::WorkspaceStatus', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Prometheus::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workspaceId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Prometheus::CreateWorkspaceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN for the new workspace.


=head2 KmsKeyArn => Str

(optional) If the workspace was created with a customer managed KMS
key, the ARN for the key used.


=head2 B<REQUIRED> Status => L<Paws::Prometheus::WorkspaceStatus>

The current status of the new workspace. Immediately after you create
the workspace, the status is usually C<CREATING>.


=head2 Tags => L<Paws::Prometheus::TagMap>

The list of tag keys and values that are associated with the workspace.


=head2 B<REQUIRED> WorkspaceId => Str

The unique ID for the new workspace.


=head2 _request_id => Str


=cut

