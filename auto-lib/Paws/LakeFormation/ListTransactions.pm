
package Paws::LakeFormation::ListTransactions;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StatusFilter => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTransactions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListTransactions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::ListTransactionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::ListTransactions - Arguments for method ListTransactions on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTransactions on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method ListTransactions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTransactions.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $ListTransactionsResponse = $lakeformation->ListTransactions(
      CatalogId    => 'MyCatalogIdString',    # OPTIONAL
      MaxResults   => 1,                      # OPTIONAL
      NextToken    => 'MyTokenString',        # OPTIONAL
      StatusFilter => 'ALL',                  # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListTransactionsResponse->NextToken;
    my $Transactions = $ListTransactionsResponse->Transactions;

    # Returns a L<Paws::LakeFormation::ListTransactionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/ListTransactions>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The catalog for which to list transactions. Defaults to the account ID
of the caller.



=head2 MaxResults => Int

The maximum number of transactions to return in a single call.



=head2 NextToken => Str

A continuation token if this is not the first call to retrieve
transactions.



=head2 StatusFilter => Str

A filter indicating the status of transactions to return. Options are
ALL | COMPLETED | COMMITTED | ABORTED | ACTIVE. The default is C<ALL>.

Valid values are: C<"ALL">, C<"COMPLETED">, C<"ACTIVE">, C<"COMMITTED">, C<"ABORTED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTransactions in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

