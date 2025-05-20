
package Paws::CloudTrail::UpdateDashboard;
  use Moose;
  has DashboardId => (is => 'ro', isa => 'Str', required => 1);
  has RefreshSchedule => (is => 'ro', isa => 'Paws::CloudTrail::RefreshSchedule');
  has TerminationProtectionEnabled => (is => 'ro', isa => 'Bool');
  has Widgets => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::RequestWidget]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDashboard');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::UpdateDashboardResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::UpdateDashboard - Arguments for method UpdateDashboard on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDashboard on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method UpdateDashboard.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDashboard.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $UpdateDashboardResponse = $cloudtrail->UpdateDashboard(
      DashboardId     => 'MyDashboardArn',
      RefreshSchedule => {
        Frequency => {
          Unit  => 'HOURS',    # values: HOURS, DAYS; OPTIONAL
          Value => 1,          # OPTIONAL
        },    # OPTIONAL
        Status    => 'ENABLED',        # values: ENABLED, DISABLED; OPTIONAL
        TimeOfDay => 'MyTimeOfDay',    # OPTIONAL
      },    # OPTIONAL
      TerminationProtectionEnabled => 1,    # OPTIONAL
      Widgets                      => [
        {
          QueryStatement => 'MyQueryStatement',    # min: 1, max: 10000
          ViewProperties => {
            'MyViewPropertiesKey' => 'MyViewPropertiesValue'
            ,    # key: min: 3, max: 128, value: min: 1, max: 128
          },
          QueryParameters => [
            'MyQueryParameter', ...    # min: 1, max: 1024
          ],    # min: 1, max: 10; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $CreatedTimestamp = $UpdateDashboardResponse->CreatedTimestamp;
    my $DashboardArn     = $UpdateDashboardResponse->DashboardArn;
    my $Name             = $UpdateDashboardResponse->Name;
    my $RefreshSchedule  = $UpdateDashboardResponse->RefreshSchedule;
    my $TerminationProtectionEnabled =
      $UpdateDashboardResponse->TerminationProtectionEnabled;
    my $Type             = $UpdateDashboardResponse->Type;
    my $UpdatedTimestamp = $UpdateDashboardResponse->UpdatedTimestamp;
    my $Widgets          = $UpdateDashboardResponse->Widgets;

    # Returns a L<Paws::CloudTrail::UpdateDashboardResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/UpdateDashboard>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DashboardId => Str

The name or ARN of the dashboard.



=head2 RefreshSchedule => L<Paws::CloudTrail::RefreshSchedule>

The refresh schedule configuration for the dashboard.



=head2 TerminationProtectionEnabled => Bool

Specifies whether termination protection is enabled for the dashboard.
If termination protection is enabled, you cannot delete the dashboard
until termination protection is disabled.



=head2 Widgets => ArrayRef[L<Paws::CloudTrail::RequestWidget>]

An array of widgets for the dashboard. A custom dashboard can have a
maximum of 10 widgets.

To add new widgets, pass in an array that includes the existing widgets
along with any new widgets. Run the C<GetDashboard> operation to get
the list of widgets for the dashboard.

To remove widgets, pass in an array that includes the existing widgets
minus the widgets you want removed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDashboard in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

