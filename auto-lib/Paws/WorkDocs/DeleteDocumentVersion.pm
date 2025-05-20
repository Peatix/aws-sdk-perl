
package Paws::WorkDocs::DeleteDocumentVersion;
  use Moose;
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication');
  has DeletePriorVersions => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'deletePriorVersions', required => 1);
  has DocumentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DocumentId', required => 1);
  has VersionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'VersionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDocumentVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/documentVersions/{DocumentId}/versions/{VersionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DeleteDocumentVersion - Arguments for method DeleteDocumentVersion on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDocumentVersion on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method DeleteDocumentVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDocumentVersion.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    $workdocs->DeleteDocumentVersion(
      DeletePriorVersions => 1,
      DocumentId          => 'MyResourceIdType',
      VersionId           => 'MyDocumentVersionIdType',
      AuthenticationToken => 'MyAuthenticationHeaderType',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/DeleteDocumentVersion>

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Not required when using Amazon
Web Services administrator credentials to access the API.



=head2 B<REQUIRED> DeletePriorVersions => Bool

Deletes all versions of a document prior to the current version.



=head2 B<REQUIRED> DocumentId => Str

The ID of the document associated with the version being deleted.



=head2 B<REQUIRED> VersionId => Str

The ID of the version being deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDocumentVersion in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

