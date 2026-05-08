package Paws::MarketplaceReporting;
  use Moose;
  sub service { 'reporting-marketplace' }
  sub signing_name { 'aws-marketplace' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub GetBuyerDashboard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceReporting::GetBuyerDashboard', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/GetBuyerDashboard / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceReporting - Perl Interface to AWS AWS Marketplace Reporting Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MarketplaceReporting');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

The Amazon Web Services Marketplace C<GetBuyerDashboard> API enables
you to get a procurement insights dashboard programmatically. The API
gets the agreement and cost analysis dashboards with data for all of
the Amazon Web Services accounts in your Amazon Web Services
Organization.

To use the Amazon Web Services Marketplace Reporting API, you must
complete the following prerequisites:

=over

=item *

Enable all features for your organization. For more information, see
Enabling all features for an organization with Organizations
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html),
in the I<Organizations User Guide>.

=item *

Call the service as the Organizations management account or an account
registered as a delegated administrator for the procurement insights
service.

For more information about management accounts, see Tutorial: Creating
and configuring an organization
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tutorials_basic.html)
and Managing the management account with Organizations
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs-manage_accounts_management.html),
both in the I<Organizations User Guide>.

For more information about delegated administrators, see Using
delegated administrators
(https://docs.aws.amazon.com/marketplace/latest/buyerguide/management-delegates.html),
in the I<Amazon Web Services Marketplace Buyer Guide>.

=item *

Create an IAM policy that enables the
C<aws-marketplace:GetBuyerDashboard> and
C<organizations:DescribeOrganization> permissions. In addition, the
management account requires the C<organizations:EnableAWSServiceAccess>
and C<iam:CreateServiceLinkedRole> permissions to create. For more
information about creating the policy, see Policies and permissions in
Identity and Access Management
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html),
in the I<IAM User Guide>.

Access can be shared only by registering the desired linked account as
a delegated administrator. That requires
C<organizations:RegisterDelegatedAdministrator>
C<organizations:ListDelegatedAdministrators> and
C<organizations:DeregisterDelegatedAdministrator> permissions.

=item *

Use the Amazon Web Services Marketplace console to create the
C<AWSServiceRoleForProcurementInsightsPolicy> service-linked role. The
role enables Amazon Web Services Marketplace procurement visibility
integration. The management account requires an IAM policy with the
C<organizations:EnableAWSServiceAccess> and
C<iam:CreateServiceLinkedRole> permissions to create the service-linked
role and enable the service access. For more information, see Granting
access to Organizations
(https://docs.aws.amazon.com/marketplace/latest/buyerguide/orgs-access-slr.html)
and Service-linked role to share procurement data
(https://docs.aws.amazon.com/marketplace/latest/buyerguide/buyer-service-linked-role-procurement.html)
in the I<Amazon Web Services Marketplace Buyer Guide>.

=item *

After creating the service-linked role, you must enable trusted access
that grants Amazon Web Services Marketplace permission to access data
from your Organizations. For more information, see Granting access to
Organizations
(https://docs.aws.amazon.com/marketplace/latest/buyerguide/orgs-access-slr.html)
in the I<Amazon Web Services Marketplace Buyer Guide>.

=back


For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 GetBuyerDashboard

=over

=item DashboardIdentifier => Str

=item EmbeddingDomains => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::MarketplaceReporting::GetBuyerDashboard>

Returns: a L<Paws::MarketplaceReporting::GetBuyerDashboardOutput> instance

Generates an embedding URL for an Amazon QuickSight dashboard for an
anonymous user.

This API is available only to Amazon Web Services Organization
management accounts or delegated administrators registered for the
procurement insights
(C<procurement-insights.marketplace.amazonaws.com>) feature.

The following rules apply to a generated URL:

=over

=item *

It contains a temporary bearer token, valid for 5 minutes after it is
generated. Once redeemed within that period, it cannot be re-used
again.

=item *

It has a session lifetime of one hour. The 5-minute validity period
runs separately from the session lifetime.

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

