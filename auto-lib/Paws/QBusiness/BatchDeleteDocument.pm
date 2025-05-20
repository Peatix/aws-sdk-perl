
package Paws::QBusiness::BatchDeleteDocument;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has DataSourceSyncId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataSourceSyncId');
  has Documents => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::DeleteDocument]', traits => ['NameInRequest'], request_name => 'documents', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'indexId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDeleteDocument');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/indices/{indexId}/documents/delete');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::BatchDeleteDocumentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::BatchDeleteDocument - Arguments for method BatchDeleteDocument on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDeleteDocument on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method BatchDeleteDocument.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDeleteDocument.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $BatchDeleteDocumentResponse = $qbusiness->BatchDeleteDocument(
      ApplicationId => 'MyApplicationId',
      Documents     => [
        {
          DocumentId => 'MyDocumentId',    # min: 1, max: 1825

        },
        ...
      ],
      IndexId          => 'MyIndexId',
      DataSourceSyncId => 'MyExecutionId',    # OPTIONAL
    );

    # Results:
    my $FailedDocuments = $BatchDeleteDocumentResponse->FailedDocuments;

    # Returns a L<Paws::QBusiness::BatchDeleteDocumentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/BatchDeleteDocument>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the Amazon Q Business application.



=head2 DataSourceSyncId => Str

The identifier of the data source sync during which the documents were
deleted.



=head2 B<REQUIRED> Documents => ArrayRef[L<Paws::QBusiness::DeleteDocument>]

Documents deleted from the Amazon Q Business index.



=head2 B<REQUIRED> IndexId => Str

The identifier of the Amazon Q Business index that contains the
documents to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDeleteDocument in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

