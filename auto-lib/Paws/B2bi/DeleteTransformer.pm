
package Paws::B2bi::DeleteTransformer;
  use Moose;
  has TransformerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'transformerId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTransformer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::DeleteTransformer - Arguments for method DeleteTransformer on L<Paws::B2bi>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTransformer on the
L<AWS B2B Data Interchange|Paws::B2bi> service. Use the attributes of this class
as arguments to method DeleteTransformer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTransformer.

=head1 SYNOPSIS

    my $b2bi = Paws->service('B2bi');
    $b2bi->DeleteTransformer(
      TransformerId => 'MyTransformerId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/b2bi/DeleteTransformer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TransformerId => Str

Specifies the system-assigned unique identifier for the transformer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTransformer in L<Paws::B2bi>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

