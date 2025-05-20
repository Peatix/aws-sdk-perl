
package Paws::MedicalImaging::UpdateImageSetMetadata;
  use Moose;
  has DatastoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datastoreId', required => 1);
  has Force => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'force');
  has ImageSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'imageSetId', required => 1);
  has LatestVersionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'latestVersion', required => 1);
  has UpdateImageSetMetadataUpdates => (is => 'ro', isa => 'Paws::MedicalImaging::MetadataUpdates', traits => ['NameInRequest'], request_name => 'updateImageSetMetadataUpdates', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'UpdateImageSetMetadataUpdates');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateImageSetMetadata');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datastore/{datastoreId}/imageSet/{imageSetId}/updateImageSetMetadata');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MedicalImaging::UpdateImageSetMetadataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::UpdateImageSetMetadata - Arguments for method UpdateImageSetMetadata on L<Paws::MedicalImaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateImageSetMetadata on the
L<AWS Health Imaging|Paws::MedicalImaging> service. Use the attributes of this class
as arguments to method UpdateImageSetMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateImageSetMetadata.

=head1 SYNOPSIS

    my $medical-imaging = Paws->service('MedicalImaging');
    my $UpdateImageSetMetadataResponse =
      $medical -imaging->UpdateImageSetMetadata(
      DatastoreId                   => 'MyDatastoreId',
      ImageSetId                    => 'MyImageSetId',
      LatestVersionId               => 'MyImageSetExternalVersionId',
      UpdateImageSetMetadataUpdates => {
        DICOMUpdates => {
          RemovableAttributes =>
            'BlobDICOMAttribute',    # min: 1, max: 10000; OPTIONAL
          UpdatableAttributes =>
            'BlobDICOMAttribute',    # min: 1, max: 10000; OPTIONAL
        },    # OPTIONAL
        RevertToVersionId => 'MyImageSetExternalVersionId',
      },
      Force => 1,    # OPTIONAL
      );

    # Results:
    my $CreatedAt     = $UpdateImageSetMetadataResponse->CreatedAt;
    my $DatastoreId   = $UpdateImageSetMetadataResponse->DatastoreId;
    my $ImageSetId    = $UpdateImageSetMetadataResponse->ImageSetId;
    my $ImageSetState = $UpdateImageSetMetadataResponse->ImageSetState;
    my $ImageSetWorkflowStatus =
      $UpdateImageSetMetadataResponse->ImageSetWorkflowStatus;
    my $LatestVersionId = $UpdateImageSetMetadataResponse->LatestVersionId;
    my $Message         = $UpdateImageSetMetadataResponse->Message;
    my $UpdatedAt       = $UpdateImageSetMetadataResponse->UpdatedAt;

    # Returns a L<Paws::MedicalImaging::UpdateImageSetMetadataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medical-imaging/UpdateImageSetMetadata>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreId => Str

The data store identifier.



=head2 Force => Bool

Setting this flag will force the C<UpdateImageSetMetadata> operation
for the following attributes:

=over

=item *

C<Tag.StudyInstanceUID>, C<Tag.SeriesInstanceUID>,
C<Tag.SOPInstanceUID>, and C<Tag.StudyID>

=item *

Adding, removing, or updating private tags for an individual SOP
Instance

=back




=head2 B<REQUIRED> ImageSetId => Str

The image set identifier.



=head2 B<REQUIRED> LatestVersionId => Str

The latest image set version identifier.



=head2 B<REQUIRED> UpdateImageSetMetadataUpdates => L<Paws::MedicalImaging::MetadataUpdates>

Update image set metadata updates.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateImageSetMetadata in L<Paws::MedicalImaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

