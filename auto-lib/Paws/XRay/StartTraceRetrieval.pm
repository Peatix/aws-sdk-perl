
package Paws::XRay::StartTraceRetrieval;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', required => 1);
  has TraceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartTraceRetrieval');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/StartTraceRetrieval');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::StartTraceRetrievalResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::StartTraceRetrieval - Arguments for method StartTraceRetrieval on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTraceRetrieval on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method StartTraceRetrieval.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartTraceRetrieval.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $StartTraceRetrievalResult = $xray->StartTraceRetrieval(
      EndTime   => '1970-01-01T01:00:00',
      StartTime => '1970-01-01T01:00:00',
      TraceIds  => [
        'MyTraceId', ...    # min: 1, max: 35
      ],

    );

    # Results:
    my $RetrievalToken = $StartTraceRetrievalResult->RetrievalToken;

    # Returns a L<Paws::XRay::StartTraceRetrievalResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/StartTraceRetrieval>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The end of the time range to retrieve traces. The range is inclusive,
so the specified end time is included in the query. Specified as epoch
time, the number of seconds since January 1, 1970, 00:00:00 UTC.



=head2 B<REQUIRED> StartTime => Str

The start of the time range to retrieve traces. The range is inclusive,
so the specified start time is included in the query. Specified as
epoch time, the number of seconds since January 1, 1970, 00:00:00 UTC.



=head2 B<REQUIRED> TraceIds => ArrayRef[Str|Undef]

Specify the trace IDs of the traces to be retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTraceRetrieval in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

