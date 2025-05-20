
package Paws::CloudWatchLogs::ListLogAnomalyDetectors;
  use Moose;
  has FilterLogGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterLogGroupArn' );
  has Limit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'limit' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLogAnomalyDetectors');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::ListLogAnomalyDetectorsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::ListLogAnomalyDetectors - Arguments for method ListLogAnomalyDetectors on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLogAnomalyDetectors on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method ListLogAnomalyDetectors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLogAnomalyDetectors.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $ListLogAnomalyDetectorsResponse = $logs->ListLogAnomalyDetectors(
      FilterLogGroupArn => 'MyLogGroupArn',    # OPTIONAL
      Limit             => 1,                  # OPTIONAL
      NextToken         => 'MyNextToken',      # OPTIONAL
    );

    # Results:
    my $AnomalyDetectors = $ListLogAnomalyDetectorsResponse->AnomalyDetectors;
    my $NextToken        = $ListLogAnomalyDetectorsResponse->NextToken;

    # Returns a L<Paws::CloudWatchLogs::ListLogAnomalyDetectorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/ListLogAnomalyDetectors>

=head1 ATTRIBUTES


=head2 FilterLogGroupArn => Str

Use this to optionally filter the results to only include anomaly
detectors that are associated with the specified log group.



=head2 Limit => Int

The maximum number of items to return. If you don't specify a value,
the default maximum value of 50 items is used.



=head2 NextToken => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLogAnomalyDetectors in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

