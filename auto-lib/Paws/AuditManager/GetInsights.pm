
package Paws::AuditManager::GetInsights;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInsights');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/insights');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::GetInsightsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::GetInsights - Arguments for method GetInsights on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInsights on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method GetInsights.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInsights.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $GetInsightsResponse = $auditmanager->GetInsights();

    # Results:
    my $Insights = $GetInsightsResponse->Insights;

    # Returns a L<Paws::AuditManager::GetInsightsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/GetInsights>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInsights in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

