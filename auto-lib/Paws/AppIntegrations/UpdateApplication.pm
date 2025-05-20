
package Paws::AppIntegrations::UpdateApplication;
  use Moose;
  has ApplicationSourceConfig => (is => 'ro', isa => 'Paws::AppIntegrations::ApplicationSourceConfig');
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationIdentifier', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Permissions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Publications => (is => 'ro', isa => 'ArrayRef[Paws::AppIntegrations::Publication]');
  has Subscriptions => (is => 'ro', isa => 'ArrayRef[Paws::AppIntegrations::Subscription]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{ApplicationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppIntegrations::UpdateApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::UpdateApplication - Arguments for method UpdateApplication on L<Paws::AppIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApplication on the
L<Amazon AppIntegrations Service|Paws::AppIntegrations> service. Use the attributes of this class
as arguments to method UpdateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApplication.

=head1 SYNOPSIS

    my $app-integrations = Paws->service('AppIntegrations');
    my $UpdateApplicationResponse = $app -integrations->UpdateApplication(
      Arn                     => 'MyArnOrUUID',
      ApplicationSourceConfig => {
        ExternalUrlConfig => {
          AccessUrl       => 'MyURL',    # min: 1, max: 1000
          ApprovedOrigins => [
            'MyApplicationTrustedSource', ...    # min: 1, max: 128
          ],    # min: 1, max: 50; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Description => 'MyDescription',        # OPTIONAL
      Name        => 'MyApplicationName',    # OPTIONAL
      Permissions => [
        'MyPermission', ...                  # min: 1, max: 255
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
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/app-integrations/UpdateApplication>

=head1 ATTRIBUTES


=head2 ApplicationSourceConfig => L<Paws::AppIntegrations::ApplicationSourceConfig>

The configuration for where the application should be loaded from.



=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the Application.



=head2 Description => Str

The description of the application.



=head2 Name => Str

The name of the application.



=head2 Permissions => ArrayRef[Str|Undef]

The configuration of events or requests that the application has access
to.



=head2 Publications => ArrayRef[L<Paws::AppIntegrations::Publication>]

The events that the application publishes.



=head2 Subscriptions => ArrayRef[L<Paws::AppIntegrations::Subscription>]

The events that the application subscribes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApplication in L<Paws::AppIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

