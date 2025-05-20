
package Paws::Billingconductor::CreateBillingGroup;
  use Moose;
  has AccountGrouping => (is => 'ro', isa => 'Paws::Billingconductor::AccountGrouping', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has ComputationPreference => (is => 'ro', isa => 'Paws::Billingconductor::ComputationPreference', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has PrimaryAccountId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Billingconductor::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBillingGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/create-billing-group');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billingconductor::CreateBillingGroupOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::CreateBillingGroup - Arguments for method CreateBillingGroup on L<Paws::Billingconductor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBillingGroup on the
L<AWSBillingConductor|Paws::Billingconductor> service. Use the attributes of this class
as arguments to method CreateBillingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBillingGroup.

=head1 SYNOPSIS

    my $billingconductor = Paws->service('Billingconductor');
    my $CreateBillingGroupOutput = $billingconductor->CreateBillingGroup(
      AccountGrouping => {
        LinkedAccountIds => [ 'MyAccountId', ... ],    # min: 1, max: 30
        AutoAssociate    => 1,                         # OPTIONAL
      },
      ComputationPreference => {
        PricingPlanArn => 'MyPricingPlanFullArn',

      },
      Name             => 'MyBillingGroupName',
      ClientToken      => 'MyClientToken',                # OPTIONAL
      Description      => 'MyBillingGroupDescription',    # OPTIONAL
      PrimaryAccountId => 'MyAccountId',                  # OPTIONAL
      Tags             => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn = $CreateBillingGroupOutput->Arn;

    # Returns a L<Paws::Billingconductor::CreateBillingGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billingconductor/CreateBillingGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountGrouping => L<Paws::Billingconductor::AccountGrouping>

The set of accounts that will be under the billing group. The set of
accounts resemble the linked accounts in a consolidated billing family.



=head2 ClientToken => Str

The token that is needed to support idempotency. Idempotency isn't
currently supported, but will be implemented in a future update.



=head2 B<REQUIRED> ComputationPreference => L<Paws::Billingconductor::ComputationPreference>

The preferences and settings that will be used to compute the Amazon
Web Services charges for a billing group.



=head2 Description => Str

The description of the billing group.



=head2 B<REQUIRED> Name => Str

The billing group name. The names must be unique.



=head2 PrimaryAccountId => Str

The account ID that serves as the main account in a billing group.



=head2 Tags => L<Paws::Billingconductor::TagMap>

A map that contains tag keys and tag values that are attached to a
billing group. This feature isn't available during the beta.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBillingGroup in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

