
package Paws::Omics::CreateAnnotationStoreVersion;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has VersionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionName', required => 1);
  has VersionOptions => (is => 'ro', isa => 'Paws::Omics::VersionOptions', traits => ['NameInRequest'], request_name => 'versionOptions');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAnnotationStoreVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/annotationStore/{name}/version');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::CreateAnnotationStoreVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::CreateAnnotationStoreVersion - Arguments for method CreateAnnotationStoreVersion on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAnnotationStoreVersion on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method CreateAnnotationStoreVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAnnotationStoreVersion.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $CreateAnnotationStoreVersionResponse =
      $omics->CreateAnnotationStoreVersion(
      Name        => 'MyStoreName',
      VersionName => 'MyVersionName',
      Description => 'MyDescription',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      VersionOptions => {
        TsvVersionOptions => {
          AnnotationType => 'GENERIC'
          , # values: GENERIC, CHR_POS, CHR_POS_REF_ALT, CHR_START_END_ONE_BASE, CHR_START_END_REF_ALT_ONE_BASE, CHR_START_END_ZERO_BASE, CHR_START_END_REF_ALT_ZERO_BASE; OPTIONAL
          FormatToHeader => {
            'CHR' => 'MyFormatToHeaderValueString'
            ,    # key: values: CHR, START, END, REF, ALT, POS, value: max: 1000
          },    # OPTIONAL
          Schema => [
            {
              'MySchemaItemKeyString' => 'LONG'
              ,    # , value: values: LONG, INT, STRING, FLOAT, DOUBLE, BOOLEAN
            },
            ...    # min: 1, max: 1
          ],    # min: 1, max: 5000; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $CreationTime   = $CreateAnnotationStoreVersionResponse->CreationTime;
    my $Id             = $CreateAnnotationStoreVersionResponse->Id;
    my $Name           = $CreateAnnotationStoreVersionResponse->Name;
    my $Status         = $CreateAnnotationStoreVersionResponse->Status;
    my $StoreId        = $CreateAnnotationStoreVersionResponse->StoreId;
    my $VersionName    = $CreateAnnotationStoreVersionResponse->VersionName;
    my $VersionOptions = $CreateAnnotationStoreVersionResponse->VersionOptions;

    # Returns a L<Paws::Omics::CreateAnnotationStoreVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/CreateAnnotationStoreVersion>

=head1 ATTRIBUTES


=head2 Description => Str

The description of an annotation store version.



=head2 B<REQUIRED> Name => Str

The name of an annotation store version from which versions are being
created.



=head2 Tags => L<Paws::Omics::TagMap>

Any tags added to annotation store version.



=head2 B<REQUIRED> VersionName => Str

The name given to an annotation store version to distinguish it from
other versions.



=head2 VersionOptions => L<Paws::Omics::VersionOptions>

The options for an annotation store version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAnnotationStoreVersion in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

