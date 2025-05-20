
package Paws::ConnectCases::SearchCases;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainId', required => 1);
  has Fields => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::FieldIdentifier]', traits => ['NameInRequest'], request_name => 'fields');
  has Filter => (is => 'ro', isa => 'Paws::ConnectCases::CaseFilter', traits => ['NameInRequest'], request_name => 'filter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SearchTerm => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'searchTerm');
  has Sorts => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::Sort]', traits => ['NameInRequest'], request_name => 'sorts');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchCases');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{domainId}/cases-search');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCases::SearchCasesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::SearchCases - Arguments for method SearchCases on L<Paws::ConnectCases>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchCases on the
L<Amazon Connect Cases|Paws::ConnectCases> service. Use the attributes of this class
as arguments to method SearchCases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchCases.

=head1 SYNOPSIS

    my $cases = Paws->service('ConnectCases');
    my $SearchCasesResponse = $cases->SearchCases(
      DomainId => 'MyDomainId',
      Fields   => [
        {
          Id => 'MyFieldId',    # min: 1, max: 500

        },
        ...
      ],    # OPTIONAL
      Filter => {
        AndAll => [ <CaseFilter>, ... ],    # max: 10; OPTIONAL
        Field  => {
          Contains => {
            Id    => 'MyFieldId',           # min: 1, max: 500
            Value => {
              BooleanValue => 1,            # OPTIONAL
              DoubleValue  => 1,            # OPTIONAL
              EmptyValue   => {

              },                            # OPTIONAL
              StringValue =>
                'MyFieldValueUnionStringValueString',    # max: 3000; OPTIONAL
              UserArnValue => 'MyString',                # OPTIONAL
            },

          },    # OPTIONAL
          EqualTo => {
            Id    => 'MyFieldId',    # min: 1, max: 500
            Value => {
              BooleanValue => 1,     # OPTIONAL
              DoubleValue  => 1,     # OPTIONAL
              EmptyValue   => {

              },                     # OPTIONAL
              StringValue =>
                'MyFieldValueUnionStringValueString',    # max: 3000; OPTIONAL
              UserArnValue => 'MyString',                # OPTIONAL
            },

          },    # OPTIONAL
          GreaterThan => {
            Id    => 'MyFieldId',    # min: 1, max: 500
            Value => {
              BooleanValue => 1,     # OPTIONAL
              DoubleValue  => 1,     # OPTIONAL
              EmptyValue   => {

              },                     # OPTIONAL
              StringValue =>
                'MyFieldValueUnionStringValueString',    # max: 3000; OPTIONAL
              UserArnValue => 'MyString',                # OPTIONAL
            },

          },    # OPTIONAL
          GreaterThanOrEqualTo => {
            Id    => 'MyFieldId',    # min: 1, max: 500
            Value => {
              BooleanValue => 1,     # OPTIONAL
              DoubleValue  => 1,     # OPTIONAL
              EmptyValue   => {

              },                     # OPTIONAL
              StringValue =>
                'MyFieldValueUnionStringValueString',    # max: 3000; OPTIONAL
              UserArnValue => 'MyString',                # OPTIONAL
            },

          },    # OPTIONAL
          LessThan => {
            Id    => 'MyFieldId',    # min: 1, max: 500
            Value => {
              BooleanValue => 1,     # OPTIONAL
              DoubleValue  => 1,     # OPTIONAL
              EmptyValue   => {

              },                     # OPTIONAL
              StringValue =>
                'MyFieldValueUnionStringValueString',    # max: 3000; OPTIONAL
              UserArnValue => 'MyString',                # OPTIONAL
            },

          },    # OPTIONAL
          LessThanOrEqualTo => {
            Id    => 'MyFieldId',    # min: 1, max: 500
            Value => {
              BooleanValue => 1,     # OPTIONAL
              DoubleValue  => 1,     # OPTIONAL
              EmptyValue   => {

              },                     # OPTIONAL
              StringValue =>
                'MyFieldValueUnionStringValueString',    # max: 3000; OPTIONAL
              UserArnValue => 'MyString',                # OPTIONAL
            },

          },    # OPTIONAL
        },    # OPTIONAL
        Not   => <CaseFilter>,
        OrAll => [ <CaseFilter>, ... ],    # max: 10; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                                         # OPTIONAL
      NextToken  => 'MyNextToken',                             # OPTIONAL
      SearchTerm => 'MySearchCasesRequestSearchTermString',    # OPTIONAL
      Sorts      => [
        {
          FieldId   => 'MyFieldId',    # min: 1, max: 500
          SortOrder => 'Asc',          # values: Asc, Desc

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Cases     = $SearchCasesResponse->Cases;
    my $NextToken = $SearchCasesResponse->NextToken;

    # Returns a L<Paws::ConnectCases::SearchCasesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cases/SearchCases>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainId => Str

The unique identifier of the Cases domain.



=head2 Fields => ArrayRef[L<Paws::ConnectCases::FieldIdentifier>]

The list of field identifiers to be returned as part of the response.



=head2 Filter => L<Paws::ConnectCases::CaseFilter>

A list of filter objects.



=head2 MaxResults => Int

The maximum number of cases to return. The current maximum supported
value is 25. This is also the default value when no other value is
provided.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 SearchTerm => Str

A word or phrase used to perform a quick search.



=head2 Sorts => ArrayRef[L<Paws::ConnectCases::Sort>]

A list of sorts where each sort specifies a field and their sort order
to be applied to the results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchCases in L<Paws::ConnectCases>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

