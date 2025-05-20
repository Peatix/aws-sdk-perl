
package Paws::Backup::UpdateRestoreTestingPlan;
  use Moose;
  has RestoreTestingPlan => (is => 'ro', isa => 'Paws::Backup::RestoreTestingPlanForUpdate', required => 1);
  has RestoreTestingPlanName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'RestoreTestingPlanName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRestoreTestingPlan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restore-testing/plans/{RestoreTestingPlanName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::UpdateRestoreTestingPlanOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::UpdateRestoreTestingPlan - Arguments for method UpdateRestoreTestingPlan on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRestoreTestingPlan on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method UpdateRestoreTestingPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRestoreTestingPlan.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $UpdateRestoreTestingPlanOutput = $backup->UpdateRestoreTestingPlan(
      RestoreTestingPlan => {
        RecoveryPointSelection => {
          Algorithm => 'LATEST_WITHIN_WINDOW'
          ,    # values: LATEST_WITHIN_WINDOW, RANDOM_WITHIN_WINDOW; OPTIONAL
          ExcludeVaults      => [ 'Mystring', ... ],    # OPTIONAL
          IncludeVaults      => [ 'Mystring', ... ],    # OPTIONAL
          RecoveryPointTypes => [
            'CONTINUOUS', ...    # values: CONTINUOUS, SNAPSHOT
          ],    # OPTIONAL
          SelectionWindowDays => 1,    # OPTIONAL
        },    # OPTIONAL
        ScheduleExpression         => 'MyString',    # OPTIONAL
        ScheduleExpressionTimezone => 'MyString',    # OPTIONAL
        StartWindowHours           => 1,             # OPTIONAL
      },
      RestoreTestingPlanName => 'MyString',

    );

    # Results:
    my $CreationTime = $UpdateRestoreTestingPlanOutput->CreationTime;
    my $RestoreTestingPlanArn =
      $UpdateRestoreTestingPlanOutput->RestoreTestingPlanArn;
    my $RestoreTestingPlanName =
      $UpdateRestoreTestingPlanOutput->RestoreTestingPlanName;
    my $UpdateTime = $UpdateRestoreTestingPlanOutput->UpdateTime;

    # Returns a L<Paws::Backup::UpdateRestoreTestingPlanOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/UpdateRestoreTestingPlan>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RestoreTestingPlan => L<Paws::Backup::RestoreTestingPlanForUpdate>

Specifies the body of a restore testing plan.



=head2 B<REQUIRED> RestoreTestingPlanName => Str

The name of the restore testing plan name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRestoreTestingPlan in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

