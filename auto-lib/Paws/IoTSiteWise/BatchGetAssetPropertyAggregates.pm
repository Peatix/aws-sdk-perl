
package Paws::IoTSiteWise::BatchGetAssetPropertyAggregates;
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::BatchGetAssetPropertyAggregatesEntry]', traits => ['NameInRequest'], request_name => 'entries', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetAssetPropertyAggregates');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/properties/batch/aggregates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::BatchGetAssetPropertyAggregatesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::BatchGetAssetPropertyAggregates - Arguments for method BatchGetAssetPropertyAggregates on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetAssetPropertyAggregates on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method BatchGetAssetPropertyAggregates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetAssetPropertyAggregates.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $BatchGetAssetPropertyAggregatesResponse =
      $iotsitewise->BatchGetAssetPropertyAggregates(
      Entries => [
        {
          AggregateTypes => [
            'AVERAGE',
            ... # values: AVERAGE, COUNT, MAXIMUM, MINIMUM, SUM, STANDARD_DEVIATION
          ],    # min: 1
          EndDate       => '1970-01-01T01:00:00',
          EntryId       => 'MyEntryId',            # min: 1, max: 64
          Resolution    => 'MyResolution',         # min: 2, max: 3
          StartDate     => '1970-01-01T01:00:00',
          AssetId       => 'MyID',                 # min: 36, max: 36; OPTIONAL
          PropertyAlias => 'MyAssetPropertyAlias', # min: 1, max: 2048; OPTIONAL
          PropertyId    => 'MyID',                 # min: 36, max: 36; OPTIONAL
          Qualities     => [
            'GOOD', ...    # values: GOOD, BAD, UNCERTAIN
          ],    # min: 1, max: 1; OPTIONAL
          TimeOrdering => 'ASCENDING', # values: ASCENDING, DESCENDING; OPTIONAL
        },
        ...
      ],
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $ErrorEntries = $BatchGetAssetPropertyAggregatesResponse->ErrorEntries;
    my $NextToken    = $BatchGetAssetPropertyAggregatesResponse->NextToken;
    my $SkippedEntries =
      $BatchGetAssetPropertyAggregatesResponse->SkippedEntries;
    my $SuccessEntries =
      $BatchGetAssetPropertyAggregatesResponse->SuccessEntries;

# Returns a L<Paws::IoTSiteWise::BatchGetAssetPropertyAggregatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/BatchGetAssetPropertyAggregates>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Entries => ArrayRef[L<Paws::IoTSiteWise::BatchGetAssetPropertyAggregatesEntry>]

The list of asset property aggregate entries for the batch get request.
You can specify up to 16 entries per request.



=head2 MaxResults => Int

The maximum number of results to return for each paginated request. A
result set is returned in the two cases, whichever occurs first.

=over

=item *

The size of the result set is equal to 1 MB.

=item *

The number of data points in the result set is equal to the value of
C<maxResults>. The maximum value of C<maxResults> is 4000.

=back




=head2 NextToken => Str

The token to be used for the next set of paginated results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetAssetPropertyAggregates in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

