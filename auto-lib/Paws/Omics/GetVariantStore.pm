
package Paws::Omics::GetVariantStore;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetVariantStore');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/variantStore/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::GetVariantStoreResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetVariantStore - Arguments for method GetVariantStore on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetVariantStore on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method GetVariantStore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetVariantStore.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $GetVariantStoreResponse = $omics->GetVariantStore(
      Name => 'MyString',

    );

    # Results:
    my $CreationTime   = $GetVariantStoreResponse->CreationTime;
    my $Description    = $GetVariantStoreResponse->Description;
    my $Id             = $GetVariantStoreResponse->Id;
    my $Name           = $GetVariantStoreResponse->Name;
    my $Reference      = $GetVariantStoreResponse->Reference;
    my $SseConfig      = $GetVariantStoreResponse->SseConfig;
    my $Status         = $GetVariantStoreResponse->Status;
    my $StatusMessage  = $GetVariantStoreResponse->StatusMessage;
    my $StoreArn       = $GetVariantStoreResponse->StoreArn;
    my $StoreSizeBytes = $GetVariantStoreResponse->StoreSizeBytes;
    my $Tags           = $GetVariantStoreResponse->Tags;
    my $UpdateTime     = $GetVariantStoreResponse->UpdateTime;

    # Returns a L<Paws::Omics::GetVariantStoreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/GetVariantStore>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The store's name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetVariantStore in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

