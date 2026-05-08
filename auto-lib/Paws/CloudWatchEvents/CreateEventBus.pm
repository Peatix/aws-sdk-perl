
package Paws::CloudWatchEvents::CreateEventBus;
  use Moose;
  has DeadLetterConfig => (is => 'ro', isa => 'Paws::CloudWatchEvents::DeadLetterConfig');
  has Description => (is => 'ro', isa => 'Str');
  has EventSourceName => (is => 'ro', isa => 'Str');
  has KmsKeyIdentifier => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEventBus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::CreateEventBusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::CreateEventBus - Arguments for method CreateEventBus on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEventBus on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method CreateEventBus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEventBus.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $CreateEventBusResponse = $events->CreateEventBus(
      Name             => 'MyEventBusName',
      DeadLetterConfig => {
        Arn => 'MyResourceArn',    # min: 1, max: 1600; OPTIONAL
      },    # OPTIONAL
      Description      => 'MyEventBusDescription',    # OPTIONAL
      EventSourceName  => 'MyEventSourceName',        # OPTIONAL
      KmsKeyIdentifier => 'MyKmsKeyIdentifier',       # OPTIONAL
      Tags             => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DeadLetterConfig = $CreateEventBusResponse->DeadLetterConfig;
    my $Description      = $CreateEventBusResponse->Description;
    my $EventBusArn      = $CreateEventBusResponse->EventBusArn;
    my $KmsKeyIdentifier = $CreateEventBusResponse->KmsKeyIdentifier;

    # Returns a L<Paws::CloudWatchEvents::CreateEventBusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 DeadLetterConfig => L<Paws::CloudWatchEvents::DeadLetterConfig>





=head2 Description => Str

The event bus description.



=head2 EventSourceName => Str

If you are creating a partner event bus, this specifies the partner
event source that the new event bus will be matched with.



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



=head2 B<REQUIRED> Name => Str

The name of the new event bus.

Custom event bus names can't contain the C</> character, but you can
use the C</> character in partner event bus names. In addition, for
partner event buses, the name must exactly match the name of the
partner event source that this event bus is matched to.

You can't use the name C<default> for a custom event bus, as this name
is already used for your account's default event bus.



=head2 Tags => ArrayRef[L<Paws::CloudWatchEvents::Tag>]

Tags to associate with the event bus.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEventBus in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

