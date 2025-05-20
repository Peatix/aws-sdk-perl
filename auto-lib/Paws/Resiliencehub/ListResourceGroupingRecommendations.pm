
package Paws::Resiliencehub::ListResourceGroupingRecommendations;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'appArn');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceGroupingRecommendations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-resource-grouping-recommendations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::ListResourceGroupingRecommendationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListResourceGroupingRecommendations - Arguments for method ListResourceGroupingRecommendations on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourceGroupingRecommendations on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method ListResourceGroupingRecommendations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourceGroupingRecommendations.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $ListResourceGroupingRecommendationsResponse =
      $resiliencehub->ListResourceGroupingRecommendations(
      AppArn     => 'MyArn',          # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $GroupingRecommendations =
      $ListResourceGroupingRecommendationsResponse->GroupingRecommendations;
    my $NextToken = $ListResourceGroupingRecommendationsResponse->NextToken;

# Returns a L<Paws::Resiliencehub::ListResourceGroupingRecommendationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/ListResourceGroupingRecommendations>

=head1 ATTRIBUTES


=head2 AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.



=head2 MaxResults => Int

Maximum number of grouping recommendations to be displayed per
Resilience Hub application.



=head2 NextToken => Str

Null, or the token from a previous call to get the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourceGroupingRecommendations in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

