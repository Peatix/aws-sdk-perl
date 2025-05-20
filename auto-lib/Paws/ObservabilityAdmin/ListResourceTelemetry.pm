
package Paws::ObservabilityAdmin::ListResourceTelemetry;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceIdentifierPrefix => (is => 'ro', isa => 'Str');
  has ResourceTags => (is => 'ro', isa => 'Paws::ObservabilityAdmin::TagMapInput');
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TelemetryConfigurationState => (is => 'ro', isa => 'Paws::ObservabilityAdmin::TelemetryConfigurationState');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceTelemetry');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListResourceTelemetry');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ObservabilityAdmin::ListResourceTelemetryOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ObservabilityAdmin::ListResourceTelemetry - Arguments for method ListResourceTelemetry on L<Paws::ObservabilityAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourceTelemetry on the
L<CloudWatch Observability Admin Service|Paws::ObservabilityAdmin> service. Use the attributes of this class
as arguments to method ListResourceTelemetry.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourceTelemetry.

=head1 SYNOPSIS

    my $observabilityadmin = Paws->service('ObservabilityAdmin');
    my $ListResourceTelemetryOutput =
      $observabilityadmin->ListResourceTelemetry(
      MaxResults               => 1,                               # OPTIONAL
      NextToken                => 'MyNextToken',                   # OPTIONAL
      ResourceIdentifierPrefix => 'MyResourceIdentifierPrefix',    # OPTIONAL
      ResourceTags             => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      ResourceTypes => [
        'AWS::EC2::Instance',
        ...   # values: AWS::EC2::Instance, AWS::EC2::VPC, AWS::Lambda::Function
      ],    # OPTIONAL
      TelemetryConfigurationState => {
        'Logs' => 'Enabled'
        , # key: values: Logs, Metrics, Traces, value: values: Enabled, Disabled, NotApplicable
      },    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListResourceTelemetryOutput->NextToken;
    my $TelemetryConfigurations =
      $ListResourceTelemetryOutput->TelemetryConfigurations;

    # Returns a L<Paws::ObservabilityAdmin::ListResourceTelemetryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/observabilityadmin/ListResourceTelemetry>

=head1 ATTRIBUTES


=head2 MaxResults => Int

A number field used to limit the number of results within the returned
list.



=head2 NextToken => Str

The token for the next set of items to return. A previous call
generates this token.



=head2 ResourceIdentifierPrefix => Str

A string used to filter resources which have a C<ResourceIdentifier>
starting with the C<ResourceIdentifierPrefix>.



=head2 ResourceTags => L<Paws::ObservabilityAdmin::TagMapInput>

A key-value pair to filter resources based on tags associated with the
resource. For more information about tags, see What are tags?
(https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/what-are-tags.html)



=head2 ResourceTypes => ArrayRef[Str|Undef]

A list of resource types used to filter resources supported by
telemetry config. If this parameter is provided, the resources will be
returned in the same order used in the request.



=head2 TelemetryConfigurationState => L<Paws::ObservabilityAdmin::TelemetryConfigurationState>

A key-value pair to filter resources based on the telemetry type and
the state of the telemetry configuration. The key is the telemetry type
and the value is the state.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourceTelemetry in L<Paws::ObservabilityAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

