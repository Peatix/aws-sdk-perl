
package Paws::FinspaceData::ListDataViews;
  use Moose;
  has DatasetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datasetId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDataViews');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasets/{datasetId}/dataviewsv2');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FinspaceData::ListDataViewsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::ListDataViews - Arguments for method ListDataViews on L<Paws::FinspaceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataViews on the
L<FinSpace Public API|Paws::FinspaceData> service. Use the attributes of this class
as arguments to method ListDataViews.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataViews.

=head1 SYNOPSIS

    my $finspace-api = Paws->service('FinspaceData');
    my $ListDataViewsResponse = $finspace -api->ListDataViews(
      DatasetId  => 'MyDatasetId',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $DataViews = $ListDataViewsResponse->DataViews;
    my $NextToken = $ListDataViewsResponse->NextToken;

    # Returns a L<Paws::FinspaceData::ListDataViewsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-api/ListDataViews>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetId => Str

The unique identifier of the Dataset for which to retrieve Dataviews.



=head2 MaxResults => Int

The maximum number of results per page.



=head2 NextToken => Str

A token that indicates where a results page should begin.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataViews in L<Paws::FinspaceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

