
package Paws::DevOpsGuru::UpdateServiceIntegration;
  use Moose;
  has ServiceIntegration => (is => 'ro', isa => 'Paws::DevOpsGuru::UpdateServiceIntegrationConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServiceIntegration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/service-integrations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::UpdateServiceIntegrationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::UpdateServiceIntegration - Arguments for method UpdateServiceIntegration on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateServiceIntegration on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method UpdateServiceIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateServiceIntegration.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $UpdateServiceIntegrationResponse =
      $devops -guru->UpdateServiceIntegration(
      ServiceIntegration => {
        KMSServerSideEncryption => {
          KMSKeyId    => 'MyKMSKeyId',    # min: 1, max: 2048; OPTIONAL
          OptInStatus => 'ENABLED',       # values: ENABLED, DISABLED; OPTIONAL
          Type        => 'CUSTOMER_MANAGED_KEY'
          ,    # values: CUSTOMER_MANAGED_KEY, AWS_OWNED_KMS_KEY; OPTIONAL
        },    # OPTIONAL
        LogsAnomalyDetection => {
          OptInStatus => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
        },    # OPTIONAL
        OpsCenter => {
          OptInStatus => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
        },    # OPTIONAL
      },

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/UpdateServiceIntegration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceIntegration => L<Paws::DevOpsGuru::UpdateServiceIntegrationConfig>

An C<IntegratedServiceConfig> object used to specify the integrated
service you want to update, and whether you want to update it to
enabled or disabled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateServiceIntegration in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

