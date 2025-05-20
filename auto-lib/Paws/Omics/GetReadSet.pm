
package Paws::Omics::GetReadSet;
  use Moose;
  has File => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'file');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has PartNumber => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'partNumber', required => 1);
  has SequenceStoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sequenceStoreId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetReadSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sequencestore/{sequenceStoreId}/readset/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::GetReadSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetReadSet - Arguments for method GetReadSet on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetReadSet on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method GetReadSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetReadSet.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $GetReadSetResponse = $omics->GetReadSet(
      Id              => 'MyReadSetId',
      PartNumber      => 1,
      SequenceStoreId => 'MySequenceStoreId',
      File            => 'SOURCE1',             # OPTIONAL
    );

    # Results:
    my $Payload = $GetReadSetResponse->Payload;

    # Returns a L<Paws::Omics::GetReadSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/GetReadSet>

=head1 ATTRIBUTES


=head2 File => Str

The file to retrieve.

Valid values are: C<"SOURCE1">, C<"SOURCE2">, C<"INDEX">

=head2 B<REQUIRED> Id => Str

The read set's ID.



=head2 B<REQUIRED> PartNumber => Int

The part number to retrieve.



=head2 B<REQUIRED> SequenceStoreId => Str

The read set's sequence store ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetReadSet in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

