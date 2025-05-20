
package Paws::AppIntegrations::CreateApplication;
  use Moose;
  has ApplicationSourceConfig => (is => 'ro', isa => 'Paws::AppIntegrations::ApplicationSourceConfig', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', required => 1);
  has Permissions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Publications => (is => 'ro', isa => 'ArrayRef[Paws::AppIntegrations::Publication]');
  has Subscriptions => (is => 'ro', isa => 'ArrayRef[Paws::AppIntegrations::Subscription]');
  has Tags => (is => 'ro', isa => 'Paws::AppIntegrations::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppIntegrations::CreateApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::CreateApplication - Arguments for method CreateApplication on L<Paws::AppIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplication on the
L<Amazon AppIntegrations Service|Paws::AppIntegrations> service. Use the attributes of this class
as arguments to method CreateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplication.

=head1 SYNOPSIS

    my $app-integrations = Paws->service('AppIntegrations');
    my $CreateApplicationResponse = $app -integrations->CreateApplication(
      ApplicationSourceConfig => {
        ExternalUrlConfig => {
          AccessUrl       => 'MyURL',    # min: 1, max: 1000
          ApprovedOrigins => [
            'MyApplicationTrustedSource', ...    # min: 1, max: 128
          ],    # min: 1, max: 50; OPTIONAL
        },    # OPTIONAL
      },
      Name        => 'MyApplicationName',
      Namespace   => 'MyApplicationNamespace',
      ClientToken => 'MyIdempotencyToken',       # OPTIONAL
      Description => 'MyDescription',            # OPTIONAL
      Permissions => [
        'MyPermission', ...                      # min: 1, max: 255
      ],    # OPTIONAL
      Publications => [
        {
          Event       => 'MyEventName',                # min: 1, max: 255
          Schema      => 'MyEventDefinitionSchema',    # min: 1, max: 10240
          Description => 'MyDescription',              # max: 1000
        },
        ...
      ],    # OPTIONAL
      Subscriptions => [
        {
          Event       => 'MyEventName',      # min: 1, max: 255
          Description => 'MyDescription',    # max: 1000
        },
        ...
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn = $CreateApplicationResponse->Arn;
    my $Id  = $CreateApplicationResponse->Id;

    # Returns a L<Paws::AppIntegrations::CreateApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/app-integrations/CreateApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationSourceConfig => L<Paws::AppIntegrations::ApplicationSourceConfig>

The configuration for where the application should be loaded from.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 Description => Str

The description of the application.



=head2 B<REQUIRED> Name => Str

The name of the application.



=head2 B<REQUIRED> Namespace => Str

The namespace of the application.



=head2 Permissions => ArrayRef[Str|Undef]

The configuration of events or requests that the application has access
to.



=head2 Publications => ArrayRef[L<Paws::AppIntegrations::Publication>]

The events that the application publishes.



=head2 Subscriptions => ArrayRef[L<Paws::AppIntegrations::Subscription>]

The events that the application subscribes.



=head2 Tags => L<Paws::AppIntegrations::TagMap>

The tags used to organize, track, or control access for this resource.
For example, { "tags": {"key1":"value1", "key2":"value2"} }.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplication in L<Paws::AppIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

