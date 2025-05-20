
package Paws::Billingconductor::ListBillingGroups;
  use Moose;
  has BillingPeriod => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'Paws::Billingconductor::ListBillingGroupsFilter');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBillingGroups');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-billing-groups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billingconductor::ListBillingGroupsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::ListBillingGroups - Arguments for method ListBillingGroups on L<Paws::Billingconductor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBillingGroups on the
L<AWSBillingConductor|Paws::Billingconductor> service. Use the attributes of this class
as arguments to method ListBillingGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBillingGroups.

=head1 SYNOPSIS

    my $billingconductor = Paws->service('Billingconductor');
    my $ListBillingGroupsOutput = $billingconductor->ListBillingGroups(
      BillingPeriod => 'MyBillingPeriod',    # OPTIONAL
      Filters       => {
        Arns => [ 'MyBillingGroupArn', ... ],    # min: 1, max: 100; OPTIONAL
        AutoAssociate => 1,                         # OPTIONAL
        PricingPlan   => 'MyPricingPlanFullArn',    # OPTIONAL
        Statuses      => [
          'ACTIVE', ...    # values: ACTIVE, PRIMARY_ACCOUNT_MISSING
        ],    # min: 1, max: 2; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
    );

    # Results:
    my $BillingGroups = $ListBillingGroupsOutput->BillingGroups;
    my $NextToken     = $ListBillingGroupsOutput->NextToken;

    # Returns a L<Paws::Billingconductor::ListBillingGroupsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billingconductor/ListBillingGroups>

=head1 ATTRIBUTES


=head2 BillingPeriod => Str

The preferred billing period to get billing groups.



=head2 Filters => L<Paws::Billingconductor::ListBillingGroupsFilter>

A C<ListBillingGroupsFilter> that specifies the billing group and
pricing plan to retrieve billing group information.



=head2 MaxResults => Int

The maximum number of billing groups to retrieve.



=head2 NextToken => Str

The pagination token that's used on subsequent calls to get billing
groups.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBillingGroups in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

