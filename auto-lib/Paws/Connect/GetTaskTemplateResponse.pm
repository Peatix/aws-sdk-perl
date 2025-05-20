
package Paws::Connect::GetTaskTemplateResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Constraints => (is => 'ro', isa => 'Paws::Connect::TaskTemplateConstraints');
  has ContactFlowId => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Defaults => (is => 'ro', isa => 'Paws::Connect::TaskTemplateDefaults');
  has Description => (is => 'ro', isa => 'Str');
  has Fields => (is => 'ro', isa => 'ArrayRef[Paws::Connect::TaskTemplateField]');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SelfAssignFlowId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Connect::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetTaskTemplateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN).


=head2 Constraints => L<Paws::Connect::TaskTemplateConstraints>

Constraints that are applicable to the fields listed.


=head2 ContactFlowId => Str

The identifier of the flow that runs by default when a task is created
by referencing this template.


=head2 CreatedTime => Str

The timestamp when the task template was created.


=head2 Defaults => L<Paws::Connect::TaskTemplateDefaults>

The default values for fields when a task is created by referencing
this template.


=head2 Description => Str

The description of the task template.


=head2 Fields => ArrayRef[L<Paws::Connect::TaskTemplateField>]

Fields that are part of the template.


=head2 B<REQUIRED> Id => Str

A unique identifier for the task template.


=head2 InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.


=head2 LastModifiedTime => Str

The timestamp when the task template was last modified.


=head2 B<REQUIRED> Name => Str

The name of the task template.


=head2 SelfAssignFlowId => Str

ContactFlowId for the flow that will be run if this template is used to
create a self-assigned task


=head2 Status => Str

Marks a template as C<ACTIVE> or C<INACTIVE> for a task to refer to it.
Tasks can only be created from C<ACTIVE> templates. If a template is
marked as C<INACTIVE>, then a task that refers to this template cannot
be created.

Valid values are: C<"ACTIVE">, C<"INACTIVE">
=head2 Tags => L<Paws::Connect::TagMap>

The tags used to organize, track, or control access for this resource.
For example, { "Tags": {"key1":"value1", "key2":"value2"} }.


=head2 _request_id => Str


=cut

