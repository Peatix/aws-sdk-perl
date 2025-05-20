
package Paws::Omics::CreateWorkflowVersionResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Uuid => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uuid');
  has VersionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionName');
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::CreateWorkflowVersionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

ARN of the workflow version.


=head2 Status => Str

The workflow version status.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"UPDATING">, C<"DELETED">, C<"FAILED">, C<"INACTIVE">
=head2 Tags => L<Paws::Omics::TagMap>

The workflow version's tags.


=head2 Uuid => Str

The universally unique identifier (UUID) value for this workflow
version.


=head2 VersionName => Str

The workflow version name.


=head2 WorkflowId => Str

The workflow's ID.


=head2 _request_id => Str


=cut

