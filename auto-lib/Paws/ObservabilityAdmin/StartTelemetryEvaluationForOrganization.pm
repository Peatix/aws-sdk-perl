
package Paws::ObservabilityAdmin::StartTelemetryEvaluationForOrganization;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartTelemetryEvaluationForOrganization');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/StartTelemetryEvaluationForOrganization');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ObservabilityAdmin::StartTelemetryEvaluationForOrganization - Arguments for method StartTelemetryEvaluationForOrganization on L<Paws::ObservabilityAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTelemetryEvaluationForOrganization on the
L<CloudWatch Observability Admin Service|Paws::ObservabilityAdmin> service. Use the attributes of this class
as arguments to method StartTelemetryEvaluationForOrganization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartTelemetryEvaluationForOrganization.

=head1 SYNOPSIS

    my $observabilityadmin = Paws->service('ObservabilityAdmin');
    $observabilityadmin->StartTelemetryEvaluationForOrganization();

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/observabilityadmin/StartTelemetryEvaluationForOrganization>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTelemetryEvaluationForOrganization in L<Paws::ObservabilityAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

