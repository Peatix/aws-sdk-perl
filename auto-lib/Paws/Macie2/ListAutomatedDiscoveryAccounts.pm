
package Paws::Macie2::ListAutomatedDiscoveryAccounts;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'accountIds');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAutomatedDiscoveryAccounts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/automated-discovery/accounts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::ListAutomatedDiscoveryAccountsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::ListAutomatedDiscoveryAccounts - Arguments for method ListAutomatedDiscoveryAccounts on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAutomatedDiscoveryAccounts on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method ListAutomatedDiscoveryAccounts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAutomatedDiscoveryAccounts.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $ListAutomatedDiscoveryAccountsResponse =
      $macie2->ListAutomatedDiscoveryAccounts(
      AccountIds => [ 'My__string', ... ],    # OPTIONAL
      MaxResults => 1,                        # OPTIONAL
      NextToken  => 'My__string',             # OPTIONAL
      );

    # Results:
    my $Items     = $ListAutomatedDiscoveryAccountsResponse->Items;
    my $NextToken = $ListAutomatedDiscoveryAccountsResponse->NextToken;

    # Returns a L<Paws::Macie2::ListAutomatedDiscoveryAccountsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/ListAutomatedDiscoveryAccounts>

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

The Amazon Web Services account ID for each account, for as many as 50
accounts. To retrieve the status for multiple accounts, append the
accountIds parameter and argument for each account, separated by an
ampersand (&). To retrieve the status for all the accounts in an
organization, omit this parameter.



=head2 MaxResults => Int

The maximum number of items to include in each page of a paginated
response.



=head2 NextToken => Str

The nextToken string that specifies which page of results to return in
a paginated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAutomatedDiscoveryAccounts in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

