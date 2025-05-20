
package Paws::Backup::CreateRestoreTestingPlan;
  use Moose;
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has RestoreTestingPlan => (is => 'ro', isa => 'Paws::Backup::RestoreTestingPlanForCreate', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Backup::SensitiveStringMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRestoreTestingPlan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restore-testing/plans');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::CreateRestoreTestingPlanOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::CreateRestoreTestingPlan - Arguments for method CreateRestoreTestingPlan on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRestoreTestingPlan on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method CreateRestoreTestingPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRestoreTestingPlan.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $CreateRestoreTestingPlanOutput = $backup->CreateRestoreTestingPlan(
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
        },
        RestoreTestingPlanName     => 'MyString',
        ScheduleExpression         => 'MyString',
        ScheduleExpressionTimezone => 'MyString',
        StartWindowHours           => 1,            # OPTIONAL
      },
      CreatorRequestId => 'MyString',                       # OPTIONAL
      Tags             => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $CreationTime = $CreateRestoreTestingPlanOutput->CreationTime;
    my $RestoreTestingPlanArn =
      $CreateRestoreTestingPlanOutput->RestoreTestingPlanArn;
    my $RestoreTestingPlanName =
      $CreateRestoreTestingPlanOutput->RestoreTestingPlanName;

    # Returns a L<Paws::Backup::CreateRestoreTestingPlanOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/CreateRestoreTestingPlan>

=head1 ATTRIBUTES


=head2 CreatorRequestId => Str

This is a unique string that identifies the request and allows failed
requests to be retriedwithout the risk of running the operation twice.
This parameter is optional. If used, this parameter must contain 1 to
50 alphanumeric or '-_.' characters.



=head2 B<REQUIRED> RestoreTestingPlan => L<Paws::Backup::RestoreTestingPlanForCreate>

A restore testing plan must contain a unique C<RestoreTestingPlanName>
string you create and must contain a C<ScheduleExpression> cron. You
may optionally include a C<StartWindowHours> integer and a
C<CreatorRequestId> string.

The C<RestoreTestingPlanName> is a unique string that is the name of
the restore testing plan. This cannot be changed after creation, and it
must consist of only alphanumeric characters and underscores.



=head2 Tags => L<Paws::Backup::SensitiveStringMap>

The tags to assign to the restore testing plan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRestoreTestingPlan in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

