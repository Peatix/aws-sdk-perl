
package Paws::B2bi::GetTransformerJob;
  use Moose;
  has TransformerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'transformerId' , required => 1);
  has TransformerJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'transformerJobId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTransformerJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::B2bi::GetTransformerJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::GetTransformerJob - Arguments for method GetTransformerJob on L<Paws::B2bi>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTransformerJob on the
L<AWS B2B Data Interchange|Paws::B2bi> service. Use the attributes of this class
as arguments to method GetTransformerJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTransformerJob.

=head1 SYNOPSIS

    my $b2bi = Paws->service('B2bi');
    my $GetTransformerJobResponse = $b2bi->GetTransformerJob(
      TransformerId    => 'MyTransformerId',
      TransformerJobId => 'MyTransformerJobId',

    );

    # Results:
    my $Message     = $GetTransformerJobResponse->Message;
    my $OutputFiles = $GetTransformerJobResponse->OutputFiles;
    my $Status      = $GetTransformerJobResponse->Status;

    # Returns a L<Paws::B2bi::GetTransformerJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/b2bi/GetTransformerJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TransformerId => Str

Specifies the system-assigned unique identifier for the transformer.



=head2 B<REQUIRED> TransformerJobId => Str

Specifies the unique, system-generated identifier for a transformer
run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTransformerJob in L<Paws::B2bi>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

