
package Paws::QBusiness::ListDocuments;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has DataSourceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'dataSourceIds');
  has IndexId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'indexId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDocuments');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/index/{indexId}/documents');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::ListDocumentsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ListDocuments - Arguments for method ListDocuments on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDocuments on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method ListDocuments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDocuments.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $ListDocumentsResponse = $qbusiness->ListDocuments(
      ApplicationId => 'MyApplicationId',
      IndexId       => 'MyIndexId',
      DataSourceIds => [
        'MyDataSourceId', ...    # min: 36, max: 36
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $DocumentDetailList = $ListDocumentsResponse->DocumentDetailList;
    my $NextToken          = $ListDocumentsResponse->NextToken;

    # Returns a L<Paws::QBusiness::ListDocumentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/ListDocuments>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the application id the documents are attached to.



=head2 DataSourceIds => ArrayRef[Str|Undef]

The identifier of the data sources the documents are attached to.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index the documents are attached to.



=head2 MaxResults => Int

The maximum number of documents to return.



=head2 NextToken => Str

If the C<maxResults> response was incomplete because there is more data
to retrieve, Amazon Q Business returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
documents.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDocuments in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

