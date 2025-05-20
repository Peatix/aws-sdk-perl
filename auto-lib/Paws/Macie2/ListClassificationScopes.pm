
package Paws::Macie2::ListClassificationScopes;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'name');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListClassificationScopes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/classification-scopes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::ListClassificationScopesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::ListClassificationScopes - Arguments for method ListClassificationScopes on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListClassificationScopes on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method ListClassificationScopes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListClassificationScopes.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $ListClassificationScopesResponse = $macie2->ListClassificationScopes(
      Name      => 'My__string',    # OPTIONAL
      NextToken => 'My__string',    # OPTIONAL
    );

    # Results:
    my $ClassificationScopes =
      $ListClassificationScopesResponse->ClassificationScopes;
    my $NextToken = $ListClassificationScopesResponse->NextToken;

    # Returns a L<Paws::Macie2::ListClassificationScopesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/ListClassificationScopes>

=head1 ATTRIBUTES


=head2 Name => Str

The name of the classification scope to retrieve the unique identifier
for.



=head2 NextToken => Str

The nextToken string that specifies which page of results to return in
a paginated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListClassificationScopes in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

