
package Paws::ConnectCases::ListFieldOptions;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainId', required => 1);
  has FieldId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'fieldId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'values');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFieldOptions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{domainId}/fields/{fieldId}/options-list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCases::ListFieldOptionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::ListFieldOptions - Arguments for method ListFieldOptions on L<Paws::ConnectCases>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFieldOptions on the
L<Amazon Connect Cases|Paws::ConnectCases> service. Use the attributes of this class
as arguments to method ListFieldOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFieldOptions.

=head1 SYNOPSIS

    my $cases = Paws->service('ConnectCases');
    my $ListFieldOptionsResponse = $cases->ListFieldOptions(
      DomainId   => 'MyDomainId',
      FieldId    => 'MyFieldId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      Values     => [
        'MyValue', ...                # max: 100
      ],    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListFieldOptionsResponse->NextToken;
    my $Options   = $ListFieldOptionsResponse->Options;

    # Returns a L<Paws::ConnectCases::ListFieldOptionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cases/ListFieldOptions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainId => Str

The unique identifier of the Cases domain.



=head2 B<REQUIRED> FieldId => Str

The unique identifier of a field.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 Values => ArrayRef[Str|Undef]

A list of C<FieldOption> values to filter on for C<ListFieldOptions>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFieldOptions in L<Paws::ConnectCases>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

