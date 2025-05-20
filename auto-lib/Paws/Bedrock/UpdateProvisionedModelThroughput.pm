
package Paws::Bedrock::UpdateProvisionedModelThroughput;
  use Moose;
  has DesiredModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'desiredModelId');
  has DesiredProvisionedModelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'desiredProvisionedModelName');
  has ProvisionedModelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'provisionedModelId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProvisionedModelThroughput');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/provisioned-model-throughput/{provisionedModelId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::UpdateProvisionedModelThroughputResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::UpdateProvisionedModelThroughput - Arguments for method UpdateProvisionedModelThroughput on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProvisionedModelThroughput on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method UpdateProvisionedModelThroughput.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProvisionedModelThroughput.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $UpdateProvisionedModelThroughputResponse =
      $bedrock->UpdateProvisionedModelThroughput(
      ProvisionedModelId          => 'MyProvisionedModelId',
      DesiredModelId              => 'MyModelIdentifier',         # OPTIONAL
      DesiredProvisionedModelName => 'MyProvisionedModelName',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/UpdateProvisionedModelThroughput>

=head1 ATTRIBUTES


=head2 DesiredModelId => Str

The Amazon Resource Name (ARN) of the new model to associate with this
Provisioned Throughput. You can't specify this field if this
Provisioned Throughput is associated with a base model.

If this Provisioned Throughput is associated with a custom model, you
can specify one of the following options:

=over

=item *

The base model from which the custom model was customized.

=item *

Another custom model that was customized from the same base model as
the custom model.

=back




=head2 DesiredProvisionedModelName => Str

The new name for this Provisioned Throughput.



=head2 B<REQUIRED> ProvisionedModelId => Str

The Amazon Resource Name (ARN) or name of the Provisioned Throughput to
update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProvisionedModelThroughput in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

