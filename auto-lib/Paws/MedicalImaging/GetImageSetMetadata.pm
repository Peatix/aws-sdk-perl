
package Paws::MedicalImaging::GetImageSetMetadata;
  use Moose;
  has DatastoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datastoreId', required => 1);
  has ImageSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'imageSetId', required => 1);
  has VersionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'version');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetImageSetMetadata');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datastore/{datastoreId}/imageSet/{imageSetId}/getImageSetMetadata');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MedicalImaging::GetImageSetMetadataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::GetImageSetMetadata - Arguments for method GetImageSetMetadata on L<Paws::MedicalImaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetImageSetMetadata on the
L<AWS Health Imaging|Paws::MedicalImaging> service. Use the attributes of this class
as arguments to method GetImageSetMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetImageSetMetadata.

=head1 SYNOPSIS

    my $medical-imaging = Paws->service('MedicalImaging');
    my $GetImageSetMetadataResponse = $medical -imaging->GetImageSetMetadata(
      DatastoreId => 'MyDatastoreId',
      ImageSetId  => 'MyImageSetId',
      VersionId   => 'MyImageSetExternalVersionId',    # OPTIONAL
    );

    # Results:
    my $ContentEncoding = $GetImageSetMetadataResponse->ContentEncoding;
    my $ContentType     = $GetImageSetMetadataResponse->ContentType;
    my $ImageSetMetadataBlob =
      $GetImageSetMetadataResponse->ImageSetMetadataBlob;

    # Returns a L<Paws::MedicalImaging::GetImageSetMetadataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medical-imaging/GetImageSetMetadata>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreId => Str

The data store identifier.



=head2 B<REQUIRED> ImageSetId => Str

The image set identifier.



=head2 VersionId => Str

The image set version identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetImageSetMetadata in L<Paws::MedicalImaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

