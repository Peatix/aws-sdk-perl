
package Paws::Billingconductor::UpdateBillingGroup;
  use Moose;
  has AccountGrouping => (is => 'ro', isa => 'Paws::Billingconductor::UpdateBillingGroupAccountGrouping');
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has ComputationPreference => (is => 'ro', isa => 'Paws::Billingconductor::ComputationPreference');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBillingGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-billing-group');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Billingconductor::UpdateBillingGroupOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::UpdateBillingGroup - Arguments for method UpdateBillingGroup on L<Paws::Billingconductor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBillingGroup on the
L<AWSBillingConductor|Paws::Billingconductor> service. Use the attributes of this class
as arguments to method UpdateBillingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBillingGroup.

=head1 SYNOPSIS

    my $billingconductor = Paws->service('Billingconductor');
    my $UpdateBillingGroupOutput = $billingconductor->UpdateBillingGroup(
      Arn             => 'MyBillingGroupArn',
      AccountGrouping => {
        AutoAssociate => 1,    # OPTIONAL
      },    # OPTIONAL
      ComputationPreference => {
        PricingPlanArn => 'MyPricingPlanFullArn',

      },    # OPTIONAL
      Description => 'MyBillingGroupDescription',    # OPTIONAL
      Name        => 'MyBillingGroupName',           # OPTIONAL
      Status      => 'ACTIVE',                       # OPTIONAL
    );

    # Results:
    my $AccountGrouping  = $UpdateBillingGroupOutput->AccountGrouping;
    my $Arn              = $UpdateBillingGroupOutput->Arn;
    my $Description      = $UpdateBillingGroupOutput->Description;
    my $LastModifiedTime = $UpdateBillingGroupOutput->LastModifiedTime;
    my $Name             = $UpdateBillingGroupOutput->Name;
    my $PricingPlanArn   = $UpdateBillingGroupOutput->PricingPlanArn;
    my $PrimaryAccountId = $UpdateBillingGroupOutput->PrimaryAccountId;
    my $Size             = $UpdateBillingGroupOutput->Size;
    my $Status           = $UpdateBillingGroupOutput->Status;
    my $StatusReason     = $UpdateBillingGroupOutput->StatusReason;

    # Returns a L<Paws::Billingconductor::UpdateBillingGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billingconductor/UpdateBillingGroup>

=head1 ATTRIBUTES


=head2 AccountGrouping => L<Paws::Billingconductor::UpdateBillingGroupAccountGrouping>

Specifies if the billing group has automatic account association
(C<AutoAssociate>) enabled.



=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the billing group being updated.



=head2 ComputationPreference => L<Paws::Billingconductor::ComputationPreference>

The preferences and settings that will be used to compute the Amazon
Web Services charges for a billing group.



=head2 Description => Str

A description of the billing group.



=head2 Name => Str

The name of the billing group. The names must be unique to each billing
group.



=head2 Status => Str

The status of the billing group. Only one of the valid values can be
used.

Valid values are: C<"ACTIVE">, C<"PRIMARY_ACCOUNT_MISSING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBillingGroup in L<Paws::Billingconductor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

