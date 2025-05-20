
package Paws::SageMaker::ListMlflowTrackingServers;
  use Moose;
  has CreatedAfter => (is => 'ro', isa => 'Str');
  has CreatedBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has MlflowVersion => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has TrackingServerStatus => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMlflowTrackingServers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListMlflowTrackingServersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListMlflowTrackingServers - Arguments for method ListMlflowTrackingServers on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMlflowTrackingServers on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListMlflowTrackingServers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMlflowTrackingServers.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListMlflowTrackingServersResponse =
      $api . sagemaker->ListMlflowTrackingServers(
      CreatedAfter         => '1970-01-01T01:00:00',    # OPTIONAL
      CreatedBefore        => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults           => 1,                        # OPTIONAL
      MlflowVersion        => 'MyMlflowVersion',        # OPTIONAL
      NextToken            => 'MyNextToken',            # OPTIONAL
      SortBy               => 'Name',                   # OPTIONAL
      SortOrder            => 'Ascending',              # OPTIONAL
      TrackingServerStatus => 'Creating',               # OPTIONAL
      );

    # Results:
    my $NextToken = $ListMlflowTrackingServersResponse->NextToken;
    my $TrackingServerSummaries =
      $ListMlflowTrackingServersResponse->TrackingServerSummaries;

    # Returns a L<Paws::SageMaker::ListMlflowTrackingServersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListMlflowTrackingServers>

=head1 ATTRIBUTES


=head2 CreatedAfter => Str

Use the C<CreatedAfter> filter to only list tracking servers created
after a specific date and time. Listed tracking servers are shown with
a date and time such as C<"2024-03-16T01:46:56+00:00">. The
C<CreatedAfter> parameter takes in a Unix timestamp. To convert a date
and time into a Unix timestamp, see EpochConverter
(https://www.epochconverter.com/).



=head2 CreatedBefore => Str

Use the C<CreatedBefore> filter to only list tracking servers created
before a specific date and time. Listed tracking servers are shown with
a date and time such as C<"2024-03-16T01:46:56+00:00">. The
C<CreatedBefore> parameter takes in a Unix timestamp. To convert a date
and time into a Unix timestamp, see EpochConverter
(https://www.epochconverter.com/).



=head2 MaxResults => Int

The maximum number of tracking servers to list.



=head2 MlflowVersion => Str

Filter for tracking servers using the specified MLflow version.



=head2 NextToken => Str

If the previous response was truncated, you will receive this token.
Use it in your next request to receive the next set of results.



=head2 SortBy => Str

Filter for trackings servers sorting by name, creation time, or
creation status.

Valid values are: C<"Name">, C<"CreationTime">, C<"Status">

=head2 SortOrder => Str

Change the order of the listed tracking servers. By default, tracking
servers are listed in C<Descending> order by creation time. To change
the list order, you can specify C<SortOrder> to be C<Ascending>.

Valid values are: C<"Ascending">, C<"Descending">

=head2 TrackingServerStatus => Str

Filter for tracking servers with a specified creation status.

Valid values are: C<"Creating">, C<"Created">, C<"CreateFailed">, C<"Updating">, C<"Updated">, C<"UpdateFailed">, C<"Deleting">, C<"DeleteFailed">, C<"Stopping">, C<"Stopped">, C<"StopFailed">, C<"Starting">, C<"Started">, C<"StartFailed">, C<"MaintenanceInProgress">, C<"MaintenanceComplete">, C<"MaintenanceFailed">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMlflowTrackingServers in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

