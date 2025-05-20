
package Paws::Omics::GetReference;
  use Moose;
  has File => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'file');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has PartNumber => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'partNumber', required => 1);
  has Range => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Range');
  has ReferenceStoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'referenceStoreId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetReference');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/referencestore/{referenceStoreId}/reference/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::GetReferenceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetReference - Arguments for method GetReference on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetReference on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method GetReference.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetReference.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $GetReferenceResponse = $omics->GetReference(
      Id               => 'MyReferenceId',
      PartNumber       => 1,
      ReferenceStoreId => 'MyReferenceStoreId',
      File             => 'SOURCE',               # OPTIONAL
      Range            => 'MyRange',              # OPTIONAL
    );

    # Results:
    my $Payload = $GetReferenceResponse->Payload;

    # Returns a L<Paws::Omics::GetReferenceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/GetReference>

=head1 ATTRIBUTES


=head2 File => Str

The file to retrieve.

Valid values are: C<"SOURCE">, C<"INDEX">

=head2 B<REQUIRED> Id => Str

The reference's ID.



=head2 B<REQUIRED> PartNumber => Int

The part number to retrieve.



=head2 Range => Str

The range to retrieve.



=head2 B<REQUIRED> ReferenceStoreId => Str

The reference's store ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetReference in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

