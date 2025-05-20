
package Paws::Omics::BatchDeleteReadSet;
  use Moose;
  has Ids => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ids', required => 1);
  has SequenceStoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sequenceStoreId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDeleteReadSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sequencestore/{sequenceStoreId}/readset/batch/delete');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::BatchDeleteReadSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::BatchDeleteReadSet - Arguments for method BatchDeleteReadSet on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDeleteReadSet on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method BatchDeleteReadSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDeleteReadSet.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $BatchDeleteReadSetResponse = $omics->BatchDeleteReadSet(
      Ids => [
        'MyReadSetId', ...    # min: 10, max: 36
      ],
      SequenceStoreId => 'MySequenceStoreId',

    );

    # Results:
    my $Errors = $BatchDeleteReadSetResponse->Errors;

    # Returns a L<Paws::Omics::BatchDeleteReadSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/BatchDeleteReadSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Ids => ArrayRef[Str|Undef]

The read sets' IDs.



=head2 B<REQUIRED> SequenceStoreId => Str

The read sets' sequence store ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDeleteReadSet in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

