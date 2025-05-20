
package Paws::Appflow::RegisterConnector;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ConnectorLabel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorLabel');
  has ConnectorProvisioningConfig => (is => 'ro', isa => 'Paws::Appflow::ConnectorProvisioningConfig', traits => ['NameInRequest'], request_name => 'connectorProvisioningConfig');
  has ConnectorProvisioningType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorProvisioningType');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterConnector');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/register-connector');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Appflow::RegisterConnectorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::RegisterConnector - Arguments for method RegisterConnector on L<Paws::Appflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterConnector on the
L<Amazon Appflow|Paws::Appflow> service. Use the attributes of this class
as arguments to method RegisterConnector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterConnector.

=head1 SYNOPSIS

    my $appflow = Paws->service('Appflow');
    my $RegisterConnectorResponse = $appflow->RegisterConnector(
      ClientToken                 => 'MyClientToken',       # OPTIONAL
      ConnectorLabel              => 'MyConnectorLabel',    # OPTIONAL
      ConnectorProvisioningConfig => {
        Lambda => {
          LambdaArn => 'MyARN',                             # max: 512

        },    # OPTIONAL
      },    # OPTIONAL
      ConnectorProvisioningType => 'LAMBDA',           # OPTIONAL
      Description               => 'MyDescription',    # OPTIONAL
    );

    # Results:
    my $ConnectorArn = $RegisterConnectorResponse->ConnectorArn;

    # Returns a L<Paws::Appflow::RegisterConnectorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appflow/RegisterConnector>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The C<clientToken> parameter is an idempotency token. It ensures that
your C<RegisterConnector> request completes only once. You choose the
value to pass. For example, if you don't receive a response from your
request, you can safely retry the request with the same C<clientToken>
parameter value.

If you omit a C<clientToken> value, the Amazon Web Services SDK that
you are using inserts a value for you. This way, the SDK can safely
retry requests multiple times after a network error. You must provide
your own value for other use cases.

If you specify input parameters that differ from your first request, an
error occurs. If you use a different value for C<clientToken>, Amazon
AppFlow considers it a new call to C<RegisterConnector>. The token is
active for 8 hours.



=head2 ConnectorLabel => Str

The name of the connector. The name is unique for each
C<ConnectorRegistration> in your Amazon Web Services account.



=head2 ConnectorProvisioningConfig => L<Paws::Appflow::ConnectorProvisioningConfig>

The provisioning type of the connector. Currently the only supported
value is LAMBDA.



=head2 ConnectorProvisioningType => Str

The provisioning type of the connector. Currently the only supported
value is LAMBDA.

Valid values are: C<"LAMBDA">

=head2 Description => Str

A description about the connector that's being registered.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterConnector in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

