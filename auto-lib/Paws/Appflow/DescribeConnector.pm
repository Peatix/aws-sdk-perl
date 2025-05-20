
package Paws::Appflow::DescribeConnector;
  use Moose;
  has ConnectorLabel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorLabel');
  has ConnectorType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConnector');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describe-connector');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Appflow::DescribeConnectorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::DescribeConnector - Arguments for method DescribeConnector on L<Paws::Appflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConnector on the
L<Amazon Appflow|Paws::Appflow> service. Use the attributes of this class
as arguments to method DescribeConnector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConnector.

=head1 SYNOPSIS

    my $appflow = Paws->service('Appflow');
    my $DescribeConnectorResponse = $appflow->DescribeConnector(
      ConnectorType  => 'Salesforce',
      ConnectorLabel => 'MyConnectorLabel',    # OPTIONAL
    );

    # Results:
    my $ConnectorConfiguration =
      $DescribeConnectorResponse->ConnectorConfiguration;

    # Returns a L<Paws::Appflow::DescribeConnectorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appflow/DescribeConnector>

=head1 ATTRIBUTES


=head2 ConnectorLabel => Str

The label of the connector. The label is unique for each
C<ConnectorRegistration> in your Amazon Web Services account. Only
needed if calling for CUSTOMCONNECTOR connector type/.



=head2 B<REQUIRED> ConnectorType => Str

The connector type, such as CUSTOMCONNECTOR, Saleforce, Marketo. Please
choose CUSTOMCONNECTOR for Lambda based custom connectors.

Valid values are: C<"Salesforce">, C<"Singular">, C<"Slack">, C<"Redshift">, C<"S3">, C<"Marketo">, C<"Googleanalytics">, C<"Zendesk">, C<"Servicenow">, C<"Datadog">, C<"Trendmicro">, C<"Snowflake">, C<"Dynatrace">, C<"Infornexus">, C<"Amplitude">, C<"Veeva">, C<"EventBridge">, C<"LookoutMetrics">, C<"Upsolver">, C<"Honeycode">, C<"CustomerProfiles">, C<"SAPOData">, C<"CustomConnector">, C<"Pardot">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConnector in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

