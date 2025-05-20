
package Paws::TrustedAdvisor::GetRecommendation;
  use Moose;
  has RecommendationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'recommendationIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRecommendation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/recommendations/{recommendationIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TrustedAdvisor::GetRecommendationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TrustedAdvisor::GetRecommendation - Arguments for method GetRecommendation on L<Paws::TrustedAdvisor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRecommendation on the
L<TrustedAdvisor Public API|Paws::TrustedAdvisor> service. Use the attributes of this class
as arguments to method GetRecommendation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRecommendation.

=head1 SYNOPSIS

    my $trustedadvisor = Paws->service('TrustedAdvisor');
    my $GetRecommendationResponse = $trustedadvisor->GetRecommendation(
      RecommendationIdentifier => 'MyAccountRecommendationIdentifier',

    );

    # Results:
    my $Recommendation = $GetRecommendationResponse->Recommendation;

    # Returns a L<Paws::TrustedAdvisor::GetRecommendationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/trustedadvisor/GetRecommendation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RecommendationIdentifier => Str

The Recommendation identifier




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRecommendation in L<Paws::TrustedAdvisor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

