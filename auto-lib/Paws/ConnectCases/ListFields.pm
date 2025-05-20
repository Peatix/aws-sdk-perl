
package Paws::ConnectCases::ListFields;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFields');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{domainId}/fields-list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCases::ListFieldsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::ListFields - Arguments for method ListFields on L<Paws::ConnectCases>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFields on the
L<Amazon Connect Cases|Paws::ConnectCases> service. Use the attributes of this class
as arguments to method ListFields.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFields.

=head1 SYNOPSIS

    my $cases = Paws->service('ConnectCases');
    my $ListFieldsResponse = $cases->ListFields(
      DomainId   => 'MyDomainId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Fields    = $ListFieldsResponse->Fields;
    my $NextToken = $ListFieldsResponse->NextToken;

    # Returns a L<Paws::ConnectCases::ListFieldsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cases/ListFields>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainId => Str

The unique identifier of the Cases domain.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFields in L<Paws::ConnectCases>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

