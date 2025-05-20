
package Paws::MigrationHubStrategy::GetServerDetails;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ServerId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'serverId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetServerDetails');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/get-server-details/{serverId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubStrategy::GetServerDetailsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::GetServerDetails - Arguments for method GetServerDetails on L<Paws::MigrationHubStrategy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetServerDetails on the
L<Migration Hub Strategy Recommendations|Paws::MigrationHubStrategy> service. Use the attributes of this class
as arguments to method GetServerDetails.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetServerDetails.

=head1 SYNOPSIS

    my $migrationhub-strategy = Paws->service('MigrationHubStrategy');
    my $GetServerDetailsResponse = $migrationhub -strategy->GetServerDetails(
      ServerId   => 'MyServerId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $AssociatedApplications =
      $GetServerDetailsResponse->AssociatedApplications;
    my $NextToken    = $GetServerDetailsResponse->NextToken;
    my $ServerDetail = $GetServerDetailsResponse->ServerDetail;

    # Returns a L<Paws::MigrationHubStrategy::GetServerDetailsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-strategy/GetServerDetails>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to include in the response. The maximum
value is 100.



=head2 NextToken => Str

The token from a previous call that you use to retrieve the next set of
results. For example, if a previous call to this action returned 100
items, but you set C<maxResults> to 10. You'll receive a set of 10
results along with a token. You then use the returned token to retrieve
the next set of 10.



=head2 B<REQUIRED> ServerId => Str

The ID of the server.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetServerDetails in L<Paws::MigrationHubStrategy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

