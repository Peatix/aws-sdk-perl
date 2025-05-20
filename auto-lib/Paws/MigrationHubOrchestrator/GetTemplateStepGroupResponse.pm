
package Paws::MigrationHubOrchestrator::GetTemplateStepGroupResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has LastModifiedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedTime');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Next => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'next');
  has Previous => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'previous');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateId');
  has Tools => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubOrchestrator::Tool]', traits => ['NameInRequest'], request_name => 'tools');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::GetTemplateStepGroupResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time at which the step group was created.


=head2 Description => Str

The description of the step group.


=head2 Id => Str

The ID of the step group.


=head2 LastModifiedTime => Str

The time at which the step group was last modified.


=head2 Name => Str

The name of the step group.


=head2 Next => ArrayRef[Str|Undef]

The next step group.


=head2 Previous => ArrayRef[Str|Undef]

The previous step group.


=head2 Status => Str

The status of the step group.

Valid values are: C<"AWAITING_DEPENDENCIES">, C<"READY">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">, C<"PAUSED">, C<"PAUSING">, C<"USER_ATTENTION_REQUIRED">
=head2 TemplateId => Str

The ID of the template.


=head2 Tools => ArrayRef[L<Paws::MigrationHubOrchestrator::Tool>]

List of AWS services utilized in a migration workflow.


=head2 _request_id => Str


=cut

