
package Paws::FinspaceData::UpdateChangeset;
  use Moose;
  has ChangesetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'changesetId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DatasetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datasetId', required => 1);
  has FormatParams => (is => 'ro', isa => 'Paws::FinspaceData::FormatParams', traits => ['NameInRequest'], request_name => 'formatParams', required => 1);
  has SourceParams => (is => 'ro', isa => 'Paws::FinspaceData::SourceParams', traits => ['NameInRequest'], request_name => 'sourceParams', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateChangeset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasets/{datasetId}/changesetsv2/{changesetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FinspaceData::UpdateChangesetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::UpdateChangeset - Arguments for method UpdateChangeset on L<Paws::FinspaceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateChangeset on the
L<FinSpace Public API|Paws::FinspaceData> service. Use the attributes of this class
as arguments to method UpdateChangeset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateChangeset.

=head1 SYNOPSIS

    my $finspace-api = Paws->service('FinspaceData');
    my $UpdateChangesetResponse = $finspace -api->UpdateChangeset(
      ChangesetId  => 'MyChangesetId',
      DatasetId    => 'MyDatasetId',
      FormatParams => {
        'MyStringMapKey' =>
          'MyStringMapValue',    # key: max: 128, value: max: 1000
      },
      SourceParams => {
        'MyStringMapKey' =>
          'MyStringMapValue',    # key: max: 128, value: max: 1000
      },
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $ChangesetId = $UpdateChangesetResponse->ChangesetId;
    my $DatasetId   = $UpdateChangesetResponse->DatasetId;

    # Returns a L<Paws::FinspaceData::UpdateChangesetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-api/UpdateChangeset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangesetId => Str

The unique identifier for the Changeset to update.



=head2 ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 B<REQUIRED> DatasetId => Str

The unique identifier for the FinSpace Dataset in which the Changeset
is created.



=head2 B<REQUIRED> FormatParams => L<Paws::FinspaceData::FormatParams>

Options that define the structure of the source file(s) including the
format type (C<formatType>), header row (C<withHeader>), data
separation character (C<separator>) and the type of compression
(C<compression>).

C<formatType> is a required attribute and can have the following
values:

=over

=item *

C<PARQUET> E<ndash> Parquet source file format.

=item *

C<CSV> E<ndash> CSV source file format.

=item *

C<JSON> E<ndash> JSON source file format.

=item *

C<XML> E<ndash> XML source file format.

=back

Here is an example of how you could specify the C<formatParams>:

C<"formatParams": { "formatType": "CSV", "withHeader": "true",
"separator": ",", "compression":"None" }>

Note that if you only provide C<formatType> as C<CSV>, the rest of the
attributes will automatically default to CSV values as following:

C<{ "withHeader": "true", "separator": "," }>

For more information about supported file formats, see Supported Data
Types and File Formats
(https://docs.aws.amazon.com/finspace/latest/userguide/supported-data-types.html)
in the FinSpace User Guide.



=head2 B<REQUIRED> SourceParams => L<Paws::FinspaceData::SourceParams>

Options that define the location of the data being ingested
(C<s3SourcePath>) and the source of the changeset (C<sourceType>).

Both C<s3SourcePath> and C<sourceType> are required attributes.

Here is an example of how you could specify the C<sourceParams>:

C<"sourceParams": { "s3SourcePath":
"s3://finspace-landing-us-east-2-bk7gcfvitndqa6ebnvys4d/scratch/wr5hh8pwkpqqkxa4sxrmcw/ingestion/equity.csv",
"sourceType": "S3" }>

The S3 path that you specify must allow the FinSpace role access. To do
that, you first need to configure the IAM policy on S3 bucket. For more
information, see Loading data from an Amazon S3 Bucket using the
FinSpace API
(https://docs.aws.amazon.com/finspace/latest/data-api/fs-using-the-finspace-api.html#access-s3-buckets)section.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateChangeset in L<Paws::FinspaceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

