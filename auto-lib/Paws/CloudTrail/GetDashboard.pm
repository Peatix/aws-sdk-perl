
package Paws::CloudTrail::GetDashboard;
  use Moose;
  has DashboardId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDashboard');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::GetDashboardResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::GetDashboard - Arguments for method GetDashboard on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDashboard on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method GetDashboard.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDashboard.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $GetDashboardResponse = $cloudtrail->GetDashboard(
      DashboardId => 'MyDashboardArn',

    );

    # Results:
    my $CreatedTimestamp = $GetDashboardResponse->CreatedTimestamp;
    my $DashboardArn     = $GetDashboardResponse->DashboardArn;
    my $LastRefreshFailureReason =
      $GetDashboardResponse->LastRefreshFailureReason;
    my $LastRefreshId   = $GetDashboardResponse->LastRefreshId;
    my $RefreshSchedule = $GetDashboardResponse->RefreshSchedule;
    my $Status          = $GetDashboardResponse->Status;
    my $TerminationProtectionEnabled =
      $GetDashboardResponse->TerminationProtectionEnabled;
    my $Type             = $GetDashboardResponse->Type;
    my $UpdatedTimestamp = $GetDashboardResponse->UpdatedTimestamp;
    my $Widgets          = $GetDashboardResponse->Widgets;

    # Returns a L<Paws::CloudTrail::GetDashboardResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/GetDashboard>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DashboardId => Str

The name or ARN for the dashboard.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDashboard in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

