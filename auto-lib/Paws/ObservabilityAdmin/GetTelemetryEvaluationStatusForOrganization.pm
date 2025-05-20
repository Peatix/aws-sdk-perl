
package Paws::ObservabilityAdmin::GetTelemetryEvaluationStatusForOrganization;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTelemetryEvaluationStatusForOrganization');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetTelemetryEvaluationStatusForOrganization');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ObservabilityAdmin::GetTelemetryEvaluationStatusForOrganizationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ObservabilityAdmin::GetTelemetryEvaluationStatusForOrganization - Arguments for method GetTelemetryEvaluationStatusForOrganization on L<Paws::ObservabilityAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTelemetryEvaluationStatusForOrganization on the
L<CloudWatch Observability Admin Service|Paws::ObservabilityAdmin> service. Use the attributes of this class
as arguments to method GetTelemetryEvaluationStatusForOrganization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTelemetryEvaluationStatusForOrganization.

=head1 SYNOPSIS

    my $observabilityadmin = Paws->service('ObservabilityAdmin');
    my $GetTelemetryEvaluationStatusForOrganizationOutput =
      $observabilityadmin->GetTelemetryEvaluationStatusForOrganization();

    # Results:
    my $FailureReason =
      $GetTelemetryEvaluationStatusForOrganizationOutput->FailureReason;
    my $Status = $GetTelemetryEvaluationStatusForOrganizationOutput->Status;

# Returns a L<Paws::ObservabilityAdmin::GetTelemetryEvaluationStatusForOrganizationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/observabilityadmin/GetTelemetryEvaluationStatusForOrganization>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTelemetryEvaluationStatusForOrganization in L<Paws::ObservabilityAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

