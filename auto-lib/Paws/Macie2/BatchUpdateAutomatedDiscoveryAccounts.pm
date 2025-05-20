
package Paws::Macie2::BatchUpdateAutomatedDiscoveryAccounts;
  use Moose;
  has Accounts => (is => 'ro', isa => 'ArrayRef[Paws::Macie2::AutomatedDiscoveryAccountUpdate]', traits => ['NameInRequest'], request_name => 'accounts');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchUpdateAutomatedDiscoveryAccounts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/automated-discovery/accounts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::BatchUpdateAutomatedDiscoveryAccountsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::BatchUpdateAutomatedDiscoveryAccounts - Arguments for method BatchUpdateAutomatedDiscoveryAccounts on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchUpdateAutomatedDiscoveryAccounts on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method BatchUpdateAutomatedDiscoveryAccounts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchUpdateAutomatedDiscoveryAccounts.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $BatchUpdateAutomatedDiscoveryAccountsResponse =
      $macie2->BatchUpdateAutomatedDiscoveryAccounts(
      Accounts => [
        {
          AccountId => 'My__string',    # OPTIONAL
          Status    => 'ENABLED',       # values: ENABLED, DISABLED; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $Errors = $BatchUpdateAutomatedDiscoveryAccountsResponse->Errors;

# Returns a L<Paws::Macie2::BatchUpdateAutomatedDiscoveryAccountsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/BatchUpdateAutomatedDiscoveryAccounts>

=head1 ATTRIBUTES


=head2 Accounts => ArrayRef[L<Paws::Macie2::AutomatedDiscoveryAccountUpdate>]

An array of objects, one for each account to change the status of
automated sensitive data discovery for. Each object specifies the
Amazon Web Services account ID for an account and a new status for that
account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchUpdateAutomatedDiscoveryAccounts in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

