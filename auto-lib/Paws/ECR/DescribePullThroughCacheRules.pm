
package Paws::ECR::DescribePullThroughCacheRules;
  use Moose;
  has EcrRepositoryPrefixes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ecrRepositoryPrefixes' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePullThroughCacheRules');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::DescribePullThroughCacheRulesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::DescribePullThroughCacheRules - Arguments for method DescribePullThroughCacheRules on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePullThroughCacheRules on the
L<Amazon Elastic Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method DescribePullThroughCacheRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePullThroughCacheRules.

=head1 SYNOPSIS

    my $api.ecr = Paws->service('ECR');
    my $DescribePullThroughCacheRulesResponse =
      $api . ecr->DescribePullThroughCacheRules(
      EcrRepositoryPrefixes => [
        'MyPullThroughCacheRuleRepositoryPrefix', ...    # min: 2, max: 30
      ],    # OPTIONAL
      MaxResults => 1,                 # OPTIONAL
      NextToken  => 'MyNextToken',     # OPTIONAL
      RegistryId => 'MyRegistryId',    # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribePullThroughCacheRulesResponse->NextToken;
    my $PullThroughCacheRules =
      $DescribePullThroughCacheRulesResponse->PullThroughCacheRules;

    # Returns a L<Paws::ECR::DescribePullThroughCacheRulesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/DescribePullThroughCacheRules>

=head1 ATTRIBUTES


=head2 EcrRepositoryPrefixes => ArrayRef[Str|Undef]

The Amazon ECR repository prefixes associated with the pull through
cache rules to return. If no repository prefix value is specified, all
pull through cache rules are returned.



=head2 MaxResults => Int

The maximum number of pull through cache rules returned by
C<DescribePullThroughCacheRulesRequest> in paginated output. When this
parameter is used, C<DescribePullThroughCacheRulesRequest> only returns
C<maxResults> results in a single page along with a C<nextToken>
response element. The remaining results of the initial request can be
seen by sending another C<DescribePullThroughCacheRulesRequest> request
with the returned C<nextToken> value. This value can be between 1 and
1000. If this parameter is not used, then
C<DescribePullThroughCacheRulesRequest> returns up to 100 results and a
C<nextToken> value, if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<DescribePullThroughCacheRulesRequest> request where C<maxResults> was
used and the results exceeded the value of that parameter. Pagination
continues from the end of the previous results that returned the
C<nextToken> value. This value is null when there are no more results
to return.



=head2 RegistryId => Str

The Amazon Web Services account ID associated with the registry to
return the pull through cache rules for. If you do not specify a
registry, the default registry is assumed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePullThroughCacheRules in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

