
package Paws::Omics::CreateMultipartReadSetUpload;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has GeneratedFrom => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'generatedFrom');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ReferenceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'referenceArn');
  has SampleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sampleId', required => 1);
  has SequenceStoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sequenceStoreId', required => 1);
  has SourceFileType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceFileType', required => 1);
  has SubjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subjectId', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMultipartReadSetUpload');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sequencestore/{sequenceStoreId}/upload');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::CreateMultipartReadSetUploadResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::CreateMultipartReadSetUpload - Arguments for method CreateMultipartReadSetUpload on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMultipartReadSetUpload on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method CreateMultipartReadSetUpload.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMultipartReadSetUpload.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $CreateMultipartReadSetUploadResponse =
      $omics->CreateMultipartReadSetUpload(
      Name            => 'MyReadSetName',
      SampleId        => 'MySampleId',
      SequenceStoreId => 'MySequenceStoreId',
      SourceFileType  => 'FASTQ',
      SubjectId       => 'MySubjectId',
      ClientToken     => 'MyClientToken',           # OPTIONAL
      Description     => 'MyReadSetDescription',    # OPTIONAL
      GeneratedFrom   => 'MyGeneratedFrom',         # OPTIONAL
      ReferenceArn    => 'MyReferenceArn',          # OPTIONAL
      Tags            => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $CreationTime  = $CreateMultipartReadSetUploadResponse->CreationTime;
    my $Description   = $CreateMultipartReadSetUploadResponse->Description;
    my $GeneratedFrom = $CreateMultipartReadSetUploadResponse->GeneratedFrom;
    my $Name          = $CreateMultipartReadSetUploadResponse->Name;
    my $ReferenceArn  = $CreateMultipartReadSetUploadResponse->ReferenceArn;
    my $SampleId      = $CreateMultipartReadSetUploadResponse->SampleId;
    my $SequenceStoreId =
      $CreateMultipartReadSetUploadResponse->SequenceStoreId;
    my $SourceFileType = $CreateMultipartReadSetUploadResponse->SourceFileType;
    my $SubjectId      = $CreateMultipartReadSetUploadResponse->SubjectId;
    my $Tags           = $CreateMultipartReadSetUploadResponse->Tags;
    my $UploadId       = $CreateMultipartReadSetUploadResponse->UploadId;

    # Returns a L<Paws::Omics::CreateMultipartReadSetUploadResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/CreateMultipartReadSetUpload>

=head1 ATTRIBUTES


=head2 ClientToken => Str

An idempotency token that can be used to avoid triggering multiple
multipart uploads.



=head2 Description => Str

The description of the read set.



=head2 GeneratedFrom => Str

Where the source originated.



=head2 B<REQUIRED> Name => Str

The name of the read set.



=head2 ReferenceArn => Str

The ARN of the reference.



=head2 B<REQUIRED> SampleId => Str

The source's sample ID.



=head2 B<REQUIRED> SequenceStoreId => Str

The sequence store ID for the store that is the destination of the
multipart uploads.



=head2 B<REQUIRED> SourceFileType => Str

The type of file being uploaded.

Valid values are: C<"FASTQ">, C<"BAM">, C<"CRAM">, C<"UBAM">

=head2 B<REQUIRED> SubjectId => Str

The source's subject ID.



=head2 Tags => L<Paws::Omics::TagMap>

Any tags to add to the read set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMultipartReadSetUpload in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

