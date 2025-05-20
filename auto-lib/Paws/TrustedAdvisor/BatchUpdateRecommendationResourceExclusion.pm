
package Paws::TrustedAdvisor::BatchUpdateRecommendationResourceExclusion;
  use Moose;
  has RecommendationResourceExclusions => (is => 'ro', isa => 'ArrayRef[Paws::TrustedAdvisor::RecommendationResourceExclusion]', traits => ['NameInRequest'], request_name => 'recommendationResourceExclusions', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchUpdateRecommendationResourceExclusion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/batch-update-recommendation-resource-exclusion');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TrustedAdvisor::BatchUpdateRecommendationResourceExclusionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TrustedAdvisor::BatchUpdateRecommendationResourceExclusion - Arguments for method BatchUpdateRecommendationResourceExclusion on L<Paws::TrustedAdvisor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchUpdateRecommendationResourceExclusion on the
L<TrustedAdvisor Public API|Paws::TrustedAdvisor> service. Use the attributes of this class
as arguments to method BatchUpdateRecommendationResourceExclusion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchUpdateRecommendationResourceExclusion.

=head1 SYNOPSIS

    my $trustedadvisor = Paws->service('TrustedAdvisor');
    my $BatchUpdateRecommendationResourceExclusionResponse =
      $trustedadvisor->BatchUpdateRecommendationResourceExclusion(
      RecommendationResourceExclusions => [
        {
          Arn        => 'MyRecommendationResourceArn',    # min: 20, max: 2048
          IsExcluded => 1,

        },
        ...
      ],

      );

    # Results:
    my $BatchUpdateRecommendationResourceExclusionErrors =
      $BatchUpdateRecommendationResourceExclusionResponse
      ->BatchUpdateRecommendationResourceExclusionErrors;

# Returns a L<Paws::TrustedAdvisor::BatchUpdateRecommendationResourceExclusionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/trustedadvisor/BatchUpdateRecommendationResourceExclusion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RecommendationResourceExclusions => ArrayRef[L<Paws::TrustedAdvisor::RecommendationResourceExclusion>]

A list of recommendation resource ARNs and exclusion status to update




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchUpdateRecommendationResourceExclusion in L<Paws::TrustedAdvisor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

