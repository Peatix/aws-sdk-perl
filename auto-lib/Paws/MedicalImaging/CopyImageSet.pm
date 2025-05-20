
package Paws::MedicalImaging::CopyImageSet;
  use Moose;
  has CopyImageSetInformation => (is => 'ro', isa => 'Paws::MedicalImaging::CopyImageSetInformation', traits => ['NameInRequest'], request_name => 'copyImageSetInformation', required => 1);
  has DatastoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datastoreId', required => 1);
  has Force => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'force');
  has SourceImageSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sourceImageSetId', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'CopyImageSetInformation');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyImageSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datastore/{datastoreId}/imageSet/{sourceImageSetId}/copyImageSet');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MedicalImaging::CopyImageSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::CopyImageSet - Arguments for method CopyImageSet on L<Paws::MedicalImaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyImageSet on the
L<AWS Health Imaging|Paws::MedicalImaging> service. Use the attributes of this class
as arguments to method CopyImageSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyImageSet.

=head1 SYNOPSIS

    my $medical-imaging = Paws->service('MedicalImaging');
    my $CopyImageSetResponse = $medical -imaging->CopyImageSet(
      CopyImageSetInformation => {
        SourceImageSet => {
          LatestVersionId => 'MyImageSetExternalVersionId',
          DICOMCopies     => {
            CopiableAttributes => 'MyCopiableAttributes',  # min: 1, max: 260000

          },    # OPTIONAL
        },
        DestinationImageSet => {
          ImageSetId      => 'MyImageSetId',
          LatestVersionId => 'MyImageSetExternalVersionId',

        },    # OPTIONAL
      },
      DatastoreId      => 'MyDatastoreId',
      SourceImageSetId => 'MyImageSetId',
      Force            => 1,                 # OPTIONAL
    );

    # Results:
    my $DatastoreId = $CopyImageSetResponse->DatastoreId;
    my $DestinationImageSetProperties =
      $CopyImageSetResponse->DestinationImageSetProperties;
    my $SourceImageSetProperties =
      $CopyImageSetResponse->SourceImageSetProperties;

    # Returns a L<Paws::MedicalImaging::CopyImageSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medical-imaging/CopyImageSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CopyImageSetInformation => L<Paws::MedicalImaging::CopyImageSetInformation>

Copy image set information.



=head2 B<REQUIRED> DatastoreId => Str

The data store identifier.



=head2 Force => Bool

Setting this flag will force the C<CopyImageSet> operation, even if
Patient, Study, or Series level metadata are mismatched across the
C<sourceImageSet> and C<destinationImageSet>.



=head2 B<REQUIRED> SourceImageSetId => Str

The source image set identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyImageSet in L<Paws::MedicalImaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

