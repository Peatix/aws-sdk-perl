
package Paws::MigrationHubStrategy::ListAnalyzableServers;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Sort => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sort');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAnalyzableServers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-analyzable-servers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubStrategy::ListAnalyzableServersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::ListAnalyzableServers - Arguments for method ListAnalyzableServers on L<Paws::MigrationHubStrategy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAnalyzableServers on the
L<Migration Hub Strategy Recommendations|Paws::MigrationHubStrategy> service. Use the attributes of this class
as arguments to method ListAnalyzableServers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAnalyzableServers.

=head1 SYNOPSIS

    my $migrationhub-strategy = Paws->service('MigrationHubStrategy');
    my $ListAnalyzableServersResponse =
      $migrationhub -strategy->ListAnalyzableServers(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      Sort       => 'ASC',            # OPTIONAL
      );

    # Results:
    my $AnalyzableServers = $ListAnalyzableServersResponse->AnalyzableServers;
    my $NextToken         = $ListAnalyzableServersResponse->NextToken;

# Returns a L<Paws::MigrationHubStrategy::ListAnalyzableServersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-strategy/ListAnalyzableServers>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to include in the response. The maximum
value is 100.



=head2 NextToken => Str

The token from a previous call that you use to retrieve the next set of
results. For example, if a previous call to this action returned 100
items, but you set maxResults to 10. You'll receive a set of 10 results
along with a token. You then use the returned token to retrieve the
next set of 10.



=head2 Sort => Str

Specifies whether to sort by ascending (ASC) or descending (DESC)
order.

Valid values are: C<"ASC">, C<"DESC">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAnalyzableServers in L<Paws::MigrationHubStrategy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

