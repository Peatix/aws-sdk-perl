
package Paws::Omics::UpdateSequenceStoreResponse;
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

Paws::Omics::UpdateSequenceStoreResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the sequence store.


=head2 B<REQUIRED> CreationTime => Str

The time when the store was created.


=head2 Description => Str

Description of the sequence store.


=head2 ETagAlgorithmFamily => Str

The ETag algorithm family to use on ingested read sets.

Valid values are: C<"MD5up">, C<"SHA256up">, C<"SHA512up">
=head2 FallbackLocation => Str

The S3 URI of a bucket and folder to store Read Sets that fail to
upload.


=head2 B<REQUIRED> Id => Str

The ID of the sequence store.


=head2 Name => Str

The name of the sequence store.


=head2 PropagatedSetLevelTags => ArrayRef[Str|Undef]

The tags keys to propagate to the S3 objects associated with read sets
in the sequence store.


=head2 S3Access => L<Paws::Omics::SequenceStoreS3Access>




=head2 SseConfig => L<Paws::Omics::SseConfig>




=head2 Status => Str

The status of the sequence store.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"UPDATING">, C<"DELETING">, C<"FAILED">
=head2 StatusMessage => Str

The status message of the sequence store.


=head2 UpdateTime => Str

The last-updated time of the Sequence Store.


=head2 _request_id => Str


=cut

