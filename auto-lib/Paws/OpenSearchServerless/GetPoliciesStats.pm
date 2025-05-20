
package Paws::OpenSearchServerless::GetPoliciesStats;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPoliciesStats');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearchServerless::GetPoliciesStatsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::GetPoliciesStats - Arguments for method GetPoliciesStats on L<Paws::OpenSearchServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPoliciesStats on the
L<OpenSearch Service Serverless|Paws::OpenSearchServerless> service. Use the attributes of this class
as arguments to method GetPoliciesStats.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPoliciesStats.

=head1 SYNOPSIS

    my $aoss = Paws->service('OpenSearchServerless');
    my $GetPoliciesStatsResponse = $aoss->GetPoliciesStats();

    # Results:
    my $AccessPolicyStats    = $GetPoliciesStatsResponse->AccessPolicyStats;
    my $LifecyclePolicyStats = $GetPoliciesStatsResponse->LifecyclePolicyStats;
    my $SecurityConfigStats  = $GetPoliciesStatsResponse->SecurityConfigStats;
    my $SecurityPolicyStats  = $GetPoliciesStatsResponse->SecurityPolicyStats;
    my $TotalPolicyCount     = $GetPoliciesStatsResponse->TotalPolicyCount;

    # Returns a L<Paws::OpenSearchServerless::GetPoliciesStatsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aoss/GetPoliciesStats>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPoliciesStats in L<Paws::OpenSearchServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

