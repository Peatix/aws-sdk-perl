
package Paws::Macie2::ListManagedDataIdentifiers;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListManagedDataIdentifiers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/managed-data-identifiers/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::ListManagedDataIdentifiersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::ListManagedDataIdentifiers - Arguments for method ListManagedDataIdentifiers on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListManagedDataIdentifiers on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method ListManagedDataIdentifiers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListManagedDataIdentifiers.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $ListManagedDataIdentifiersResponse =
      $macie2->ListManagedDataIdentifiers(
      NextToken => 'My__string',    # OPTIONAL
      );

    # Results:
    my $Items     = $ListManagedDataIdentifiersResponse->Items;
    my $NextToken = $ListManagedDataIdentifiersResponse->NextToken;

    # Returns a L<Paws::Macie2::ListManagedDataIdentifiersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/ListManagedDataIdentifiers>

=head1 ATTRIBUTES


=head2 NextToken => Str

The nextToken string that specifies which page of results to return in
a paginated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListManagedDataIdentifiers in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

