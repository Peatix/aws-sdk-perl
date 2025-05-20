
package Paws::AppIntegrations::CreateEventIntegration;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EventBridgeBus => (is => 'ro', isa => 'Str', required => 1);
  has EventFilter => (is => 'ro', isa => 'Paws::AppIntegrations::EventFilter', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::AppIntegrations::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEventIntegration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/eventIntegrations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppIntegrations::CreateEventIntegrationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::CreateEventIntegration - Arguments for method CreateEventIntegration on L<Paws::AppIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEventIntegration on the
L<Amazon AppIntegrations Service|Paws::AppIntegrations> service. Use the attributes of this class
as arguments to method CreateEventIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEventIntegration.

=head1 SYNOPSIS

    my $app-integrations = Paws->service('AppIntegrations');
    my $CreateEventIntegrationResponse =
      $app -integrations->CreateEventIntegration(
      EventBridgeBus => 'MyEventBridgeBus',
      EventFilter    => {
        Source => 'MySource',    # min: 1, max: 256

      },
      Name        => 'MyName',
      ClientToken => 'MyIdempotencyToken',    # OPTIONAL
      Description => 'MyDescription',         # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $EventIntegrationArn =
      $CreateEventIntegrationResponse->EventIntegrationArn;

    # Returns a L<Paws::AppIntegrations::CreateEventIntegrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/app-integrations/CreateEventIntegration>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 Description => Str

The description of the event integration.



=head2 B<REQUIRED> EventBridgeBus => Str

The EventBridge bus.



=head2 B<REQUIRED> EventFilter => L<Paws::AppIntegrations::EventFilter>

The event filter.



=head2 B<REQUIRED> Name => Str

The name of the event integration.



=head2 Tags => L<Paws::AppIntegrations::TagMap>

The tags used to organize, track, or control access for this resource.
For example, { "tags": {"key1":"value1", "key2":"value2"} }.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEventIntegration in L<Paws::AppIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

