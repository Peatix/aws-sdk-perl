
package Paws::CloudTrail::CreateDashboard;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RefreshSchedule => (is => 'ro', isa => 'Paws::CloudTrail::RefreshSchedule');
  has TagsList => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::Tag]');
  has TerminationProtectionEnabled => (is => 'ro', isa => 'Bool');
  has Widgets => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::RequestWidget]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDashboard');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::CreateDashboardResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::CreateDashboard - Arguments for method CreateDashboard on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDashboard on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method CreateDashboard.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDashboard.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $CreateDashboardResponse = $cloudtrail->CreateDashboard(
      Name            => 'MyDashboardName',
      RefreshSchedule => {
        Frequency => {
          Unit  => 'HOURS',    # values: HOURS, DAYS; OPTIONAL
          Value => 1,          # OPTIONAL
        },    # OPTIONAL
        Status    => 'ENABLED',        # values: ENABLED, DISABLED; OPTIONAL
        TimeOfDay => 'MyTimeOfDay',    # OPTIONAL
      },    # OPTIONAL
      TagsList => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
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
    my $DashboardArn    = $CreateDashboardResponse->DashboardArn;
    my $Name            = $CreateDashboardResponse->Name;
    my $RefreshSchedule = $CreateDashboardResponse->RefreshSchedule;
    my $TagsList        = $CreateDashboardResponse->TagsList;
    my $TerminationProtectionEnabled =
      $CreateDashboardResponse->TerminationProtectionEnabled;
    my $Type    = $CreateDashboardResponse->Type;
    my $Widgets = $CreateDashboardResponse->Widgets;

    # Returns a L<Paws::CloudTrail::CreateDashboardResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/CreateDashboard>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the dashboard. The name must be unique to your account.

To create the Highlights dashboard, the name must be
C<AWSCloudTrail-Highlights>.



=head2 RefreshSchedule => L<Paws::CloudTrail::RefreshSchedule>

The refresh schedule configuration for the dashboard.

To create the Highlights dashboard, you must set a refresh schedule and
set the C<Status> to C<ENABLED>. The C<Unit> for the refresh schedule
must be C<HOURS> and the C<Value> must be C<6>.



=head2 TagsList => ArrayRef[L<Paws::CloudTrail::Tag>]





=head2 TerminationProtectionEnabled => Bool

Specifies whether termination protection is enabled for the dashboard.
If termination protection is enabled, you cannot delete the dashboard
until termination protection is disabled.



=head2 Widgets => ArrayRef[L<Paws::CloudTrail::RequestWidget>]

An array of widgets for a custom dashboard. A custom dashboard can have
a maximum of ten widgets.

You do not need to specify widgets for the Highlights dashboard.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDashboard in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

