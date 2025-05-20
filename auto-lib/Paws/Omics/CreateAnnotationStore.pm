
package Paws::Omics::CreateAnnotationStore;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Reference => (is => 'ro', isa => 'Paws::Omics::ReferenceItem', traits => ['NameInRequest'], request_name => 'reference');
  has SseConfig => (is => 'ro', isa => 'Paws::Omics::SseConfig', traits => ['NameInRequest'], request_name => 'sseConfig');
  has StoreFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storeFormat', required => 1);
  has StoreOptions => (is => 'ro', isa => 'Paws::Omics::StoreOptions', traits => ['NameInRequest'], request_name => 'storeOptions');
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has VersionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAnnotationStore');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/annotationStore');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::CreateAnnotationStoreResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::CreateAnnotationStore - Arguments for method CreateAnnotationStore on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAnnotationStore on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method CreateAnnotationStore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAnnotationStore.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $CreateAnnotationStoreResponse = $omics->CreateAnnotationStore(
      StoreFormat => 'GFF',
      Description => 'MyDescription',    # OPTIONAL
      Name        => 'MyStoreName',      # OPTIONAL
      Reference   => {
        ReferenceArn => 'MyReferenceArn',    # min: 1, max: 127; OPTIONAL
      },    # OPTIONAL
      SseConfig => {
        Type   => 'KMS',                        # values: KMS
        KeyArn => 'MySseConfigKeyArnString',    # min: 20, max: 2048; OPTIONAL
      },    # OPTIONAL
      StoreOptions => {
        TsvStoreOptions => {
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
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      VersionName => 'MyVersionName',    # OPTIONAL
    );

    # Results:
    my $CreationTime = $CreateAnnotationStoreResponse->CreationTime;
    my $Id           = $CreateAnnotationStoreResponse->Id;
    my $Name         = $CreateAnnotationStoreResponse->Name;
    my $Reference    = $CreateAnnotationStoreResponse->Reference;
    my $Status       = $CreateAnnotationStoreResponse->Status;
    my $StoreFormat  = $CreateAnnotationStoreResponse->StoreFormat;
    my $StoreOptions = $CreateAnnotationStoreResponse->StoreOptions;
    my $VersionName  = $CreateAnnotationStoreResponse->VersionName;

    # Returns a L<Paws::Omics::CreateAnnotationStoreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/CreateAnnotationStore>

=head1 ATTRIBUTES


=head2 Description => Str

A description for the store.



=head2 Name => Str

A name for the store.



=head2 Reference => L<Paws::Omics::ReferenceItem>

The genome reference for the store's annotations.



=head2 SseConfig => L<Paws::Omics::SseConfig>

Server-side encryption (SSE) settings for the store.



=head2 B<REQUIRED> StoreFormat => Str

The annotation file format of the store.

Valid values are: C<"GFF">, C<"TSV">, C<"VCF">

=head2 StoreOptions => L<Paws::Omics::StoreOptions>

File parsing options for the annotation store.



=head2 Tags => L<Paws::Omics::TagMap>

Tags for the store.



=head2 VersionName => Str

The name given to an annotation store version to distinguish it from
other versions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAnnotationStore in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

