
package Paws::Connect::ListRealtimeContactAnalysisSegmentsV2;
  use Moose;
  has ContactId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ContactId', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OutputType => (is => 'ro', isa => 'Str', required => 1);
  has SegmentTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRealtimeContactAnalysisSegmentsV2');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/list-real-time-analysis-segments-v2/{InstanceId}/{ContactId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::ListRealtimeContactAnalysisSegmentsV2Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListRealtimeContactAnalysisSegmentsV2 - Arguments for method ListRealtimeContactAnalysisSegmentsV2 on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRealtimeContactAnalysisSegmentsV2 on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method ListRealtimeContactAnalysisSegmentsV2.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRealtimeContactAnalysisSegmentsV2.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $ListRealtimeContactAnalysisSegmentsV2Response =
      $connect->ListRealtimeContactAnalysisSegmentsV2(
      ContactId    => 'MyContactId',
      InstanceId   => 'MyInstanceId',
      OutputType   => 'Raw',
      SegmentTypes => [
        'Transcript',
        ... # values: Transcript, Categories, Issues, Event, Attachments, PostContactSummary
      ],
      MaxResults => 1,                     # OPTIONAL
      NextToken  => 'MyLargeNextToken',    # OPTIONAL
      );

    # Results:
    my $Channel   = $ListRealtimeContactAnalysisSegmentsV2Response->Channel;
    my $NextToken = $ListRealtimeContactAnalysisSegmentsV2Response->NextToken;
    my $Segments  = $ListRealtimeContactAnalysisSegmentsV2Response->Segments;
    my $Status    = $ListRealtimeContactAnalysisSegmentsV2Response->Status;

# Returns a L<Paws::Connect::ListRealtimeContactAnalysisSegmentsV2Response> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/ListRealtimeContactAnalysisSegmentsV2>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactId => Str

The identifier of the contact in this instance of Amazon Connect.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 B<REQUIRED> OutputType => Str

The Contact Lens output type to be returned.

Valid values are: C<"Raw">, C<"Redacted">

=head2 B<REQUIRED> SegmentTypes => ArrayRef[Str|Undef]

Enum with segment types . Each value corresponds to a segment type
returned in the segments list of the API. Each segment type has its own
structure. Different channels may have different sets of supported
segment types.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRealtimeContactAnalysisSegmentsV2 in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

