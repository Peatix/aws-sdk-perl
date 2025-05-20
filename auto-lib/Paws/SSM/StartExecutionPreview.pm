
package Paws::SSM::StartExecutionPreview;
  use Moose;
  has DocumentName => (is => 'ro', isa => 'Str', required => 1);
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has ExecutionInputs => (is => 'ro', isa => 'Paws::SSM::ExecutionInputs');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartExecutionPreview');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::StartExecutionPreviewResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::StartExecutionPreview - Arguments for method StartExecutionPreview on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartExecutionPreview on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method StartExecutionPreview.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartExecutionPreview.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $StartExecutionPreviewResponse = $ssm->StartExecutionPreview(
      DocumentName    => 'MyDocumentName',
      DocumentVersion => 'MyDocumentVersion',    # OPTIONAL
      ExecutionInputs => {
        Automation => {
          Parameters => {
            'MyAutomationParameterKey' => [
              'MyAutomationParameterValue', ...    # min: 1, max: 512
            ],    # key: min: 1, max: 50, value: max: 50
          },    # min: 1, max: 200; OPTIONAL
          TargetLocations => [
            {
              Accounts => [ 'MyAccount', ... ],    # min: 1, max: 50; OPTIONAL
              ExcludeAccounts => [
                'MyExcludeAccount', ...            # min: 6, max: 68
              ],    # min: 1, max: 5000; OPTIONAL
              ExecutionRoleName =>
                'MyExecutionRoleName',    # min: 1, max: 64; OPTIONAL
              IncludeChildOrganizationUnits => 1,    # OPTIONAL
              Regions => [ 'MyRegion', ... ],        # min: 1, max: 50; OPTIONAL
              TargetLocationAlarmConfiguration => {
                Alarms => [
                  {
                    Name => 'MyAlarmName',    # min: 1, max: 255

                  },
                  ...
                ],    # min: 1, max: 1
                IgnorePollAlarmFailure => 1,    # OPTIONAL
              },    # OPTIONAL
              TargetLocationMaxConcurrency =>
                'MyMaxConcurrency',    # min: 1, max: 7; OPTIONAL
              TargetLocationMaxErrors =>
                'MyMaxErrors',         # min: 1, max: 7; OPTIONAL
              Targets => [
                {
                  Key    => 'MyTargetKey',    # min: 1, max: 163; OPTIONAL
                  Values => [ 'MyTargetValue', ... ],    # max: 50; OPTIONAL
                },
                ...
              ],    # max: 5; OPTIONAL
              TargetsMaxConcurrency =>
                'MyMaxConcurrency',    # min: 1, max: 7; OPTIONAL
              TargetsMaxErrors => 'MyMaxErrors',    # min: 1, max: 7; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          TargetLocationsURL => 'MyTargetLocationsURL',    # OPTIONAL
          TargetMaps         => [
            {
              'MyTargetMapKey' => [
                'MyTargetMapValue', ...    # min: 1, max: 50
              ],    # key: min: 1, max: 50, value: max: 25
            },
            ...     # min: 1, max: 20
          ],    # max: 300; OPTIONAL
          TargetParameterName => 'MyAutomationParameterKey',   # min: 1, max: 50
          Targets             => [
            {
              Key    => 'MyTargetKey',              # min: 1, max: 163; OPTIONAL
              Values => [ 'MyTargetValue', ... ],   # max: 50; OPTIONAL
            },
            ...
          ],    # max: 5; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ExecutionPreviewId = $StartExecutionPreviewResponse->ExecutionPreviewId;

    # Returns a L<Paws::SSM::StartExecutionPreviewResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/StartExecutionPreview>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DocumentName => Str

The name of the Automation runbook to run. The result of the execution
preview indicates what the impact would be of running this runbook.



=head2 DocumentVersion => Str

The version of the Automation runbook to run. The default value is
C<$DEFAULT>.



=head2 ExecutionInputs => L<Paws::SSM::ExecutionInputs>

Information about the inputs that can be specified for the preview
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartExecutionPreview in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

