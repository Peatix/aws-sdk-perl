
package Paws::Omics::GetReferenceStore;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetReferenceStore');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/referencestore/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::GetReferenceStoreResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetReferenceStore - Arguments for method GetReferenceStore on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetReferenceStore on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method GetReferenceStore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetReferenceStore.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $GetReferenceStoreResponse = $omics->GetReferenceStore(
      Id => 'MyReferenceStoreId',

    );

    # Results:
    my $Arn          = $GetReferenceStoreResponse->Arn;
    my $CreationTime = $GetReferenceStoreResponse->CreationTime;
    my $Description  = $GetReferenceStoreResponse->Description;
    my $Id           = $GetReferenceStoreResponse->Id;
    my $Name         = $GetReferenceStoreResponse->Name;
    my $SseConfig    = $GetReferenceStoreResponse->SseConfig;

    # Returns a L<Paws::Omics::GetReferenceStoreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/GetReferenceStore>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The store's ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetReferenceStore in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

