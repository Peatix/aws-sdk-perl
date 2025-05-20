
package Paws::DataZone::ListSubscriptionTargets;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentIdentifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortBy');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortOrder');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSubscriptionTargets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/subscription-targets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListSubscriptionTargetsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListSubscriptionTargets - Arguments for method ListSubscriptionTargets on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSubscriptionTargets on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListSubscriptionTargets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSubscriptionTargets.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListSubscriptionTargetsOutput = $datazone->ListSubscriptionTargets(
      DomainIdentifier      => 'MyDomainId',
      EnvironmentIdentifier => 'MyEnvironmentId',
      MaxResults            => 1,                      # OPTIONAL
      NextToken             => 'MyPaginationToken',    # OPTIONAL
      SortBy                => 'CREATED_AT',           # OPTIONAL
      SortOrder             => 'ASCENDING',            # OPTIONAL
    );

    # Results:
    my $Items     = $ListSubscriptionTargetsOutput->Items;
    my $NextToken = $ListSubscriptionTargetsOutput->NextToken;

    # Returns a L<Paws::DataZone::ListSubscriptionTargetsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListSubscriptionTargets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain where you want to list
subscription targets.



=head2 B<REQUIRED> EnvironmentIdentifier => Str

The identifier of the environment where you want to list subscription
targets.



=head2 MaxResults => Int

The maximum number of subscription targets to return in a single call
to C<ListSubscriptionTargets>. When the number of subscription targets
to be listed is greater than the value of C<MaxResults>, the response
contains a C<NextToken> value that you can use in a subsequent call to
C<ListSubscriptionTargets> to list the next set of subscription
targets.



=head2 NextToken => Str

When the number of subscription targets is greater than the default
value for the C<MaxResults> parameter, or if you explicitly specify a
value for C<MaxResults> that is less than the number of subscription
targets, the response includes a pagination token named C<NextToken>.
You can specify this C<NextToken> value in a subsequent call to
C<ListSubscriptionTargets> to list the next set of subscription
targets.



=head2 SortBy => Str

Specifies the way in which the results of this action are to be sorted.

Valid values are: C<"CREATED_AT">, C<"UPDATED_AT">

=head2 SortOrder => Str

Specifies the sort order for the results of this action.

Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSubscriptionTargets in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

