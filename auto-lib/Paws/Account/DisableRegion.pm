
package Paws::Account::DisableRegion;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has RegionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableRegion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/disableRegion');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Account::DisableRegion - Arguments for method DisableRegion on L<Paws::Account>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisableRegion on the
L<AWS Account|Paws::Account> service. Use the attributes of this class
as arguments to method DisableRegion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisableRegion.

=head1 SYNOPSIS

    my $account = Paws->service('Account');
    $account->DisableRegion(
      RegionName => 'MyRegionName',
      AccountId  => 'MyAccountId',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/account/DisableRegion>

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



=head2 B<REQUIRED> RegionName => Str

Specifies the Region-code for a given Region name (for example,
C<af-south-1>). When you disable a Region, Amazon Web Services performs
actions to deactivate that Region in your account, such as destroying
IAM resources in the Region. This process takes a few minutes for most
accounts, but this can take several hours. You cannot enable the Region
until the disabling process is fully completed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisableRegion in L<Paws::Account>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

