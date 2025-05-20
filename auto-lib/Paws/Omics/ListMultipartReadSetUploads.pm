
package Paws::Omics::ListMultipartReadSetUploads;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SequenceStoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sequenceStoreId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMultipartReadSetUploads');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sequencestore/{sequenceStoreId}/uploads');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::ListMultipartReadSetUploadsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListMultipartReadSetUploads - Arguments for method ListMultipartReadSetUploads on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMultipartReadSetUploads on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method ListMultipartReadSetUploads.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMultipartReadSetUploads.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $ListMultipartReadSetUploadsResponse =
      $omics->ListMultipartReadSetUploads(
      SequenceStoreId => 'MySequenceStoreId',
      MaxResults      => 1,                     # OPTIONAL
      NextToken       => 'MyNextToken',         # OPTIONAL
      );

    # Results:
    my $NextToken = $ListMultipartReadSetUploadsResponse->NextToken;
    my $Uploads   = $ListMultipartReadSetUploadsResponse->Uploads;

    # Returns a L<Paws::Omics::ListMultipartReadSetUploadsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/ListMultipartReadSetUploads>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of multipart uploads returned in a page.



=head2 NextToken => Str

Next token returned in the response of a previous
ListMultipartReadSetUploads call. Used to get the next page of results.



=head2 B<REQUIRED> SequenceStoreId => Str

The Sequence Store ID used for the multipart uploads.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMultipartReadSetUploads in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

