
package Paws::MigrationHubOrchestrator::CreateWorkflowStepGroup;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Next => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'next');
  has Previous => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'previous');
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorkflowStepGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workflowstepgroups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubOrchestrator::CreateWorkflowStepGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::CreateWorkflowStepGroup - Arguments for method CreateWorkflowStepGroup on L<Paws::MigrationHubOrchestrator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorkflowStepGroup on the
L<AWS Migration Hub Orchestrator|Paws::MigrationHubOrchestrator> service. Use the attributes of this class
as arguments to method CreateWorkflowStepGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorkflowStepGroup.

=head1 SYNOPSIS

    my $migrationhub-orchestrator = Paws->service('MigrationHubOrchestrator');
    my $CreateWorkflowStepGroupResponse =
      $migrationhub -orchestrator->CreateWorkflowStepGroup(
      Name        => 'MyStepGroupName',
      WorkflowId  => 'MyMigrationWorkflowId',
      Description => 'MyStepGroupDescription',    # OPTIONAL
      Next        => [
        'MyStringListMember', ...                 # max: 500
      ],    # OPTIONAL
      Previous => [
        'MyStringListMember', ...    # max: 500
      ],    # OPTIONAL
      );

    # Results:
    my $CreationTime = $CreateWorkflowStepGroupResponse->CreationTime;
    my $Description  = $CreateWorkflowStepGroupResponse->Description;
    my $Id           = $CreateWorkflowStepGroupResponse->Id;
    my $Name         = $CreateWorkflowStepGroupResponse->Name;
    my $Next         = $CreateWorkflowStepGroupResponse->Next;
    my $Previous     = $CreateWorkflowStepGroupResponse->Previous;
    my $Tools        = $CreateWorkflowStepGroupResponse->Tools;
    my $WorkflowId   = $CreateWorkflowStepGroupResponse->WorkflowId;

# Returns a L<Paws::MigrationHubOrchestrator::CreateWorkflowStepGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-orchestrator/CreateWorkflowStepGroup>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the step group.



=head2 B<REQUIRED> Name => Str

The name of the step group.



=head2 Next => ArrayRef[Str|Undef]

The next step group.



=head2 Previous => ArrayRef[Str|Undef]

The previous step group.



=head2 B<REQUIRED> WorkflowId => Str

The ID of the migration workflow that will contain the step group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorkflowStepGroup in L<Paws::MigrationHubOrchestrator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

