
package Paws::CloudWatchEvents::UpdateEventBus;
  use Moose;
  has DeadLetterConfig => (is => 'ro', isa => 'Paws::CloudWatchEvents::DeadLetterConfig');
  has Description => (is => 'ro', isa => 'Str');
  has KmsKeyIdentifier => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEventBus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::UpdateEventBusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::UpdateEventBus - Arguments for method UpdateEventBus on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEventBus on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method UpdateEventBus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEventBus.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $UpdateEventBusResponse = $events->UpdateEventBus(
      DeadLetterConfig => {
        Arn => 'MyResourceArn',    # min: 1, max: 1600; OPTIONAL
      },    # OPTIONAL
      Description      => 'MyEventBusDescription',    # OPTIONAL
      KmsKeyIdentifier => 'MyKmsKeyIdentifier',       # OPTIONAL
      Name             => 'MyEventBusName',           # OPTIONAL
    );

    # Results:
    my $Arn              = $UpdateEventBusResponse->Arn;
    my $DeadLetterConfig = $UpdateEventBusResponse->DeadLetterConfig;
    my $Description      = $UpdateEventBusResponse->Description;
    my $KmsKeyIdentifier = $UpdateEventBusResponse->KmsKeyIdentifier;
    my $Name             = $UpdateEventBusResponse->Name;

    # Returns a L<Paws::CloudWatchEvents::UpdateEventBusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 DeadLetterConfig => L<Paws::CloudWatchEvents::DeadLetterConfig>





=head2 Description => Str

The event bus description.



=head2 KmsKeyIdentifier => Str

The identifier of the KMS customer managed key for EventBridge to use,
if you choose to use a customer managed key to encrypt events on this
event bus. The identifier can be the key Amazon Resource Name (ARN),
KeyId, key alias, or key alias ARN.

If you do not specify a customer managed key identifier, EventBridge
uses an Amazon Web Services owned key to encrypt events on the event
bus.

For more information, see Identify and view keys
(https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html)
in the I<Key Management Service Developer Guide>.

Schema discovery is not supported for event buses encrypted using a
customer managed key. EventBridge returns an error if:

=over

=item *

You call C< CreateDiscoverer
(https://docs.aws.amazon.com/eventbridge/latest/schema-reference/v1-discoverers.html#CreateDiscoverer)
> on an event bus set to use a customer managed key for encryption.

=item *

You call C< UpdatedEventBus
(https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_UpdatedEventBus.html)
> to set a customer managed key on an event bus with schema discovery
enabled.

=back

To enable schema discovery on an event bus, choose to use an Amazon Web
Services owned key. For more information, see Encrypting events
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-encryption-event-bus-cmkey.html)
in the I<Amazon EventBridge User Guide>.

If you have specified that EventBridge use a customer managed key for
encrypting the source event bus, we strongly recommend you also specify
a customer managed key for any archives for the event bus as well.

For more information, see Encrypting archives
(https://docs.aws.amazon.com/eventbridge/latest/userguide/encryption-archives.html)
in the I<Amazon EventBridge User Guide>.



=head2 Name => Str

The name of the event bus.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEventBus in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

