
package Paws::CloudWatchLogs::ListAnomalies;
  use Moose;
  has AnomalyDetectorArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'anomalyDetectorArn' );
  has Limit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'limit' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SuppressionState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'suppressionState' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAnomalies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::ListAnomaliesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::ListAnomalies - Arguments for method ListAnomalies on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAnomalies on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method ListAnomalies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAnomalies.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $ListAnomaliesResponse = $logs->ListAnomalies(
      AnomalyDetectorArn => 'MyAnomalyDetectorArn',    # OPTIONAL
      Limit              => 1,                         # OPTIONAL
      NextToken          => 'MyNextToken',             # OPTIONAL
      SuppressionState   => 'SUPPRESSED',              # OPTIONAL
    );

    # Results:
    my $Anomalies = $ListAnomaliesResponse->Anomalies;
    my $NextToken = $ListAnomaliesResponse->NextToken;

    # Returns a L<Paws::CloudWatchLogs::ListAnomaliesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/ListAnomalies>

=head1 ATTRIBUTES


=head2 AnomalyDetectorArn => Str

Use this to optionally limit the results to only the anomalies found by
a certain anomaly detector.



=head2 Limit => Int

The maximum number of items to return. If you don't specify a value,
the default maximum value of 50 items is used.



=head2 NextToken => Str





=head2 SuppressionState => Str

You can specify this parameter if you want to the operation to return
only anomalies that are currently either suppressed or unsuppressed.

Valid values are: C<"SUPPRESSED">, C<"UNSUPPRESSED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAnomalies in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

