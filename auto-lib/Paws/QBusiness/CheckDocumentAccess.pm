
package Paws::QBusiness::CheckDocumentAccess;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has DataSourceId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'dataSourceId');
  has DocumentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'documentId', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'indexId', required => 1);
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'userId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CheckDocumentAccess');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/index/{indexId}/users/{userId}/documents/{documentId}/check-document-access');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::CheckDocumentAccessResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::CheckDocumentAccess - Arguments for method CheckDocumentAccess on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CheckDocumentAccess on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method CheckDocumentAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CheckDocumentAccess.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $CheckDocumentAccessResponse = $qbusiness->CheckDocumentAccess(
      ApplicationId => 'MyApplicationId',
      DocumentId    => 'MyDocumentId',
      IndexId       => 'MyIndexId',
      UserId        => 'MyString',
      DataSourceId  => 'MyDataSourceId',    # OPTIONAL
    );

    # Results:
    my $DocumentAcl = $CheckDocumentAccessResponse->DocumentAcl;
    my $HasAccess   = $CheckDocumentAccessResponse->HasAccess;
    my $UserAliases = $CheckDocumentAccessResponse->UserAliases;
    my $UserGroups  = $CheckDocumentAccessResponse->UserGroups;

    # Returns a L<Paws::QBusiness::CheckDocumentAccessResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/CheckDocumentAccess>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier of the application. This is required to identify
the specific Amazon Q Business application context for the document
access check.



=head2 DataSourceId => Str

The unique identifier of the data source. Identifies the specific data
source from which the document originates. Should not be used when a
document is uploaded directly with BatchPutDocument, as no dataSourceId
is available or necessary.



=head2 B<REQUIRED> DocumentId => Str

The unique identifier of the document. Specifies which document's
access permissions are being checked.



=head2 B<REQUIRED> IndexId => Str

The unique identifier of the index. Used to locate the correct index
within the application where the document is stored.



=head2 B<REQUIRED> UserId => Str

The unique identifier of the user. Used to check the access permissions
for this specific user against the document's ACL.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CheckDocumentAccess in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

