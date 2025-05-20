
package Paws::Config::StartResourceEvaluation;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has EvaluationContext => (is => 'ro', isa => 'Paws::Config::EvaluationContext');
  has EvaluationMode => (is => 'ro', isa => 'Str', required => 1);
  has EvaluationTimeout => (is => 'ro', isa => 'Int');
  has ResourceDetails => (is => 'ro', isa => 'Paws::Config::ResourceDetails', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartResourceEvaluation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::StartResourceEvaluationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::StartResourceEvaluation - Arguments for method StartResourceEvaluation on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartResourceEvaluation on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method StartResourceEvaluation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartResourceEvaluation.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $StartResourceEvaluationResponse = $config->StartResourceEvaluation(
      EvaluationMode  => 'DETECTIVE',
      ResourceDetails => {
        ResourceConfiguration => 'MyResourceConfiguration', # min: 1, max: 51200
        ResourceId            => 'MyBaseResourceId',        # min: 1, max: 768
        ResourceType          => 'MyStringWithCharLimit256',  # min: 1, max: 256
        ResourceConfigurationSchemaType =>
          'CFN_RESOURCE_SCHEMA',    # values: CFN_RESOURCE_SCHEMA; OPTIONAL
      },
      ClientToken       => 'MyClientToken',    # OPTIONAL
      EvaluationContext => {
        EvaluationContextIdentifier =>
          'MyEvaluationContextIdentifier',     # min: 1, max: 128; OPTIONAL
      },    # OPTIONAL
      EvaluationTimeout => 1,    # OPTIONAL
    );

    # Results:
    my $ResourceEvaluationId =
      $StartResourceEvaluationResponse->ResourceEvaluationId;

    # Returns a L<Paws::Config::StartResourceEvaluationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/StartResourceEvaluation>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A client token is a unique, case-sensitive string of up to 64 ASCII
characters. To make an idempotent API request using one of these
actions, specify a client token in the request.

Avoid reusing the same client token for other API requests. If you
retry a request that completed successfully using the same client token
and the same parameters, the retry succeeds without performing any
further actions. If you retry a successful request using the same
client token, but one or more of the parameters are different, other
than the Region or Availability Zone, the retry fails with an
IdempotentParameterMismatch error.



=head2 EvaluationContext => L<Paws::Config::EvaluationContext>

Returns an C<EvaluationContext> object.



=head2 B<REQUIRED> EvaluationMode => Str

The mode of an evaluation. The valid values for this API are
C<DETECTIVE> and C<PROACTIVE>.

Valid values are: C<"DETECTIVE">, C<"PROACTIVE">

=head2 EvaluationTimeout => Int

The timeout for an evaluation. The default is 900 seconds. You cannot
specify a number greater than 3600. If you specify 0, Config uses the
default.



=head2 B<REQUIRED> ResourceDetails => L<Paws::Config::ResourceDetails>

Returns a C<ResourceDetails> object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartResourceEvaluation in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

