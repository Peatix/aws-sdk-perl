
package Paws::Drs::ListStagingAccounts;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStagingAccounts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListStagingAccounts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Drs::ListStagingAccountsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::ListStagingAccounts - Arguments for method ListStagingAccounts on L<Paws::Drs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStagingAccounts on the
L<Elastic Disaster Recovery Service|Paws::Drs> service. Use the attributes of this class
as arguments to method ListStagingAccounts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStagingAccounts.

=head1 SYNOPSIS

    my $drs = Paws->service('Drs');
    my $ListStagingAccountsResponse = $drs->ListStagingAccounts(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Accounts  = $ListStagingAccountsResponse->Accounts;
    my $NextToken = $ListStagingAccountsResponse->NextToken;

    # Returns a L<Paws::Drs::ListStagingAccountsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/drs/ListStagingAccounts>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of staging Accounts to retrieve.



=head2 NextToken => Str

The token of the next staging Account to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStagingAccounts in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

