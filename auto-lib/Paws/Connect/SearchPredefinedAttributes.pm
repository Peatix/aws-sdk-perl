
package Paws::Connect::SearchPredefinedAttributes;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SearchCriteria => (is => 'ro', isa => 'Paws::Connect::PredefinedAttributeSearchCriteria');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchPredefinedAttributes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/search-predefined-attributes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::SearchPredefinedAttributesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchPredefinedAttributes - Arguments for method SearchPredefinedAttributes on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchPredefinedAttributes on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method SearchPredefinedAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchPredefinedAttributes.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $SearchPredefinedAttributesResponse =
      $connect->SearchPredefinedAttributes(
      InstanceId     => 'MyInstanceId',
      MaxResults     => 1,                    # OPTIONAL
      NextToken      => 'MyNextToken2500',    # OPTIONAL
      SearchCriteria => {
        AndConditions => [ <PredefinedAttributeSearchCriteria>, ... ]
        ,                                     # OPTIONAL
        OrConditions => [ <PredefinedAttributeSearchCriteria>, ... ], # OPTIONAL
        StringCondition => {
          ComparisonType =>
            'STARTS_WITH',    # values: STARTS_WITH, CONTAINS, EXACT; OPTIONAL
          FieldName => 'MyString',    # OPTIONAL
          Value     => 'MyString',    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $ApproximateTotalCount =
      $SearchPredefinedAttributesResponse->ApproximateTotalCount;
    my $NextToken = $SearchPredefinedAttributesResponse->NextToken;
    my $PredefinedAttributes =
      $SearchPredefinedAttributesResponse->PredefinedAttributes;

    # Returns a L<Paws::Connect::SearchPredefinedAttributesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/SearchPredefinedAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID in the Amazon Resource Name (ARN) of the instance.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 SearchCriteria => L<Paws::Connect::PredefinedAttributeSearchCriteria>

The search criteria to be used to return predefined attributes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchPredefinedAttributes in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

