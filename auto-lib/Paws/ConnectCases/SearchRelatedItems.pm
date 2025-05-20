
package Paws::ConnectCases::SearchRelatedItems;
  use Moose;
  has CaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'caseId', required => 1);
  has DomainId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainId', required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::RelatedItemTypeFilter]', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchRelatedItems');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{domainId}/cases/{caseId}/related-items-search');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCases::SearchRelatedItemsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::SearchRelatedItems - Arguments for method SearchRelatedItems on L<Paws::ConnectCases>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchRelatedItems on the
L<Amazon Connect Cases|Paws::ConnectCases> service. Use the attributes of this class
as arguments to method SearchRelatedItems.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchRelatedItems.

=head1 SYNOPSIS

    my $cases = Paws->service('ConnectCases');
    my $SearchRelatedItemsResponse = $cases->SearchRelatedItems(
      CaseId   => 'MyCaseId',
      DomainId => 'MyDomainId',
      Filters  => [
        {
          Comment => {

          },    # OPTIONAL
          Contact => {
            Channel => [
              'MyChannel', ...    # min: 1, max: 100
            ],    # max: 3; OPTIONAL
            ContactArn => 'MyContactArn',    # min: 1, max: 500; OPTIONAL
          },    # OPTIONAL
          File => {
            FileArn => 'MyFileArn',    # min: 1, max: 500; OPTIONAL
          },    # OPTIONAL
          Sla => {
            Name   => 'MySlaName',    # min: 1, max: 500; OPTIONAL
            Status => 'Active', # values: Active, Overdue, Met, NotMet; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken    = $SearchRelatedItemsResponse->NextToken;
    my $RelatedItems = $SearchRelatedItemsResponse->RelatedItems;

    # Returns a L<Paws::ConnectCases::SearchRelatedItemsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cases/SearchRelatedItems>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaseId => Str

A unique identifier of the case.



=head2 B<REQUIRED> DomainId => Str

The unique identifier of the Cases domain.



=head2 Filters => ArrayRef[L<Paws::ConnectCases::RelatedItemTypeFilter>]

The list of types of related items and their parameters to use for
filtering.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchRelatedItems in L<Paws::ConnectCases>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

