
package Paws::Omics::GetReadSetMetadataResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has CreationJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationJobId');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has CreationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationType');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Etag => (is => 'ro', isa => 'Paws::Omics::ETag', traits => ['NameInRequest'], request_name => 'etag');
  has Files => (is => 'ro', isa => 'Paws::Omics::ReadSetFiles', traits => ['NameInRequest'], request_name => 'files');
  has FileType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fileType', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ReferenceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'referenceArn');
  has SampleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sampleId');
  has SequenceInformation => (is => 'ro', isa => 'Paws::Omics::SequenceInformation', traits => ['NameInRequest'], request_name => 'sequenceInformation');
  has SequenceStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sequenceStoreId', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusMessage');
  has SubjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subjectId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetReadSetMetadataResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The read set's ARN.


=head2 CreationJobId => Str

The read set's creation job ID.


=head2 B<REQUIRED> CreationTime => Str

When the read set was created.


=head2 CreationType => Str

The creation type of the read set.

Valid values are: C<"IMPORT">, C<"UPLOAD">
=head2 Description => Str

The read set's description.


=head2 Etag => L<Paws::Omics::ETag>

The entity tag (ETag) is a hash of the object meant to represent its
semantic content.


=head2 Files => L<Paws::Omics::ReadSetFiles>

The read set's files.


=head2 B<REQUIRED> FileType => Str

The read set's file type.

Valid values are: C<"FASTQ">, C<"BAM">, C<"CRAM">, C<"UBAM">
=head2 B<REQUIRED> Id => Str

The read set's ID.


=head2 Name => Str

The read set's name.


=head2 ReferenceArn => Str

The read set's genome reference ARN.


=head2 SampleId => Str

The read set's sample ID.


=head2 SequenceInformation => L<Paws::Omics::SequenceInformation>

The read set's sequence information.


=head2 B<REQUIRED> SequenceStoreId => Str

The read set's sequence store ID.


=head2 B<REQUIRED> Status => Str

The read set's status.

Valid values are: C<"ARCHIVED">, C<"ACTIVATING">, C<"ACTIVE">, C<"DELETING">, C<"DELETED">, C<"PROCESSING_UPLOAD">, C<"UPLOAD_FAILED">
=head2 StatusMessage => Str

The status message for a read set. It provides more detail as to why
the read set has a status.


=head2 SubjectId => Str

The read set's subject ID.


=head2 _request_id => Str


=cut

