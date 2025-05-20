
package Paws::Omics::ListReadSetUploadParts;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::Omics::ReadSetUploadPartListFilter', traits => ['NameInRequest'], request_name => 'filter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has PartSource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'partSource', required => 1);
  has SequenceStoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sequenceStoreId', required => 1);
  has UploadId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'uploadId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListReadSetUploadParts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sequencestore/{sequenceStoreId}/upload/{uploadId}/parts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::ListReadSetUploadPartsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListReadSetUploadParts - Arguments for method ListReadSetUploadParts on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListReadSetUploadParts on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method ListReadSetUploadParts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListReadSetUploadParts.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $ListReadSetUploadPartsResponse = $omics->ListReadSetUploadParts(
      PartSource      => 'SOURCE1',
      SequenceStoreId => 'MySequenceStoreId',
      UploadId        => 'MyUploadId',
      Filter          => {
        CreatedAfter  => '1970-01-01T01:00:00',    # OPTIONAL
        CreatedBefore => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListReadSetUploadPartsResponse->NextToken;
    my $Parts     = $ListReadSetUploadPartsResponse->Parts;

    # Returns a L<Paws::Omics::ListReadSetUploadPartsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/ListReadSetUploadParts>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::Omics::ReadSetUploadPartListFilter>

Attributes used to filter for a specific subset of read set part
uploads.



=head2 MaxResults => Int

The maximum number of read set upload parts returned in a page.



=head2 NextToken => Str

Next token returned in the response of a previous
ListReadSetUploadPartsRequest call. Used to get the next page of
results.



=head2 B<REQUIRED> PartSource => Str

The source file for the upload part.

Valid values are: C<"SOURCE1">, C<"SOURCE2">

=head2 B<REQUIRED> SequenceStoreId => Str

The Sequence Store ID used for the multipart uploads.



=head2 B<REQUIRED> UploadId => Str

The ID for the initiated multipart upload.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListReadSetUploadParts in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

