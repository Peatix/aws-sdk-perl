
package Paws::Omics::CreateVariantStore;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Reference => (is => 'ro', isa => 'Paws::Omics::ReferenceItem', traits => ['NameInRequest'], request_name => 'reference', required => 1);
  has SseConfig => (is => 'ro', isa => 'Paws::Omics::SseConfig', traits => ['NameInRequest'], request_name => 'sseConfig');
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVariantStore');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/variantStore');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::CreateVariantStoreResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::CreateVariantStore - Arguments for method CreateVariantStore on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVariantStore on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method CreateVariantStore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVariantStore.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $CreateVariantStoreResponse = $omics->CreateVariantStore(
      Reference => {
        ReferenceArn => 'MyReferenceArn',    # min: 1, max: 127; OPTIONAL
      },
      Description => 'MyDescription',        # OPTIONAL
      Name        => 'MyStoreName',          # OPTIONAL
      SseConfig   => {
        Type   => 'KMS',                        # values: KMS
        KeyArn => 'MySseConfigKeyArnString',    # min: 20, max: 2048; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $CreationTime = $CreateVariantStoreResponse->CreationTime;
    my $Id           = $CreateVariantStoreResponse->Id;
    my $Name         = $CreateVariantStoreResponse->Name;
    my $Reference    = $CreateVariantStoreResponse->Reference;
    my $Status       = $CreateVariantStoreResponse->Status;

    # Returns a L<Paws::Omics::CreateVariantStoreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/CreateVariantStore>

=head1 ATTRIBUTES


=head2 Description => Str

A description for the store.



=head2 Name => Str

A name for the store.



=head2 B<REQUIRED> Reference => L<Paws::Omics::ReferenceItem>

The genome reference for the store's variants.



=head2 SseConfig => L<Paws::Omics::SseConfig>

Server-side encryption (SSE) settings for the store.



=head2 Tags => L<Paws::Omics::TagMap>

Tags for the store.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVariantStore in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

