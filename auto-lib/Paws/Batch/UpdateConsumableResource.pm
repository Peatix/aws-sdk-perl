
package Paws::Batch::UpdateConsumableResource;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ConsumableResource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'consumableResource', required => 1);
  has Operation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operation');
  has Quantity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'quantity');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConsumableResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/updateconsumableresource');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::UpdateConsumableResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::UpdateConsumableResource - Arguments for method UpdateConsumableResource on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConsumableResource on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method UpdateConsumableResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConsumableResource.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    my $UpdateConsumableResourceResponse = $batch->UpdateConsumableResource(
      ConsumableResource => 'MyString',
      ClientToken        => 'MyClientRequestToken',    # OPTIONAL
      Operation          => 'MyString',                # OPTIONAL
      Quantity           => 1,                         # OPTIONAL
    );

    # Results:
    my $ConsumableResourceArn =
      $UpdateConsumableResourceResponse->ConsumableResourceArn;
    my $ConsumableResourceName =
      $UpdateConsumableResourceResponse->ConsumableResourceName;
    my $TotalQuantity = $UpdateConsumableResourceResponse->TotalQuantity;

    # Returns a L<Paws::Batch::UpdateConsumableResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/UpdateConsumableResource>

=head1 ATTRIBUTES


=head2 ClientToken => Str

If this parameter is specified and two update requests with identical
payloads and C<clientToken>s are received, these requests are
considered the same request and the second request is rejected. A
C<clientToken> is valid for 8 hours or until one hour after the
consumable resource is deleted, whichever is less.



=head2 B<REQUIRED> ConsumableResource => Str

The name or ARN of the consumable resource to be updated.



=head2 Operation => Str

Indicates how the quantity of the consumable resource will be updated.
Must be one of:

=over

=item *

C<SET>

Sets the quantity of the resource to the value specified by the
C<quantity> parameter.

=item *

C<ADD>

Increases the quantity of the resource by the value specified by the
C<quantity> parameter.

=item *

C<REMOVE>

Reduces the quantity of the resource by the value specified by the
C<quantity> parameter.

=back




=head2 Quantity => Int

The change in the total quantity of the consumable resource. The
C<operation> parameter determines whether the value specified here will
be the new total quantity, or the amount by which the total quantity
will be increased or reduced. Must be a non-negative value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConsumableResource in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

