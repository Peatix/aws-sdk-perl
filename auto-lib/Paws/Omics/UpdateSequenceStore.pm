
package Paws::Omics::UpdateSequenceStore;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FallbackLocation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fallbackLocation');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has PropagatedSetLevelTags => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'propagatedSetLevelTags');
  has S3AccessConfig => (is => 'ro', isa => 'Paws::Omics::S3AccessConfig', traits => ['NameInRequest'], request_name => 's3AccessConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSequenceStore');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sequencestore/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::UpdateSequenceStoreResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::UpdateSequenceStore - Arguments for method UpdateSequenceStore on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSequenceStore on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method UpdateSequenceStore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSequenceStore.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $UpdateSequenceStoreResponse = $omics->UpdateSequenceStore(
      Id                     => 'MySequenceStoreId',
      ClientToken            => 'MyClientToken',                 # OPTIONAL
      Description            => 'MySequenceStoreDescription',    # OPTIONAL
      FallbackLocation       => 'MyFallbackLocation',            # OPTIONAL
      Name                   => 'MySequenceStoreName',           # OPTIONAL
      PropagatedSetLevelTags => [
        'MyTagKey', ...    # min: 1, max: 128
      ],    # OPTIONAL
      S3AccessConfig => {
        AccessLogLocation => 'MyAccessLogLocation',    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Arn                 = $UpdateSequenceStoreResponse->Arn;
    my $CreationTime        = $UpdateSequenceStoreResponse->CreationTime;
    my $Description         = $UpdateSequenceStoreResponse->Description;
    my $ETagAlgorithmFamily = $UpdateSequenceStoreResponse->ETagAlgorithmFamily;
    my $FallbackLocation    = $UpdateSequenceStoreResponse->FallbackLocation;
    my $Id                  = $UpdateSequenceStoreResponse->Id;
    my $Name                = $UpdateSequenceStoreResponse->Name;
    my $PropagatedSetLevelTags =
      $UpdateSequenceStoreResponse->PropagatedSetLevelTags;
    my $S3Access      = $UpdateSequenceStoreResponse->S3Access;
    my $SseConfig     = $UpdateSequenceStoreResponse->SseConfig;
    my $Status        = $UpdateSequenceStoreResponse->Status;
    my $StatusMessage = $UpdateSequenceStoreResponse->StatusMessage;
    my $UpdateTime    = $UpdateSequenceStoreResponse->UpdateTime;

    # Returns a L<Paws::Omics::UpdateSequenceStoreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/UpdateSequenceStore>

=head1 ATTRIBUTES


=head2 ClientToken => Str

To ensure that requests don't run multiple times, specify a unique
token for each request.



=head2 Description => Str

A description for the sequence store.



=head2 FallbackLocation => Str

The S3 URI of a bucket and folder to store Read Sets that fail to
upload.



=head2 B<REQUIRED> Id => Str

The ID of the sequence store.



=head2 Name => Str

A name for the sequence store.



=head2 PropagatedSetLevelTags => ArrayRef[Str|Undef]

The tags keys to propagate to the S3 objects associated with read sets
in the sequence store.



=head2 S3AccessConfig => L<Paws::Omics::S3AccessConfig>

S3 access configuration parameters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSequenceStore in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

