
package Paws::TrustedAdvisor::UpdateOrganizationRecommendationLifecycle;
  use Moose;
  has LifecycleStage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lifecycleStage', required => 1);
  has OrganizationRecommendationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'organizationRecommendationIdentifier', required => 1);
  has UpdateReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateReason');
  has UpdateReasonCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateReasonCode');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateOrganizationRecommendationLifecycle');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/organization-recommendations/{organizationRecommendationIdentifier}/lifecycle');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TrustedAdvisor::UpdateOrganizationRecommendationLifecycle - Arguments for method UpdateOrganizationRecommendationLifecycle on L<Paws::TrustedAdvisor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateOrganizationRecommendationLifecycle on the
L<TrustedAdvisor Public API|Paws::TrustedAdvisor> service. Use the attributes of this class
as arguments to method UpdateOrganizationRecommendationLifecycle.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateOrganizationRecommendationLifecycle.

=head1 SYNOPSIS

    my $trustedadvisor = Paws->service('TrustedAdvisor');
    $trustedadvisor->UpdateOrganizationRecommendationLifecycle(
      LifecycleStage                       => 'pending_response',
      OrganizationRecommendationIdentifier =>
        'MyOrganizationRecommendationIdentifier',
      UpdateReason     => 'MyRecommendationUpdateReason',    # OPTIONAL
      UpdateReasonCode => 'non_critical_account',            # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/trustedadvisor/UpdateOrganizationRecommendationLifecycle>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LifecycleStage => Str

The new lifecycle stage

Valid values are: C<"pending_response">, C<"in_progress">, C<"dismissed">, C<"resolved">

=head2 B<REQUIRED> OrganizationRecommendationIdentifier => Str

The Recommendation identifier for AWS Trusted Advisor Priority
recommendations



=head2 UpdateReason => Str

Reason for the lifecycle stage change



=head2 UpdateReasonCode => Str

Reason code for the lifecycle state change

Valid values are: C<"non_critical_account">, C<"temporary_account">, C<"valid_business_case">, C<"other_methods_available">, C<"low_priority">, C<"not_applicable">, C<"other">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateOrganizationRecommendationLifecycle in L<Paws::TrustedAdvisor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

