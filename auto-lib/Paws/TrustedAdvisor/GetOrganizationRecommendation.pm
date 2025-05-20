
package Paws::TrustedAdvisor::GetOrganizationRecommendation;
  use Moose;
  has OrganizationRecommendationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'organizationRecommendationIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOrganizationRecommendation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/organization-recommendations/{organizationRecommendationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TrustedAdvisor::GetOrganizationRecommendationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TrustedAdvisor::GetOrganizationRecommendation - Arguments for method GetOrganizationRecommendation on L<Paws::TrustedAdvisor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetOrganizationRecommendation on the
L<TrustedAdvisor Public API|Paws::TrustedAdvisor> service. Use the attributes of this class
as arguments to method GetOrganizationRecommendation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetOrganizationRecommendation.

=head1 SYNOPSIS

    my $trustedadvisor = Paws->service('TrustedAdvisor');
    my $GetOrganizationRecommendationResponse =
      $trustedadvisor->GetOrganizationRecommendation(
      OrganizationRecommendationIdentifier =>
        'MyOrganizationRecommendationIdentifier',

      );

    # Results:
    my $OrganizationRecommendation =
      $GetOrganizationRecommendationResponse->OrganizationRecommendation;

# Returns a L<Paws::TrustedAdvisor::GetOrganizationRecommendationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/trustedadvisor/GetOrganizationRecommendation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OrganizationRecommendationIdentifier => Str

The Recommendation identifier




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetOrganizationRecommendation in L<Paws::TrustedAdvisor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

