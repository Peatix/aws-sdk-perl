package Paws::Billingconductor;
  use Moose;
  sub service { 'billingconductor' }
  sub signing_name { 'billingconductor' }
  sub version { '2021-07-30' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::AssociateAccounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociatePricingRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::AssociatePricingRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchAssociateResourcesToCustomLineItem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::BatchAssociateResourcesToCustomLineItem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDisassociateResourcesFromCustomLineItem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::BatchDisassociateResourcesFromCustomLineItem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBillingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::CreateBillingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCustomLineItem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::CreateCustomLineItem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePricingPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::CreatePricingPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePricingRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::CreatePricingRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBillingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::DeleteBillingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCustomLineItem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::DeleteCustomLineItem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePricingPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::DeletePricingPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePricingRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::DeletePricingRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::DisassociateAccounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociatePricingRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::DisassociatePricingRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBillingGroupCostReport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::GetBillingGroupCostReport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccountAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::ListAccountAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBillingGroupCostReports {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::ListBillingGroupCostReports', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBillingGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::ListBillingGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCustomLineItems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::ListCustomLineItems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCustomLineItemVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::ListCustomLineItemVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPricingPlans {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::ListPricingPlans', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPricingPlansAssociatedWithPricingRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::ListPricingPlansAssociatedWithPricingRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPricingRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::ListPricingRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPricingRulesAssociatedToPricingPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::ListPricingRulesAssociatedToPricingPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourcesAssociatedToCustomLineItem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::ListResourcesAssociatedToCustomLineItem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBillingGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::UpdateBillingGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCustomLineItem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::UpdateCustomLineItem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePricingPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::UpdatePricingPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePricingRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billingconductor::UpdatePricingRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAccountAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccountAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAccountAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->LinkedAccounts }, @{ $next_result->LinkedAccounts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'LinkedAccounts') foreach (@{ $result->LinkedAccounts });
        $result = $self->ListAccountAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'LinkedAccounts') foreach (@{ $result->LinkedAccounts });
    }

    return undef
  }
  sub ListAllBillingGroupCostReports {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBillingGroupCostReports(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListBillingGroupCostReports(@_, NextToken => $next_result->NextToken);
        push @{ $result->BillingGroupCostReports }, @{ $next_result->BillingGroupCostReports };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'BillingGroupCostReports') foreach (@{ $result->BillingGroupCostReports });
        $result = $self->ListBillingGroupCostReports(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'BillingGroupCostReports') foreach (@{ $result->BillingGroupCostReports });
    }

    return undef
  }
  sub ListAllBillingGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBillingGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListBillingGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->BillingGroups }, @{ $next_result->BillingGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'BillingGroups') foreach (@{ $result->BillingGroups });
        $result = $self->ListBillingGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'BillingGroups') foreach (@{ $result->BillingGroups });
    }

    return undef
  }
  sub ListAllCustomLineItems {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCustomLineItems(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCustomLineItems(@_, NextToken => $next_result->NextToken);
        push @{ $result->CustomLineItems }, @{ $next_result->CustomLineItems };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CustomLineItems') foreach (@{ $result->CustomLineItems });
        $result = $self->ListCustomLineItems(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CustomLineItems') foreach (@{ $result->CustomLineItems });
    }

    return undef
  }
  sub ListAllCustomLineItemVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCustomLineItemVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCustomLineItemVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->CustomLineItemVersions }, @{ $next_result->CustomLineItemVersions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CustomLineItemVersions') foreach (@{ $result->CustomLineItemVersions });
        $result = $self->ListCustomLineItemVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CustomLineItemVersions') foreach (@{ $result->CustomLineItemVersions });
    }

    return undef
  }
  sub ListAllPricingPlans {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPricingPlans(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPricingPlans(@_, NextToken => $next_result->NextToken);
        push @{ $result->PricingPlans }, @{ $next_result->PricingPlans };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PricingPlans') foreach (@{ $result->PricingPlans });
        $result = $self->ListPricingPlans(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PricingPlans') foreach (@{ $result->PricingPlans });
    }

    return undef
  }
  sub ListAllPricingPlansAssociatedWithPricingRule {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPricingPlansAssociatedWithPricingRule(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPricingPlansAssociatedWithPricingRule(@_, NextToken => $next_result->NextToken);
        push @{ $result->PricingPlanArns }, @{ $next_result->PricingPlanArns };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PricingPlanArns') foreach (@{ $result->PricingPlanArns });
        $result = $self->ListPricingPlansAssociatedWithPricingRule(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PricingPlanArns') foreach (@{ $result->PricingPlanArns });
    }

    return undef
  }
  sub ListAllPricingRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPricingRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPricingRules(@_, NextToken => $next_result->NextToken);
        push @{ $result->PricingRules }, @{ $next_result->PricingRules };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PricingRules') foreach (@{ $result->PricingRules });
        $result = $self->ListPricingRules(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PricingRules') foreach (@{ $result->PricingRules });
    }

    return undef
  }
  sub ListAllPricingRulesAssociatedToPricingPlan {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPricingRulesAssociatedToPricingPlan(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPricingRulesAssociatedToPricingPlan(@_, NextToken => $next_result->NextToken);
        push @{ $result->PricingRuleArns }, @{ $next_result->PricingRuleArns };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PricingRuleArns') foreach (@{ $result->PricingRuleArns });
        $result = $self->ListPricingRulesAssociatedToPricingPlan(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PricingRuleArns') foreach (@{ $result->PricingRuleArns });
    }

    return undef
  }
  sub ListAllResourcesAssociatedToCustomLineItem {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResourcesAssociatedToCustomLineItem(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResourcesAssociatedToCustomLineItem(@_, NextToken => $next_result->NextToken);
        push @{ $result->AssociatedResources }, @{ $next_result->AssociatedResources };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AssociatedResources') foreach (@{ $result->AssociatedResources });
        $result = $self->ListResourcesAssociatedToCustomLineItem(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AssociatedResources') foreach (@{ $result->AssociatedResources });
    }

    return undef
  }


  sub operations { qw/AssociateAccounts AssociatePricingRules BatchAssociateResourcesToCustomLineItem BatchDisassociateResourcesFromCustomLineItem CreateBillingGroup CreateCustomLineItem CreatePricingPlan CreatePricingRule DeleteBillingGroup DeleteCustomLineItem DeletePricingPlan DeletePricingRule DisassociateAccounts DisassociatePricingRules GetBillingGroupCostReport ListAccountAssociations ListBillingGroupCostReports ListBillingGroups ListCustomLineItems ListCustomLineItemVersions ListPricingPlans ListPricingPlansAssociatedWithPricingRule ListPricingRules ListPricingRulesAssociatedToPricingPlan ListResourcesAssociatedToCustomLineItem ListTagsForResource TagResource UntagResource UpdateBillingGroup UpdateCustomLineItem UpdatePricingPlan UpdatePricingRule / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor - Perl Interface to AWS AWSBillingConductor

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Billingconductor');
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

Amazon Web Services Billing Conductor is a fully managed service that
you can use to customize a proforma
(https://docs.aws.amazon.com/billingconductor/latest/userguide/understanding-eb.html#eb-other-definitions)
version of your billing data each month, to accurately show or
chargeback your end customers. Amazon Web Services Billing Conductor
doesn't change the way you're billed by Amazon Web Services each month
by design. Instead, it provides you with a mechanism to configure,
generate, and display rates to certain customers over a given billing
period. You can also analyze the difference between the rates you apply
to your accounting groupings relative to your actual rates from Amazon
Web Services. As a result of your Amazon Web Services Billing Conductor
configuration, the payer account can also see the custom rate applied
on the billing details page of the Amazon Web Services Billing console
(https://console.aws.amazon.com/billing), or configure a cost and usage
report per billing group.

This documentation shows how you can configure Amazon Web Services
Billing Conductor using its API. For more information about using the
Amazon Web Services Billing Conductor
(https://console.aws.amazon.com/billingconductor/) user interface, see
the Amazon Web Services Billing Conductor User Guide
(https://docs.aws.amazon.com/billingconductor/latest/userguide/what-is-billingconductor.html).

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AssociateAccounts

=over

=item AccountIds => ArrayRef[Str|Undef]

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Billingconductor::AssociateAccounts>

Returns: a L<Paws::Billingconductor::AssociateAccountsOutput> instance

Connects an array of account IDs in a consolidated billing family to a
predefined billing group. The account IDs must be a part of the
consolidated billing family during the current month, and not already
associated with another billing group. The maximum number of accounts
that can be associated in one call is 30.


=head2 AssociatePricingRules

=over

=item Arn => Str

=item PricingRuleArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Billingconductor::AssociatePricingRules>

Returns: a L<Paws::Billingconductor::AssociatePricingRulesOutput> instance

Connects an array of C<PricingRuleArns> to a defined C<PricingPlan>.
The maximum number C<PricingRuleArn> that can be associated in one call
is 30.


=head2 BatchAssociateResourcesToCustomLineItem

=over

=item ResourceArns => ArrayRef[Str|Undef]

=item TargetArn => Str

=item [BillingPeriodRange => L<Paws::Billingconductor::CustomLineItemBillingPeriodRange>]


=back

Each argument is described in detail in: L<Paws::Billingconductor::BatchAssociateResourcesToCustomLineItem>

Returns: a L<Paws::Billingconductor::BatchAssociateResourcesToCustomLineItemOutput> instance

Associates a batch of resources to a percentage custom line item.


=head2 BatchDisassociateResourcesFromCustomLineItem

=over

=item ResourceArns => ArrayRef[Str|Undef]

=item TargetArn => Str

=item [BillingPeriodRange => L<Paws::Billingconductor::CustomLineItemBillingPeriodRange>]


=back

Each argument is described in detail in: L<Paws::Billingconductor::BatchDisassociateResourcesFromCustomLineItem>

Returns: a L<Paws::Billingconductor::BatchDisassociateResourcesFromCustomLineItemOutput> instance

Disassociates a batch of resources from a percentage custom line item.


=head2 CreateBillingGroup

=over

=item AccountGrouping => L<Paws::Billingconductor::AccountGrouping>

=item ComputationPreference => L<Paws::Billingconductor::ComputationPreference>

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [PrimaryAccountId => Str]

=item [Tags => L<Paws::Billingconductor::TagMap>]


=back

Each argument is described in detail in: L<Paws::Billingconductor::CreateBillingGroup>

Returns: a L<Paws::Billingconductor::CreateBillingGroupOutput> instance

Creates a billing group that resembles a consolidated billing family
that Amazon Web Services charges, based off of the predefined pricing
plan computation.


=head2 CreateCustomLineItem

=over

=item BillingGroupArn => Str

=item ChargeDetails => L<Paws::Billingconductor::CustomLineItemChargeDetails>

=item Description => Str

=item Name => Str

=item [AccountId => Str]

=item [BillingPeriodRange => L<Paws::Billingconductor::CustomLineItemBillingPeriodRange>]

=item [ClientToken => Str]

=item [Tags => L<Paws::Billingconductor::TagMap>]


=back

Each argument is described in detail in: L<Paws::Billingconductor::CreateCustomLineItem>

Returns: a L<Paws::Billingconductor::CreateCustomLineItemOutput> instance

Creates a custom line item that can be used to create a one-time fixed
charge that can be applied to a single billing group for the current or
previous billing period. The one-time fixed charge is either a fee or
discount.


=head2 CreatePricingPlan

=over

=item Name => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [PricingRuleArns => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::Billingconductor::TagMap>]


=back

Each argument is described in detail in: L<Paws::Billingconductor::CreatePricingPlan>

Returns: a L<Paws::Billingconductor::CreatePricingPlanOutput> instance

Creates a pricing plan that is used for computing Amazon Web Services
charges for billing groups.


=head2 CreatePricingRule

=over

=item Name => Str

=item Scope => Str

=item Type => Str

=item [BillingEntity => Str]

=item [ClientToken => Str]

=item [Description => Str]

=item [ModifierPercentage => Num]

=item [Operation => Str]

=item [Service => Str]

=item [Tags => L<Paws::Billingconductor::TagMap>]

=item [Tiering => L<Paws::Billingconductor::CreateTieringInput>]

=item [UsageType => Str]


=back

Each argument is described in detail in: L<Paws::Billingconductor::CreatePricingRule>

Returns: a L<Paws::Billingconductor::CreatePricingRuleOutput> instance

Creates a pricing rule can be associated to a pricing plan, or a set of
pricing plans.


=head2 DeleteBillingGroup

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Billingconductor::DeleteBillingGroup>

Returns: a L<Paws::Billingconductor::DeleteBillingGroupOutput> instance

Deletes a billing group.


=head2 DeleteCustomLineItem

=over

=item Arn => Str

=item [BillingPeriodRange => L<Paws::Billingconductor::CustomLineItemBillingPeriodRange>]


=back

Each argument is described in detail in: L<Paws::Billingconductor::DeleteCustomLineItem>

Returns: a L<Paws::Billingconductor::DeleteCustomLineItemOutput> instance

Deletes the custom line item identified by the given ARN in the
current, or previous billing period.


=head2 DeletePricingPlan

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Billingconductor::DeletePricingPlan>

Returns: a L<Paws::Billingconductor::DeletePricingPlanOutput> instance

Deletes a pricing plan. The pricing plan must not be associated with
any billing groups to delete successfully.


=head2 DeletePricingRule

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Billingconductor::DeletePricingRule>

Returns: a L<Paws::Billingconductor::DeletePricingRuleOutput> instance

Deletes the pricing rule that's identified by the input Amazon Resource
Name (ARN).


=head2 DisassociateAccounts

=over

=item AccountIds => ArrayRef[Str|Undef]

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Billingconductor::DisassociateAccounts>

Returns: a L<Paws::Billingconductor::DisassociateAccountsOutput> instance

Removes the specified list of account IDs from the given billing group.


=head2 DisassociatePricingRules

=over

=item Arn => Str

=item PricingRuleArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Billingconductor::DisassociatePricingRules>

Returns: a L<Paws::Billingconductor::DisassociatePricingRulesOutput> instance

Disassociates a list of pricing rules from a pricing plan.


=head2 GetBillingGroupCostReport

=over

=item Arn => Str

=item [BillingPeriodRange => L<Paws::Billingconductor::BillingPeriodRange>]

=item [GroupBy => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Billingconductor::GetBillingGroupCostReport>

Returns: a L<Paws::Billingconductor::GetBillingGroupCostReportOutput> instance

Retrieves the margin summary report, which includes the Amazon Web
Services cost and charged amount (pro forma cost) by Amazon Web Service
for a specific billing group.


=head2 ListAccountAssociations

=over

=item [BillingPeriod => Str]

=item [Filters => L<Paws::Billingconductor::ListAccountAssociationsFilter>]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Billingconductor::ListAccountAssociations>

Returns: a L<Paws::Billingconductor::ListAccountAssociationsOutput> instance

This is a paginated call to list linked accounts that are linked to the
payer account for the specified time period. If no information is
provided, the current billing period is used. The response will
optionally include the billing group that's associated with the linked
account.


=head2 ListBillingGroupCostReports

=over

=item [BillingPeriod => Str]

=item [Filters => L<Paws::Billingconductor::ListBillingGroupCostReportsFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Billingconductor::ListBillingGroupCostReports>

Returns: a L<Paws::Billingconductor::ListBillingGroupCostReportsOutput> instance

A paginated call to retrieve a summary report of actual Amazon Web
Services charges and the calculated Amazon Web Services charges based
on the associated pricing plan of a billing group.


=head2 ListBillingGroups

=over

=item [BillingPeriod => Str]

=item [Filters => L<Paws::Billingconductor::ListBillingGroupsFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Billingconductor::ListBillingGroups>

Returns: a L<Paws::Billingconductor::ListBillingGroupsOutput> instance

A paginated call to retrieve a list of billing groups for the given
billing period. If you don't provide a billing group, the current
billing period is used.


=head2 ListCustomLineItems

=over

=item [BillingPeriod => Str]

=item [Filters => L<Paws::Billingconductor::ListCustomLineItemsFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Billingconductor::ListCustomLineItems>

Returns: a L<Paws::Billingconductor::ListCustomLineItemsOutput> instance

A paginated call to get a list of all custom line items (FFLIs) for the
given billing period. If you don't provide a billing period, the
current billing period is used.


=head2 ListCustomLineItemVersions

=over

=item Arn => Str

=item [Filters => L<Paws::Billingconductor::ListCustomLineItemVersionsFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Billingconductor::ListCustomLineItemVersions>

Returns: a L<Paws::Billingconductor::ListCustomLineItemVersionsOutput> instance

A paginated call to get a list of all custom line item versions.


=head2 ListPricingPlans

=over

=item [BillingPeriod => Str]

=item [Filters => L<Paws::Billingconductor::ListPricingPlansFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Billingconductor::ListPricingPlans>

Returns: a L<Paws::Billingconductor::ListPricingPlansOutput> instance

A paginated call to get pricing plans for the given billing period. If
you don't provide a billing period, the current billing period is used.


=head2 ListPricingPlansAssociatedWithPricingRule

=over

=item PricingRuleArn => Str

=item [BillingPeriod => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Billingconductor::ListPricingPlansAssociatedWithPricingRule>

Returns: a L<Paws::Billingconductor::ListPricingPlansAssociatedWithPricingRuleOutput> instance

A list of the pricing plans that are associated with a pricing rule.


=head2 ListPricingRules

=over

=item [BillingPeriod => Str]

=item [Filters => L<Paws::Billingconductor::ListPricingRulesFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Billingconductor::ListPricingRules>

Returns: a L<Paws::Billingconductor::ListPricingRulesOutput> instance

Describes a pricing rule that can be associated to a pricing plan, or
set of pricing plans.


=head2 ListPricingRulesAssociatedToPricingPlan

=over

=item PricingPlanArn => Str

=item [BillingPeriod => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Billingconductor::ListPricingRulesAssociatedToPricingPlan>

Returns: a L<Paws::Billingconductor::ListPricingRulesAssociatedToPricingPlanOutput> instance

Lists the pricing rules that are associated with a pricing plan.


=head2 ListResourcesAssociatedToCustomLineItem

=over

=item Arn => Str

=item [BillingPeriod => Str]

=item [Filters => L<Paws::Billingconductor::ListResourcesAssociatedToCustomLineItemFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Billingconductor::ListResourcesAssociatedToCustomLineItem>

Returns: a L<Paws::Billingconductor::ListResourcesAssociatedToCustomLineItemOutput> instance

List the resources that are associated to a custom line item.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Billingconductor::ListTagsForResource>

Returns: a L<Paws::Billingconductor::ListTagsForResourceResponse> instance

A list the tags for a resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Billingconductor::TagMap>


=back

Each argument is described in detail in: L<Paws::Billingconductor::TagResource>

Returns: a L<Paws::Billingconductor::TagResourceResponse> instance

Associates the specified tags to a resource with the specified
C<resourceArn>. If existing tags on a resource are not specified in the
request parameters, they are not changed.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Billingconductor::UntagResource>

Returns: a L<Paws::Billingconductor::UntagResourceResponse> instance

Deletes specified tags from a resource.


=head2 UpdateBillingGroup

=over

=item Arn => Str

=item [AccountGrouping => L<Paws::Billingconductor::UpdateBillingGroupAccountGrouping>]

=item [ComputationPreference => L<Paws::Billingconductor::ComputationPreference>]

=item [Description => Str]

=item [Name => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Billingconductor::UpdateBillingGroup>

Returns: a L<Paws::Billingconductor::UpdateBillingGroupOutput> instance

This updates an existing billing group.


=head2 UpdateCustomLineItem

=over

=item Arn => Str

=item [BillingPeriodRange => L<Paws::Billingconductor::CustomLineItemBillingPeriodRange>]

=item [ChargeDetails => L<Paws::Billingconductor::UpdateCustomLineItemChargeDetails>]

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Billingconductor::UpdateCustomLineItem>

Returns: a L<Paws::Billingconductor::UpdateCustomLineItemOutput> instance

Update an existing custom line item in the current or previous billing
period.


=head2 UpdatePricingPlan

=over

=item Arn => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Billingconductor::UpdatePricingPlan>

Returns: a L<Paws::Billingconductor::UpdatePricingPlanOutput> instance

This updates an existing pricing plan.


=head2 UpdatePricingRule

=over

=item Arn => Str

=item [Description => Str]

=item [ModifierPercentage => Num]

=item [Name => Str]

=item [Tiering => L<Paws::Billingconductor::UpdateTieringInput>]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::Billingconductor::UpdatePricingRule>

Returns: a L<Paws::Billingconductor::UpdatePricingRuleOutput> instance

Updates an existing pricing rule.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAccountAssociations(sub { },[BillingPeriod => Str, Filters => L<Paws::Billingconductor::ListAccountAssociationsFilter>, NextToken => Str])

=head2 ListAllAccountAssociations([BillingPeriod => Str, Filters => L<Paws::Billingconductor::ListAccountAssociationsFilter>, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LinkedAccounts, passing the object as the first parameter, and the string 'LinkedAccounts' as the second parameter 

If not, it will return a a L<Paws::Billingconductor::ListAccountAssociationsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBillingGroupCostReports(sub { },[BillingPeriod => Str, Filters => L<Paws::Billingconductor::ListBillingGroupCostReportsFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllBillingGroupCostReports([BillingPeriod => Str, Filters => L<Paws::Billingconductor::ListBillingGroupCostReportsFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - BillingGroupCostReports, passing the object as the first parameter, and the string 'BillingGroupCostReports' as the second parameter 

If not, it will return a a L<Paws::Billingconductor::ListBillingGroupCostReportsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBillingGroups(sub { },[BillingPeriod => Str, Filters => L<Paws::Billingconductor::ListBillingGroupsFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllBillingGroups([BillingPeriod => Str, Filters => L<Paws::Billingconductor::ListBillingGroupsFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - BillingGroups, passing the object as the first parameter, and the string 'BillingGroups' as the second parameter 

If not, it will return a a L<Paws::Billingconductor::ListBillingGroupsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCustomLineItems(sub { },[BillingPeriod => Str, Filters => L<Paws::Billingconductor::ListCustomLineItemsFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllCustomLineItems([BillingPeriod => Str, Filters => L<Paws::Billingconductor::ListCustomLineItemsFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CustomLineItems, passing the object as the first parameter, and the string 'CustomLineItems' as the second parameter 

If not, it will return a a L<Paws::Billingconductor::ListCustomLineItemsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCustomLineItemVersions(sub { },Arn => Str, [Filters => L<Paws::Billingconductor::ListCustomLineItemVersionsFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllCustomLineItemVersions(Arn => Str, [Filters => L<Paws::Billingconductor::ListCustomLineItemVersionsFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CustomLineItemVersions, passing the object as the first parameter, and the string 'CustomLineItemVersions' as the second parameter 

If not, it will return a a L<Paws::Billingconductor::ListCustomLineItemVersionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPricingPlans(sub { },[BillingPeriod => Str, Filters => L<Paws::Billingconductor::ListPricingPlansFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllPricingPlans([BillingPeriod => Str, Filters => L<Paws::Billingconductor::ListPricingPlansFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PricingPlans, passing the object as the first parameter, and the string 'PricingPlans' as the second parameter 

If not, it will return a a L<Paws::Billingconductor::ListPricingPlansOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPricingPlansAssociatedWithPricingRule(sub { },PricingRuleArn => Str, [BillingPeriod => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllPricingPlansAssociatedWithPricingRule(PricingRuleArn => Str, [BillingPeriod => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PricingPlanArns, passing the object as the first parameter, and the string 'PricingPlanArns' as the second parameter 

If not, it will return a a L<Paws::Billingconductor::ListPricingPlansAssociatedWithPricingRuleOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPricingRules(sub { },[BillingPeriod => Str, Filters => L<Paws::Billingconductor::ListPricingRulesFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllPricingRules([BillingPeriod => Str, Filters => L<Paws::Billingconductor::ListPricingRulesFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PricingRules, passing the object as the first parameter, and the string 'PricingRules' as the second parameter 

If not, it will return a a L<Paws::Billingconductor::ListPricingRulesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPricingRulesAssociatedToPricingPlan(sub { },PricingPlanArn => Str, [BillingPeriod => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllPricingRulesAssociatedToPricingPlan(PricingPlanArn => Str, [BillingPeriod => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PricingRuleArns, passing the object as the first parameter, and the string 'PricingRuleArns' as the second parameter 

If not, it will return a a L<Paws::Billingconductor::ListPricingRulesAssociatedToPricingPlanOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResourcesAssociatedToCustomLineItem(sub { },Arn => Str, [BillingPeriod => Str, Filters => L<Paws::Billingconductor::ListResourcesAssociatedToCustomLineItemFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllResourcesAssociatedToCustomLineItem(Arn => Str, [BillingPeriod => Str, Filters => L<Paws::Billingconductor::ListResourcesAssociatedToCustomLineItemFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AssociatedResources, passing the object as the first parameter, and the string 'AssociatedResources' as the second parameter 

If not, it will return a a L<Paws::Billingconductor::ListResourcesAssociatedToCustomLineItemOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

