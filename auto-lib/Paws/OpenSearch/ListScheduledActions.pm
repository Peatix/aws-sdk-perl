
package Paws::OpenSearch::ListScheduledActions;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListScheduledActions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/domain/{DomainName}/scheduledActions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::ListScheduledActionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::ListScheduledActions - Arguments for method ListScheduledActions on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListScheduledActions on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method ListScheduledActions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListScheduledActions.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $ListScheduledActionsResponse = $es->ListScheduledActions(
      DomainName => 'MyDomainName',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken        = $ListScheduledActionsResponse->NextToken;
    my $ScheduledActions = $ListScheduledActionsResponse->ScheduledActions;

    # Returns a L<Paws::OpenSearch::ListScheduledActionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The name of the domain.



=head2 MaxResults => Int

An optional parameter that specifies the maximum number of results to
return. You can use C<nextToken> to get the next page of results.



=head2 NextToken => Str

If your initial C<ListScheduledActions> operation returns a
C<nextToken>, you can include the returned C<nextToken> in subsequent
C<ListScheduledActions> operations, which returns results in the next
page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListScheduledActions in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

