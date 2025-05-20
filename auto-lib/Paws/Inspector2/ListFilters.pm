
package Paws::Inspector2::ListFilters;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'action');
  has Arns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'arns');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFilters');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/filters/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::ListFiltersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::ListFilters - Arguments for method ListFilters on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFilters on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method ListFilters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFilters.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $ListFiltersResponse = $inspector2->ListFilters(
      Action => 'NONE',    # OPTIONAL
      Arns   => [
        'MyFilterArn', ...    # min: 1, max: 128
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Filters   = $ListFiltersResponse->Filters;
    my $NextToken = $ListFiltersResponse->NextToken;

    # Returns a L<Paws::Inspector2::ListFiltersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/ListFilters>

=head1 ATTRIBUTES


=head2 Action => Str

The action the filter applies to matched findings.

Valid values are: C<"NONE">, C<"SUPPRESS">

=head2 Arns => ArrayRef[Str|Undef]

The Amazon resource number (ARN) of the filter.



=head2 MaxResults => Int

The maximum number of results the response can return. If your request
would return more than the maximum the response will return a
C<nextToken> value, use this value when you call the action again to
get the remaining results.



=head2 NextToken => Str

A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. If your response returns more than the C<maxResults>
maximum value it will also return a C<nextToken> value. For subsequent
calls, use the C<nextToken> value returned from the previous request to
continue listing results after the first page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFilters in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

