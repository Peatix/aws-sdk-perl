
package Paws::CloudTrail::StartDashboardRefresh;
  use Moose;
  has DashboardId => (is => 'ro', isa => 'Str', required => 1);
  has QueryParameterValues => (is => 'ro', isa => 'Paws::CloudTrail::QueryParameterValues');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDashboardRefresh');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::StartDashboardRefreshResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::StartDashboardRefresh - Arguments for method StartDashboardRefresh on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDashboardRefresh on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method StartDashboardRefresh.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDashboardRefresh.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $StartDashboardRefreshResponse = $cloudtrail->StartDashboardRefresh(
      DashboardId          => 'MyDashboardArn',
      QueryParameterValues => {
        'MyQueryParameterKey' => 'MyQueryParameterValue'
        ,    # key: min: 3, max: 128, value: min: 1, max: 128
      },    # OPTIONAL
    );

    # Results:
    my $RefreshId = $StartDashboardRefreshResponse->RefreshId;

    # Returns a L<Paws::CloudTrail::StartDashboardRefreshResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/StartDashboardRefresh>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DashboardId => Str

The name or ARN of the dashboard.



=head2 QueryParameterValues => L<Paws::CloudTrail::QueryParameterValues>

The query parameter values for the dashboard

For custom dashboards, the following query parameters are valid:
C<$StartTime$>, C<$EndTime$>, and C<$Period$>.

For managed dashboards, the following query parameters are valid:
C<$StartTime$>, C<$EndTime$>, C<$Period$>, and C<$EventDataStoreId$>.
The C<$EventDataStoreId$> query parameter is required.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDashboardRefresh in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

