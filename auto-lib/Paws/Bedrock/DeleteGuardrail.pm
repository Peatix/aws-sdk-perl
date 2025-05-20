
package Paws::Bedrock::DeleteGuardrail;
  use Moose;
  has GuardrailIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'guardrailIdentifier', required => 1);
  has GuardrailVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'guardrailVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGuardrail');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/guardrails/{guardrailIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::DeleteGuardrailResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::DeleteGuardrail - Arguments for method DeleteGuardrail on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteGuardrail on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method DeleteGuardrail.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteGuardrail.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $DeleteGuardrailResponse = $bedrock->DeleteGuardrail(
      GuardrailIdentifier => 'MyGuardrailIdentifier',
      GuardrailVersion    => 'MyGuardrailNumericalVersion',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/DeleteGuardrail>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GuardrailIdentifier => Str

The unique identifier of the guardrail. This can be an ID or the ARN.



=head2 GuardrailVersion => Str

The version of the guardrail.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteGuardrail in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

