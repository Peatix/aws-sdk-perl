
package Paws::SSM::CreateAssociationBatch;
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::SSM::CreateAssociationBatchRequestEntry]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAssociationBatch');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::CreateAssociationBatchResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CreateAssociationBatch - Arguments for method CreateAssociationBatch on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAssociationBatch on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method CreateAssociationBatch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAssociationBatch.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $CreateAssociationBatchResult = $ssm->CreateAssociationBatch(
      Entries => [
        {
          Name               => 'MyDocumentARN',
          AlarmConfiguration => {
            Alarms => [
              {
                Name => 'MyAlarmName',    # min: 1, max: 255

              },
              ...
            ],    # min: 1, max: 1
            IgnorePollAlarmFailure => 1,    # OPTIONAL
          },    # OPTIONAL
          ApplyOnlyAtCronInterval       => 1,                      # OPTIONAL
          AssociationName               => 'MyAssociationName',    # OPTIONAL
          AutomationTargetParameterName =>
            'MyAutomationTargetParameterName',    # min: 1, max: 50; OPTIONAL
          CalendarNames      => [ 'MyCalendarNameOrARN', ... ],    # OPTIONAL
          ComplianceSeverity => 'CRITICAL'
          ,    # values: CRITICAL, HIGH, MEDIUM, LOW, UNSPECIFIED; OPTIONAL
          DocumentVersion => 'MyDocumentVersion',    # OPTIONAL
          Duration        => 1,                      # min: 1, max: 24; OPTIONAL
          InstanceId      => 'MyInstanceId',         # OPTIONAL
          MaxConcurrency  => 'MyMaxConcurrency',     # min: 1, max: 7; OPTIONAL
          MaxErrors       => 'MyMaxErrors',          # min: 1, max: 7; OPTIONAL
          OutputLocation  => {
            S3Location => {
              OutputS3BucketName =>
                'MyS3BucketName',                    # min: 3, max: 63; OPTIONAL
              OutputS3KeyPrefix => 'MyS3KeyPrefix',  # max: 500; OPTIONAL
              OutputS3Region    => 'MyS3Region',     # min: 3, max: 20; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Parameters => { 'MyParameterName' => [ 'MyParameterValue', ... ], }
          ,                            # OPTIONAL
          ScheduleExpression =>
            'MyScheduleExpression',    # min: 1, max: 256; OPTIONAL
          ScheduleOffset  => 1,        # min: 1, max: 6; OPTIONAL
          SyncCompliance  => 'AUTO',   # values: AUTO, MANUAL; OPTIONAL
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
          TargetMaps => [
            {
              'MyTargetMapKey' => [
                'MyTargetMapValue', ...    # min: 1, max: 50
              ],    # key: min: 1, max: 50, value: max: 25
            },
            ...     # min: 1, max: 20
          ],    # max: 300; OPTIONAL
          Targets => [
            {
              Key    => 'MyTargetKey',              # min: 1, max: 163; OPTIONAL
              Values => [ 'MyTargetValue', ... ],   # max: 50; OPTIONAL
            },
            ...
          ],    # max: 5; OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $Failed     = $CreateAssociationBatchResult->Failed;
    my $Successful = $CreateAssociationBatchResult->Successful;

    # Returns a L<Paws::SSM::CreateAssociationBatchResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/CreateAssociationBatch>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Entries => ArrayRef[L<Paws::SSM::CreateAssociationBatchRequestEntry>]

One or more associations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAssociationBatch in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

