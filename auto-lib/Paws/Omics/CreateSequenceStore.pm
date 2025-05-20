
package Paws::Omics::CreateSequenceStore;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has ETagAlgorithmFamily => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eTagAlgorithmFamily');
  has FallbackLocation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fallbackLocation');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has PropagatedSetLevelTags => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'propagatedSetLevelTags');
  has S3AccessConfig => (is => 'ro', isa => 'Paws::Omics::S3AccessConfig', traits => ['NameInRequest'], request_name => 's3AccessConfig');
  has SseConfig => (is => 'ro', isa => 'Paws::Omics::SseConfig', traits => ['NameInRequest'], request_name => 'sseConfig');
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSequenceStore');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sequencestore');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::CreateSequenceStoreResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::CreateSequenceStore - Arguments for method CreateSequenceStore on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSequenceStore on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method CreateSequenceStore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSequenceStore.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $CreateSequenceStoreResponse = $omics->CreateSequenceStore(
      Name                   => 'MySequenceStoreName',
      ClientToken            => 'MyClientToken',                 # OPTIONAL
      Description            => 'MySequenceStoreDescription',    # OPTIONAL
      ETagAlgorithmFamily    => 'MD5up',                         # OPTIONAL
      FallbackLocation       => 'MyFallbackLocation',            # OPTIONAL
      PropagatedSetLevelTags => [
        'MyTagKey', ...    # min: 1, max: 128
      ],    # OPTIONAL
      S3AccessConfig => {
        AccessLogLocation => 'MyAccessLogLocation',    # OPTIONAL
      },    # OPTIONAL
      SseConfig => {
        Type   => 'KMS',                        # values: KMS
        KeyArn => 'MySseConfigKeyArnString',    # min: 20, max: 2048; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn                 = $CreateSequenceStoreResponse->Arn;
    my $CreationTime        = $CreateSequenceStoreResponse->CreationTime;
    my $Description         = $CreateSequenceStoreResponse->Description;
    my $ETagAlgorithmFamily = $CreateSequenceStoreResponse->ETagAlgorithmFamily;
    my $FallbackLocation    = $CreateSequenceStoreResponse->FallbackLocation;
    my $Id                  = $CreateSequenceStoreResponse->Id;
    my $Name                = $CreateSequenceStoreResponse->Name;
    my $PropagatedSetLevelTags =
      $CreateSequenceStoreResponse->PropagatedSetLevelTags;
    my $S3Access      = $CreateSequenceStoreResponse->S3Access;
    my $SseConfig     = $CreateSequenceStoreResponse->SseConfig;
    my $Status        = $CreateSequenceStoreResponse->Status;
    my $StatusMessage = $CreateSequenceStoreResponse->StatusMessage;

    # Returns a L<Paws::Omics::CreateSequenceStoreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/CreateSequenceStore>

=head1 ATTRIBUTES


=head2 ClientToken => Str

To ensure that requests don't run multiple times, specify a unique
token for each request.



=head2 Description => Str

A description for the store.



=head2 ETagAlgorithmFamily => Str

The ETag algorithm family to use for ingested read sets.

Valid values are: C<"MD5up">, C<"SHA256up">, C<"SHA512up">

=head2 FallbackLocation => Str

An S3 location that is used to store files that have failed a direct
upload.



=head2 B<REQUIRED> Name => Str

A name for the store.



=head2 PropagatedSetLevelTags => ArrayRef[Str|Undef]

The tags keys to propagate to the S3 objects associated with read sets
in the sequence store.



=head2 S3AccessConfig => L<Paws::Omics::S3AccessConfig>

S3 access configuration parameters



=head2 SseConfig => L<Paws::Omics::SseConfig>

Server-side encryption (SSE) settings for the store.



=head2 Tags => L<Paws::Omics::TagMap>

Tags for the store.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSequenceStore in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

