
package Paws::Omics::UpdateAnnotationStore;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAnnotationStore');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/annotationStore/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::UpdateAnnotationStoreResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::UpdateAnnotationStore - Arguments for method UpdateAnnotationStore on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAnnotationStore on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method UpdateAnnotationStore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAnnotationStore.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $UpdateAnnotationStoreResponse = $omics->UpdateAnnotationStore(
      Name        => 'MyString',
      Description => 'MyDescription',    # OPTIONAL
    );

    # Results:
    my $CreationTime = $UpdateAnnotationStoreResponse->CreationTime;
    my $Description  = $UpdateAnnotationStoreResponse->Description;
    my $Id           = $UpdateAnnotationStoreResponse->Id;
    my $Name         = $UpdateAnnotationStoreResponse->Name;
    my $Reference    = $UpdateAnnotationStoreResponse->Reference;
    my $Status       = $UpdateAnnotationStoreResponse->Status;
    my $StoreFormat  = $UpdateAnnotationStoreResponse->StoreFormat;
    my $StoreOptions = $UpdateAnnotationStoreResponse->StoreOptions;
    my $UpdateTime   = $UpdateAnnotationStoreResponse->UpdateTime;

    # Returns a L<Paws::Omics::UpdateAnnotationStoreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/UpdateAnnotationStore>

=head1 ATTRIBUTES


=head2 Description => Str

A description for the store.



=head2 B<REQUIRED> Name => Str

A name for the store.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAnnotationStore in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

