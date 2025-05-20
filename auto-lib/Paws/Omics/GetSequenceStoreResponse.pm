
package Paws::Omics::GetSequenceStoreResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has ETagAlgorithmFamily => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eTagAlgorithmFamily');
  has FallbackLocation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fallbackLocation');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has PropagatedSetLevelTags => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'propagatedSetLevelTags');
  has S3Access => (is => 'ro', isa => 'Paws::Omics::SequenceStoreS3Access', traits => ['NameInRequest'], request_name => 's3Access');
  has SseConfig => (is => 'ro', isa => 'Paws::Omics::SseConfig', traits => ['NameInRequest'], request_name => 'sseConfig');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusMessage');
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateTime');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetSequenceStoreResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The store's ARN.


=head2 B<REQUIRED> CreationTime => Str

When the store was created.


=head2 Description => Str

The store's description.


=head2 ETagAlgorithmFamily => Str

The algorithm family of the ETag.

Valid values are: C<"MD5up">, C<"SHA256up">, C<"SHA512up">
=head2 FallbackLocation => Str

An S3 location that is used to store files that have failed a direct
upload.


=head2 B<REQUIRED> Id => Str

The store's ID.


=head2 Name => Str

The store's name.


=head2 PropagatedSetLevelTags => ArrayRef[Str|Undef]

The tags keys to propagate to the S3 objects associated with read sets
in the sequence store.


=head2 S3Access => L<Paws::Omics::SequenceStoreS3Access>

The S3 metadata of a sequence store, including the ARN and S3 URI of
the S3 bucket.


=head2 SseConfig => L<Paws::Omics::SseConfig>

The store's server-side encryption (SSE) settings.


=head2 Status => Str

The status of the sequence store.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"UPDATING">, C<"DELETING">, C<"FAILED">
=head2 StatusMessage => Str

The status message of the sequence store.


=head2 UpdateTime => Str

The last-updated time of the sequence store.


=head2 _request_id => Str


=cut

