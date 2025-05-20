
package Paws::Inspector2::ListFindingAggregationsResponse;
  use Moose;
  has AggregationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'aggregationType', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Responses => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::AggregationResponse]', traits => ['NameInRequest'], request_name => 'responses');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::ListFindingAggregationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AggregationType => Str

The type of aggregation to perform.

Valid values are: C<"FINDING_TYPE">, C<"PACKAGE">, C<"TITLE">, C<"REPOSITORY">, C<"AMI">, C<"AWS_EC2_INSTANCE">, C<"AWS_ECR_CONTAINER">, C<"IMAGE_LAYER">, C<"ACCOUNT">, C<"AWS_LAMBDA_FUNCTION">, C<"LAMBDA_LAYER">
=head2 NextToken => Str

A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. For subsequent calls, use the C<NextToken> value
returned from the previous request to continue listing results after
the first page.


=head2 Responses => ArrayRef[L<Paws::Inspector2::AggregationResponse>]

Objects that contain the results of an aggregation operation.


=head2 _request_id => Str


=cut

