
package Paws::Macie2::BatchGetCustomDataIdentifiers;
  use Moose;
  has Ids => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ids');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetCustomDataIdentifiers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/custom-data-identifiers/get');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::BatchGetCustomDataIdentifiersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::BatchGetCustomDataIdentifiers - Arguments for method BatchGetCustomDataIdentifiers on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetCustomDataIdentifiers on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method BatchGetCustomDataIdentifiers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetCustomDataIdentifiers.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $BatchGetCustomDataIdentifiersResponse =
      $macie2->BatchGetCustomDataIdentifiers(
      Ids => [ 'My__string', ... ],    # OPTIONAL
      );

    # Results:
    my $CustomDataIdentifiers =
      $BatchGetCustomDataIdentifiersResponse->CustomDataIdentifiers;
    my $NotFoundIdentifierIds =
      $BatchGetCustomDataIdentifiersResponse->NotFoundIdentifierIds;

    # Returns a L<Paws::Macie2::BatchGetCustomDataIdentifiersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/BatchGetCustomDataIdentifiers>

=head1 ATTRIBUTES


=head2 Ids => ArrayRef[Str|Undef]

An array of custom data identifier IDs, one for each custom data
identifier to retrieve information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetCustomDataIdentifiers in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

