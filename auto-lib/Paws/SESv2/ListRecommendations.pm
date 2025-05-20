
package Paws::SESv2::ListRecommendations;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::SESv2::ListRecommendationsFilter');
  has NextToken => (is => 'ro', isa => 'Str');
  has PageSize => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRecommendations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/vdm/recommendations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::ListRecommendationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::ListRecommendations - Arguments for method ListRecommendations on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRecommendations on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method ListRecommendations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRecommendations.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $ListRecommendationsResponse = $email->ListRecommendations(
      Filter => {
        'TYPE' => 'MyListRecommendationFilterValue'
        , # key: values: TYPE, IMPACT, STATUS, RESOURCE_ARN, value: min: 1, max: 512
      },    # OPTIONAL
      NextToken => 'MyNextToken',    # OPTIONAL
      PageSize  => 1,                # OPTIONAL
    );

    # Results:
    my $NextToken       = $ListRecommendationsResponse->NextToken;
    my $Recommendations = $ListRecommendationsResponse->Recommendations;

    # Returns a L<Paws::SESv2::ListRecommendationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/ListRecommendations>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::SESv2::ListRecommendationsFilter>

Filters applied when retrieving recommendations. Can eiter be an
individual filter, or combinations of C<STATUS> and C<IMPACT> or
C<STATUS> and C<TYPE>



=head2 NextToken => Str

A token returned from a previous call to C<ListRecommendations> to
indicate the position in the list of recommendations.



=head2 PageSize => Int

The number of results to show in a single call to
C<ListRecommendations>. If the number of results is larger than the
number you specified in this parameter, then the response includes a
C<NextToken> element, which you can use to obtain additional results.

The value you specify has to be at least 1, and can be no more than
100.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRecommendations in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

