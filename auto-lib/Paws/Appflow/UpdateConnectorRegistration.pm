
package Paws::Appflow::UpdateConnectorRegistration;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ConnectorLabel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorLabel', required => 1);
  has ConnectorProvisioningConfig => (is => 'ro', isa => 'Paws::Appflow::ConnectorProvisioningConfig', traits => ['NameInRequest'], request_name => 'connectorProvisioningConfig');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConnectorRegistration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-connector-registration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Appflow::UpdateConnectorRegistrationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::UpdateConnectorRegistration - Arguments for method UpdateConnectorRegistration on L<Paws::Appflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConnectorRegistration on the
L<Amazon Appflow|Paws::Appflow> service. Use the attributes of this class
as arguments to method UpdateConnectorRegistration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConnectorRegistration.

=head1 SYNOPSIS

    my $appflow = Paws->service('Appflow');
    my $UpdateConnectorRegistrationResponse =
      $appflow->UpdateConnectorRegistration(
      ConnectorLabel              => 'MyConnectorLabel',
      ClientToken                 => 'MyClientToken',      # OPTIONAL
      ConnectorProvisioningConfig => {
        Lambda => {
          LambdaArn => 'MyARN',                            # max: 512

        },    # OPTIONAL
      },    # OPTIONAL
      Description => 'MyDescription',    # OPTIONAL
      );

    # Results:
    my $ConnectorArn = $UpdateConnectorRegistrationResponse->ConnectorArn;

    # Returns a L<Paws::Appflow::UpdateConnectorRegistrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appflow/UpdateConnectorRegistration>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The C<clientToken> parameter is an idempotency token. It ensures that
your C<UpdateConnectorRegistration> request completes only once. You
choose the value to pass. For example, if you don't receive a response
from your request, you can safely retry the request with the same
C<clientToken> parameter value.

If you omit a C<clientToken> value, the Amazon Web Services SDK that
you are using inserts a value for you. This way, the SDK can safely
retry requests multiple times after a network error. You must provide
your own value for other use cases.

If you specify input parameters that differ from your first request, an
error occurs. If you use a different value for C<clientToken>, Amazon
AppFlow considers it a new call to C<UpdateConnectorRegistration>. The
token is active for 8 hours.



=head2 B<REQUIRED> ConnectorLabel => Str

The name of the connector. The name is unique for each connector
registration in your AWS account.



=head2 ConnectorProvisioningConfig => L<Paws::Appflow::ConnectorProvisioningConfig>





=head2 Description => Str

A description about the update that you're applying to the connector.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConnectorRegistration in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

