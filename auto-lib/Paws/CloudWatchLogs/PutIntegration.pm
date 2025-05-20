
package Paws::CloudWatchLogs::PutIntegration;
  use Moose;
  has IntegrationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'integrationName' , required => 1);
  has IntegrationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'integrationType' , required => 1);
  has ResourceConfig => (is => 'ro', isa => 'Paws::CloudWatchLogs::ResourceConfig', traits => ['NameInRequest'], request_name => 'resourceConfig' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutIntegration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::PutIntegrationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutIntegration - Arguments for method PutIntegration on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutIntegration on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method PutIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutIntegration.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $PutIntegrationResponse = $logs->PutIntegration(
      IntegrationName => 'MyIntegrationName',
      IntegrationType => 'OPENSEARCH',
      ResourceConfig  => {
        OpenSearchResourceConfig => {
          DashboardViewerPrincipals => [ 'MyArn', ... ],
          DataSourceRoleArn         => 'MyArn',
          RetentionDays             => 1,                  # min: 1, max: 30
          ApplicationArn            => 'MyArn',
          KmsKeyArn                 => 'MyArn',
        },    # OPTIONAL
      },

    );

    # Results:
    my $IntegrationName   = $PutIntegrationResponse->IntegrationName;
    my $IntegrationStatus = $PutIntegrationResponse->IntegrationStatus;

    # Returns a L<Paws::CloudWatchLogs::PutIntegrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/PutIntegration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IntegrationName => Str

A name for the integration.



=head2 B<REQUIRED> IntegrationType => Str

The type of integration. Currently, the only supported type is
C<OPENSEARCH>.

Valid values are: C<"OPENSEARCH">

=head2 B<REQUIRED> ResourceConfig => L<Paws::CloudWatchLogs::ResourceConfig>

A structure that contains configuration information for the integration
that you are creating.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutIntegration in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

