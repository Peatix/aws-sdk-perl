
package Paws::ComputeOptimizer::GetRecommendationPreferences;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceType' , required => 1);
  has Scope => (is => 'ro', isa => 'Paws::ComputeOptimizer::Scope', traits => ['NameInRequest'], request_name => 'scope' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRecommendationPreferences');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComputeOptimizer::GetRecommendationPreferencesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::GetRecommendationPreferences - Arguments for method GetRecommendationPreferences on L<Paws::ComputeOptimizer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRecommendationPreferences on the
L<AWS Compute Optimizer|Paws::ComputeOptimizer> service. Use the attributes of this class
as arguments to method GetRecommendationPreferences.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRecommendationPreferences.

=head1 SYNOPSIS

    my $compute-optimizer = Paws->service('ComputeOptimizer');
    my $GetRecommendationPreferencesResponse =
      $compute -optimizer->GetRecommendationPreferences(
      ResourceType => 'Ec2Instance',
      MaxResults   => 1,                # OPTIONAL
      NextToken    => 'MyNextToken',    # OPTIONAL
      Scope        => {
        Name => 'Organization'
        ,    # values: Organization, AccountId, ResourceArn; OPTIONAL
        Value => 'MyScopeValue',    # OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $NextToken = $GetRecommendationPreferencesResponse->NextToken;
    my $RecommendationPreferencesDetails =
      $GetRecommendationPreferencesResponse->RecommendationPreferencesDetails;

# Returns a L<Paws::ComputeOptimizer::GetRecommendationPreferencesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/compute-optimizer/GetRecommendationPreferences>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of recommendation preferences to return with a
single request.

To retrieve the remaining results, make another request with the
returned C<nextToken> value.



=head2 NextToken => Str

The token to advance to the next page of recommendation preferences.



=head2 B<REQUIRED> ResourceType => Str

The target resource type of the recommendation preference for which to
return preferences.

The C<Ec2Instance> option encompasses standalone instances and
instances that are part of Auto Scaling groups. The C<AutoScalingGroup>
option encompasses only instances that are part of an Auto Scaling
group.

Valid values are: C<"Ec2Instance">, C<"AutoScalingGroup">, C<"EbsVolume">, C<"LambdaFunction">, C<"NotApplicable">, C<"EcsService">, C<"License">, C<"RdsDBInstance">, C<"Idle">

=head2 Scope => L<Paws::ComputeOptimizer::Scope>

An object that describes the scope of the recommendation preference to
return.

You can return recommendation preferences that are created at the
organization level (for management accounts of an organization only),
account level, and resource level. For more information, see Activating
enhanced infrastructure metrics
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html)
in the I<Compute Optimizer User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRecommendationPreferences in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

