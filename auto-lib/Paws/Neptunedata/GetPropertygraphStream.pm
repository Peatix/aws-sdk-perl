
package Paws::Neptunedata::GetPropertygraphStream;
  use Moose;
  has CommitNum => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'commitNum');
  has Encoding => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Accept-Encoding');
  has IteratorType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'iteratorType');
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');
  has OpNum => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'opNum');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPropertygraphStream');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/propertygraph/stream');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptunedata::GetPropertygraphStreamOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::GetPropertygraphStream - Arguments for method GetPropertygraphStream on L<Paws::Neptunedata>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPropertygraphStream on the
L<Amazon NeptuneData|Paws::Neptunedata> service. Use the attributes of this class
as arguments to method GetPropertygraphStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPropertygraphStream.

=head1 SYNOPSIS

    my $neptune-db = Paws->service('Neptunedata');
    my $GetPropertygraphStreamOutput = $neptune -db->GetPropertygraphStream(
      CommitNum    => 1,                       # OPTIONAL
      Encoding     => 'gzip',                  # OPTIONAL
      IteratorType => 'AT_SEQUENCE_NUMBER',    # OPTIONAL
      Limit        => 1,                       # OPTIONAL
      OpNum        => 1,                       # OPTIONAL
    );

    # Results:
    my $Format      = $GetPropertygraphStreamOutput->Format;
    my $LastEventId = $GetPropertygraphStreamOutput->LastEventId;
    my $LastTrxTimestampInMillis =
      $GetPropertygraphStreamOutput->LastTrxTimestampInMillis;
    my $Records      = $GetPropertygraphStreamOutput->Records;
    my $TotalRecords = $GetPropertygraphStreamOutput->TotalRecords;

    # Returns a L<Paws::Neptunedata::GetPropertygraphStreamOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-db/GetPropertygraphStream>

=head1 ATTRIBUTES


=head2 CommitNum => Int

The commit number of the starting record to read from the change-log
stream. This parameter is required when C<iteratorType>
isC<AT_SEQUENCE_NUMBER> or C<AFTER_SEQUENCE_NUMBER>, and ignored when
C<iteratorType> is C<TRIM_HORIZON> or C<LATEST>.



=head2 Encoding => Str

If set to TRUE, Neptune compresses the response using gzip encoding.

Valid values are: C<"gzip">

=head2 IteratorType => Str

Can be one of:

=over

=item *

C<AT_SEQUENCE_NUMBER> E<ndash> Indicates that reading should start from
the event sequence number specified jointly by the C<commitNum> and
C<opNum> parameters.

=item *

C<AFTER_SEQUENCE_NUMBER> E<ndash> Indicates that reading should start
right after the event sequence number specified jointly by the
C<commitNum> and C<opNum> parameters.

=item *

C<TRIM_HORIZON> E<ndash> Indicates that reading should start at the
last untrimmed record in the system, which is the oldest unexpired (not
yet deleted) record in the change-log stream.

=item *

C<LATEST> E<ndash> Indicates that reading should start at the most
recent record in the system, which is the latest unexpired (not yet
deleted) record in the change-log stream.

=back


Valid values are: C<"AT_SEQUENCE_NUMBER">, C<"AFTER_SEQUENCE_NUMBER">, C<"TRIM_HORIZON">, C<"LATEST">

=head2 Limit => Int

Specifies the maximum number of records to return. There is also a size
limit of 10 MB on the response that can't be modified and that takes
precedence over the number of records specified in the C<limit>
parameter. The response does include a threshold-breaching record if
the 10 MB limit was reached.

The range for C<limit> is 1 to 100,000, with a default of 10.



=head2 OpNum => Int

The operation sequence number within the specified commit to start
reading from in the change-log stream data. The default is C<1>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPropertygraphStream in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

