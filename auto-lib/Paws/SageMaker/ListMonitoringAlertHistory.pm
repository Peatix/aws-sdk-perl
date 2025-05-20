
package Paws::SageMaker::ListMonitoringAlertHistory;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has MonitoringAlertName => (is => 'ro', isa => 'Str');
  has MonitoringScheduleName => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has StatusEquals => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMonitoringAlertHistory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListMonitoringAlertHistoryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListMonitoringAlertHistory - Arguments for method ListMonitoringAlertHistory on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMonitoringAlertHistory on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListMonitoringAlertHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMonitoringAlertHistory.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListMonitoringAlertHistoryResponse =
      $api . sagemaker->ListMonitoringAlertHistory(
      CreationTimeAfter      => '1970-01-01T01:00:00',         # OPTIONAL
      CreationTimeBefore     => '1970-01-01T01:00:00',         # OPTIONAL
      MaxResults             => 1,                             # OPTIONAL
      MonitoringAlertName    => 'MyMonitoringAlertName',       # OPTIONAL
      MonitoringScheduleName => 'MyMonitoringScheduleName',    # OPTIONAL
      NextToken              => 'MyNextToken',                 # OPTIONAL
      SortBy                 => 'CreationTime',                # OPTIONAL
      SortOrder              => 'Ascending',                   # OPTIONAL
      StatusEquals           => 'InAlert',                     # OPTIONAL
      );

    # Results:
    my $MonitoringAlertHistory =
      $ListMonitoringAlertHistoryResponse->MonitoringAlertHistory;
    my $NextToken = $ListMonitoringAlertHistoryResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListMonitoringAlertHistoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListMonitoringAlertHistory>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

A filter that returns only alerts created on or after the specified
time.



=head2 CreationTimeBefore => Str

A filter that returns only alerts created on or before the specified
time.



=head2 MaxResults => Int

The maximum number of results to display. The default is 100.



=head2 MonitoringAlertName => Str

The name of a monitoring alert.



=head2 MonitoringScheduleName => Str

The name of a monitoring schedule.



=head2 NextToken => Str

If the result of the previous C<ListMonitoringAlertHistory> request was
truncated, the response includes a C<NextToken>. To retrieve the next
set of alerts in the history, use the token in the next request.



=head2 SortBy => Str

The field used to sort results. The default is C<CreationTime>.

Valid values are: C<"CreationTime">, C<"Status">

=head2 SortOrder => Str

The sort order, whether C<Ascending> or C<Descending>, of the alert
history. The default is C<Descending>.

Valid values are: C<"Ascending">, C<"Descending">

=head2 StatusEquals => Str

A filter that retrieves only alerts with a specific status.

Valid values are: C<"InAlert">, C<"OK">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMonitoringAlertHistory in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

