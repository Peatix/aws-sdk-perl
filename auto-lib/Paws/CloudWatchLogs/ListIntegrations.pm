
package Paws::CloudWatchLogs::ListIntegrations;
  use Moose;
  has IntegrationNamePrefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'integrationNamePrefix' );
  has IntegrationStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'integrationStatus' );
  has IntegrationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'integrationType' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIntegrations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::ListIntegrationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::ListIntegrations - Arguments for method ListIntegrations on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListIntegrations on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method ListIntegrations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListIntegrations.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $ListIntegrationsResponse = $logs->ListIntegrations(
      IntegrationNamePrefix => 'MyIntegrationNamePrefix',    # OPTIONAL
      IntegrationStatus     => 'PROVISIONING',               # OPTIONAL
      IntegrationType       => 'OPENSEARCH',                 # OPTIONAL
    );

    # Results:
    my $IntegrationSummaries = $ListIntegrationsResponse->IntegrationSummaries;

    # Returns a L<Paws::CloudWatchLogs::ListIntegrationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/ListIntegrations>

=head1 ATTRIBUTES


=head2 IntegrationNamePrefix => Str

To limit the results to integrations that start with a certain name
prefix, specify that name prefix here.



=head2 IntegrationStatus => Str

To limit the results to integrations with a certain status, specify
that status here.

Valid values are: C<"PROVISIONING">, C<"ACTIVE">, C<"FAILED">

=head2 IntegrationType => Str

To limit the results to integrations of a certain type, specify that
type here.

Valid values are: C<"OPENSEARCH">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListIntegrations in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

