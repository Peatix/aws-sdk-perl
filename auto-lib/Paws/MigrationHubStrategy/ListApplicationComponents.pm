
package Paws::MigrationHubStrategy::ListApplicationComponents;
  use Moose;
  has ApplicationComponentCriteria => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationComponentCriteria');
  has FilterValue => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterValue');
  has GroupIdFilter => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubStrategy::Group]', traits => ['NameInRequest'], request_name => 'groupIdFilter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Sort => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sort');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApplicationComponents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-applicationcomponents');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubStrategy::ListApplicationComponentsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::ListApplicationComponents - Arguments for method ListApplicationComponents on L<Paws::MigrationHubStrategy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApplicationComponents on the
L<Migration Hub Strategy Recommendations|Paws::MigrationHubStrategy> service. Use the attributes of this class
as arguments to method ListApplicationComponents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApplicationComponents.

=head1 SYNOPSIS

    my $migrationhub-strategy = Paws->service('MigrationHubStrategy');
    my $ListApplicationComponentsResponse =
      $migrationhub -strategy->ListApplicationComponents(
      ApplicationComponentCriteria => 'NOT_DEFINED',              # OPTIONAL
      FilterValue                  =>
        'MyListApplicationComponentsRequestFilterValueString',    # OPTIONAL
      GroupIdFilter => [
        {
          Name =>
            'ExternalId',    # values: ExternalId, ExternalSourceType; OPTIONAL
          Value => 'MyString',    # max: 1024; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      Sort       => 'ASC',            # OPTIONAL
      );

    # Results:
    my $ApplicationComponentInfos =
      $ListApplicationComponentsResponse->ApplicationComponentInfos;
    my $NextToken = $ListApplicationComponentsResponse->NextToken;

# Returns a L<Paws::MigrationHubStrategy::ListApplicationComponentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-strategy/ListApplicationComponents>

=head1 ATTRIBUTES


=head2 ApplicationComponentCriteria => Str

Criteria for filtering the list of application components.

Valid values are: C<"NOT_DEFINED">, C<"APP_NAME">, C<"SERVER_ID">, C<"APP_TYPE">, C<"STRATEGY">, C<"DESTINATION">, C<"ANALYSIS_STATUS">, C<"ERROR_CATEGORY">

=head2 FilterValue => Str

Specify the value based on the application component criteria type. For
example, if C<applicationComponentCriteria> is set to C<SERVER_ID> and
C<filterValue> is set to C<server1>, then ListApplicationComponents
returns all the application components running on server1.



=head2 GroupIdFilter => ArrayRef[L<Paws::MigrationHubStrategy::Group>]

The group ID specified in to filter on.



=head2 MaxResults => Int

The maximum number of items to include in the response. The maximum
value is 100.



=head2 NextToken => Str

The token from a previous call that you use to retrieve the next set of
results. For example, if a previous call to this action returned 100
items, but you set C<maxResults> to 10. You'll receive a set of 10
results along with a token. You then use the returned token to retrieve
the next set of 10.



=head2 Sort => Str

Specifies whether to sort by ascending (C<ASC>) or descending (C<DESC>)
order.

Valid values are: C<"ASC">, C<"DESC">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListApplicationComponents in L<Paws::MigrationHubStrategy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

