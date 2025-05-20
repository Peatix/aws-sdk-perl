
package Paws::Account::ListRegions;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has RegionOptStatusContains => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRegions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listRegions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Account::ListRegionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Account::ListRegions - Arguments for method ListRegions on L<Paws::Account>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRegions on the
L<AWS Account|Paws::Account> service. Use the attributes of this class
as arguments to method ListRegions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRegions.

=head1 SYNOPSIS

    my $account = Paws->service('Account');
    my $ListRegionsResponse = $account->ListRegions(
      AccountId  => 'MyAccountId',                            # OPTIONAL
      MaxResults => 1,                                        # OPTIONAL
      NextToken  => 'MyListRegionsRequestNextTokenString',    # OPTIONAL
      RegionOptStatusContains => [
        'ENABLED',
        ... # values: ENABLED, ENABLING, DISABLING, DISABLED, ENABLED_BY_DEFAULT
      ],    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListRegionsResponse->NextToken;
    my $Regions   = $ListRegionsResponse->Regions;

    # Returns a L<Paws::Account::ListRegionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/account/ListRegions>

=head1 ATTRIBUTES


=head2 AccountId => Str

Specifies the 12-digit account ID number of the Amazon Web Services
account that you want to access or modify with this operation. If you
don't specify this parameter, it defaults to the Amazon Web Services
account of the identity used to call the operation. To use this
parameter, the caller must be an identity in the organization's
management account
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account)
or a delegated administrator account. The specified account ID must be
a member account in the same organization. The organization must have
all features enabled
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html),
and the organization must have trusted access
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html)
enabled for the Account Management service, and optionally a delegated
admin
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#delegated-admin)
account assigned.

The management account can't specify its own C<AccountId>. It must call
the operation in standalone context by not including the C<AccountId>
parameter.

To call this operation on an account that is not a member of an
organization, don't specify this parameter. Instead, call the operation
using an identity belonging to the account whose contacts you wish to
retrieve or modify.



=head2 MaxResults => Int

The total number of items to return in the commandE<rsquo>s output. If
the total number of items available is more than the value specified, a
C<NextToken> is provided in the commandE<rsquo>s output. To resume
pagination, provide the C<NextToken> value in the C<starting-token>
argument of a subsequent command. Do not use the C<NextToken> response
element directly outside of the Amazon Web Services CLI. For usage
examples, see Pagination
(http://docs.aws.amazon.com/cli/latest/userguide/pagination.html) in
the I<Amazon Web Services Command Line Interface User Guide>.



=head2 NextToken => Str

A token used to specify where to start paginating. This is the
C<NextToken> from a previously truncated response. For usage examples,
see Pagination
(http://docs.aws.amazon.com/cli/latest/userguide/pagination.html) in
the I<Amazon Web Services Command Line Interface User Guide>.



=head2 RegionOptStatusContains => ArrayRef[Str|Undef]

A list of Region statuses (Enabling, Enabled, Disabling, Disabled,
Enabled_by_default) to use to filter the list of Regions for a given
account. For example, passing in a value of ENABLING will only return a
list of Regions with a Region status of ENABLING.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRegions in L<Paws::Account>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

