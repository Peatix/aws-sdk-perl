
package Paws::Omics::CreateMultipartReadSetUploadResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has GeneratedFrom => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'generatedFrom');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ReferenceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'referenceArn', required => 1);
  has SampleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sampleId', required => 1);
  has SequenceStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sequenceStoreId', required => 1);
  has SourceFileType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceFileType', required => 1);
  has SubjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subjectId', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has UploadId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uploadId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::CreateMultipartReadSetUploadResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The creation time of the multipart upload.


=head2 Description => Str

The description of the read set.


=head2 GeneratedFrom => Str

The source of the read set.


=head2 Name => Str

The name of the read set.


=head2 B<REQUIRED> ReferenceArn => Str

The read set source's reference ARN.


=head2 B<REQUIRED> SampleId => Str

The source's sample ID.


=head2 B<REQUIRED> SequenceStoreId => Str

The sequence store ID for the store that the read set will be created
in.


=head2 B<REQUIRED> SourceFileType => Str

The file type of the read set source.

Valid values are: C<"FASTQ">, C<"BAM">, C<"CRAM">, C<"UBAM">
=head2 B<REQUIRED> SubjectId => Str

The source's subject ID.


=head2 Tags => L<Paws::Omics::TagMap>

The tags to add to the read set.


=head2 B<REQUIRED> UploadId => Str

The ID for the initiated multipart upload.


=head2 _request_id => Str


=cut

