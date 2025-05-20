
package Paws::IoTSiteWise::BatchGetAssetPropertyValue;
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::BatchGetAssetPropertyValueEntry]', traits => ['NameInRequest'], request_name => 'entries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetAssetPropertyValue');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/properties/batch/latest');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::BatchGetAssetPropertyValueResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::BatchGetAssetPropertyValue - Arguments for method BatchGetAssetPropertyValue on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetAssetPropertyValue on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method BatchGetAssetPropertyValue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetAssetPropertyValue.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $BatchGetAssetPropertyValueResponse =
      $iotsitewise->BatchGetAssetPropertyValue(
      Entries => [
        {
          EntryId       => 'MyEntryId',            # min: 1, max: 64
          AssetId       => 'MyID',                 # min: 36, max: 36; OPTIONAL
          PropertyAlias => 'MyAssetPropertyAlias', # min: 1, max: 2048; OPTIONAL
          PropertyId    => 'MyID',                 # min: 36, max: 36; OPTIONAL
        },
        ...
      ],
      NextToken => 'MyNextToken',                  # OPTIONAL
      );

    # Results:
    my $ErrorEntries   = $BatchGetAssetPropertyValueResponse->ErrorEntries;
    my $NextToken      = $BatchGetAssetPropertyValueResponse->NextToken;
    my $SkippedEntries = $BatchGetAssetPropertyValueResponse->SkippedEntries;
    my $SuccessEntries = $BatchGetAssetPropertyValueResponse->SuccessEntries;

    # Returns a L<Paws::IoTSiteWise::BatchGetAssetPropertyValueResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/BatchGetAssetPropertyValue>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Entries => ArrayRef[L<Paws::IoTSiteWise::BatchGetAssetPropertyValueEntry>]

The list of asset property value entries for the batch get request. You
can specify up to 128 entries per request.



=head2 NextToken => Str

The token to be used for the next set of paginated results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetAssetPropertyValue in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

