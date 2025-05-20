
package Paws::Omics::GetAnnotationStore;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAnnotationStore');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/annotationStore/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::GetAnnotationStoreResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetAnnotationStore - Arguments for method GetAnnotationStore on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAnnotationStore on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method GetAnnotationStore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAnnotationStore.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $GetAnnotationStoreResponse = $omics->GetAnnotationStore(
      Name => 'MyString',

    );

    # Results:
    my $CreationTime   = $GetAnnotationStoreResponse->CreationTime;
    my $Description    = $GetAnnotationStoreResponse->Description;
    my $Id             = $GetAnnotationStoreResponse->Id;
    my $Name           = $GetAnnotationStoreResponse->Name;
    my $NumVersions    = $GetAnnotationStoreResponse->NumVersions;
    my $Reference      = $GetAnnotationStoreResponse->Reference;
    my $SseConfig      = $GetAnnotationStoreResponse->SseConfig;
    my $Status         = $GetAnnotationStoreResponse->Status;
    my $StatusMessage  = $GetAnnotationStoreResponse->StatusMessage;
    my $StoreArn       = $GetAnnotationStoreResponse->StoreArn;
    my $StoreFormat    = $GetAnnotationStoreResponse->StoreFormat;
    my $StoreOptions   = $GetAnnotationStoreResponse->StoreOptions;
    my $StoreSizeBytes = $GetAnnotationStoreResponse->StoreSizeBytes;
    my $Tags           = $GetAnnotationStoreResponse->Tags;
    my $UpdateTime     = $GetAnnotationStoreResponse->UpdateTime;

    # Returns a L<Paws::Omics::GetAnnotationStoreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/GetAnnotationStore>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The store's name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAnnotationStore in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

