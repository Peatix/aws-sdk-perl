
package Paws::ComputeOptimizer::GetECSServiceRecommendations;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::ECSServiceRecommendationFilter]', traits => ['NameInRequest'], request_name => 'filters' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ServiceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'serviceArns' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetECSServiceRecommendations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComputeOptimizer::GetECSServiceRecommendationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetECSServiceRecommendations - Arguments for method GetECSServiceRecommendations on L<Paws::ComputeOptimizer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetECSServiceRecommendations on the
L<AWS Compute Optimizer|Paws::ComputeOptimizer> service. Use the attributes of this class
as arguments to method GetECSServiceRecommendations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetECSServiceRecommendations.

=head1 SYNOPSIS

    my $compute-optimizer = Paws->service('ComputeOptimizer');
    my $GetECSServiceRecommendationsResponse =
      $compute -optimizer->GetECSServiceRecommendations(
      AccountIds => [ 'MyAccountId', ... ],    # OPTIONAL
      Filters    => [
        {
          Name   => 'Finding',    # values: Finding, FindingReasonCode; OPTIONAL
          Values => [ 'MyFilterValue', ... ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults  => 1,                          # OPTIONAL
      NextToken   => 'MyNextToken',              # OPTIONAL
      ServiceArns => [ 'MyServiceArn', ... ],    # OPTIONAL
      );

    # Results:
    my $EcsServiceRecommendations =
      $GetECSServiceRecommendationsResponse->EcsServiceRecommendations;
    my $Errors    = $GetECSServiceRecommendationsResponse->Errors;
    my $NextToken = $GetECSServiceRecommendationsResponse->NextToken;

# Returns a L<Paws::ComputeOptimizer::GetECSServiceRecommendationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/compute-optimizer/GetECSServiceRecommendations>

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

Return the Amazon ECS service recommendations to the specified Amazon
Web Services account IDs.

If your account is the management account or the delegated
administrator of an organization, use this parameter to return the
Amazon ECS service recommendations to specific member accounts.

You can only specify one account ID per request.



=head2 Filters => ArrayRef[L<Paws::ComputeOptimizer::ECSServiceRecommendationFilter>]

An array of objects to specify a filter that returns a more specific
list of Amazon ECS service recommendations.



=head2 MaxResults => Int

The maximum number of Amazon ECS service recommendations to return with
a single request.

To retrieve the remaining results, make another request with the
returned C<nextToken> value.



=head2 NextToken => Str

The token to advance to the next page of Amazon ECS service
recommendations.



=head2 ServiceArns => ArrayRef[Str|Undef]

The ARN that identifies the Amazon ECS service.

The following is the format of the ARN:

C<arn:aws:ecs:region:aws_account_id:service/cluster-name/service-name>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetECSServiceRecommendations in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

