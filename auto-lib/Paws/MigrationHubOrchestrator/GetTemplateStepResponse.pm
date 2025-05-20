
package Paws::MigrationHubOrchestrator::GetTemplateStepResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Next => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'next');
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubOrchestrator::StepOutput]', traits => ['NameInRequest'], request_name => 'outputs');
  has Previous => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'previous');
  has StepActionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stepActionType');
  has StepAutomationConfiguration => (is => 'ro', isa => 'Paws::MigrationHubOrchestrator::StepAutomationConfiguration', traits => ['NameInRequest'], request_name => 'stepAutomationConfiguration');
  has StepGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stepGroupId');
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::GetTemplateStepResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time at which the step was created.


=head2 Description => Str

The description of the step.


=head2 Id => Str

The ID of the step.


=head2 Name => Str

The name of the step.


=head2 Next => ArrayRef[Str|Undef]

The next step.


=head2 Outputs => ArrayRef[L<Paws::MigrationHubOrchestrator::StepOutput>]

The outputs of the step.


=head2 Previous => ArrayRef[Str|Undef]

The previous step.


=head2 StepActionType => Str

The action type of the step. You must run and update the status of a
manual step for the workflow to continue after the completion of the
step.

Valid values are: C<"MANUAL">, C<"AUTOMATED">
=head2 StepAutomationConfiguration => L<Paws::MigrationHubOrchestrator::StepAutomationConfiguration>

The custom script to run tests on source or target environments.


=head2 StepGroupId => Str

The ID of the step group.


=head2 TemplateId => Str

The ID of the template.


=head2 _request_id => Str


=cut

