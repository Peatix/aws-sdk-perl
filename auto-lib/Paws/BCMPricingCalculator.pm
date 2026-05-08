package Paws::BCMPricingCalculator;
  use Moose;
  sub service { 'bcm-pricing-calculator' }
  sub signing_name { 'bcm-pricing-calculator' }
  sub version { '2024-06-19' }
  sub target_prefix { 'AWSBCMPricingCalculator' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub BatchCreateBillScenarioCommitmentModification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::BatchCreateBillScenarioCommitmentModification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchCreateBillScenarioUsageModification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::BatchCreateBillScenarioUsageModification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchCreateWorkloadEstimateUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::BatchCreateWorkloadEstimateUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteBillScenarioCommitmentModification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::BatchDeleteBillScenarioCommitmentModification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteBillScenarioUsageModification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::BatchDeleteBillScenarioUsageModification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteWorkloadEstimateUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::BatchDeleteWorkloadEstimateUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpdateBillScenarioCommitmentModification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::BatchUpdateBillScenarioCommitmentModification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpdateBillScenarioUsageModification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::BatchUpdateBillScenarioUsageModification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpdateWorkloadEstimateUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::BatchUpdateWorkloadEstimateUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBillEstimate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::CreateBillEstimate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBillScenario {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::CreateBillScenario', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkloadEstimate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::CreateWorkloadEstimate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBillEstimate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::DeleteBillEstimate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBillScenario {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::DeleteBillScenario', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkloadEstimate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::DeleteWorkloadEstimate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBillEstimate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::GetBillEstimate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBillScenario {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::GetBillScenario', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPreferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::GetPreferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWorkloadEstimate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::GetWorkloadEstimate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBillEstimateCommitments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::ListBillEstimateCommitments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBillEstimateInputCommitmentModifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::ListBillEstimateInputCommitmentModifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBillEstimateInputUsageModifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::ListBillEstimateInputUsageModifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBillEstimateLineItems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::ListBillEstimateLineItems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBillEstimates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::ListBillEstimates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBillScenarioCommitmentModifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::ListBillScenarioCommitmentModifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBillScenarios {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::ListBillScenarios', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBillScenarioUsageModifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::ListBillScenarioUsageModifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkloadEstimates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::ListWorkloadEstimates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkloadEstimateUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::ListWorkloadEstimateUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBillEstimate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::UpdateBillEstimate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBillScenario {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::UpdateBillScenario', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePreferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::UpdatePreferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateWorkloadEstimate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::BCMPricingCalculator::UpdateWorkloadEstimate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllBillEstimateCommitments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBillEstimateCommitments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBillEstimateCommitments(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListBillEstimateCommitments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllBillEstimateInputCommitmentModifications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBillEstimateInputCommitmentModifications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBillEstimateInputCommitmentModifications(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListBillEstimateInputCommitmentModifications(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllBillEstimateInputUsageModifications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBillEstimateInputUsageModifications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBillEstimateInputUsageModifications(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListBillEstimateInputUsageModifications(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllBillEstimateLineItems {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBillEstimateLineItems(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBillEstimateLineItems(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListBillEstimateLineItems(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllBillEstimates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBillEstimates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBillEstimates(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListBillEstimates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllBillScenarioCommitmentModifications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBillScenarioCommitmentModifications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBillScenarioCommitmentModifications(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListBillScenarioCommitmentModifications(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllBillScenarios {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBillScenarios(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBillScenarios(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListBillScenarios(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllBillScenarioUsageModifications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBillScenarioUsageModifications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBillScenarioUsageModifications(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListBillScenarioUsageModifications(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllWorkloadEstimates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkloadEstimates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWorkloadEstimates(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListWorkloadEstimates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllWorkloadEstimateUsage {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkloadEstimateUsage(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWorkloadEstimateUsage(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListWorkloadEstimateUsage(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }


  sub operations { qw/BatchCreateBillScenarioCommitmentModification BatchCreateBillScenarioUsageModification BatchCreateWorkloadEstimateUsage BatchDeleteBillScenarioCommitmentModification BatchDeleteBillScenarioUsageModification BatchDeleteWorkloadEstimateUsage BatchUpdateBillScenarioCommitmentModification BatchUpdateBillScenarioUsageModification BatchUpdateWorkloadEstimateUsage CreateBillEstimate CreateBillScenario CreateWorkloadEstimate DeleteBillEstimate DeleteBillScenario DeleteWorkloadEstimate GetBillEstimate GetBillScenario GetPreferences GetWorkloadEstimate ListBillEstimateCommitments ListBillEstimateInputCommitmentModifications ListBillEstimateInputUsageModifications ListBillEstimateLineItems ListBillEstimates ListBillScenarioCommitmentModifications ListBillScenarios ListBillScenarioUsageModifications ListTagsForResource ListWorkloadEstimates ListWorkloadEstimateUsage TagResource UntagResource UpdateBillEstimate UpdateBillScenario UpdatePreferences UpdateWorkloadEstimate / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator - Perl Interface to AWS AWS Billing and Cost Management Pricing Calculator

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('BCMPricingCalculator');
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

You can use the Pricing Calculator API to programmatically create
estimates for your planned cloud use. You can model usage and
commitments such as Savings Plans and Reserved Instances, and generate
estimated costs using your discounts and benefit sharing preferences.

The Pricing Calculator API provides the following endpoint:

=over

=item *

C<https://bcm-pricing-calculator.us-east-1.api.aws>

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-pricing-calculator-2024-06-19>


=head1 METHODS

=head2 BatchCreateBillScenarioCommitmentModification

=over

=item BillScenarioId => Str

=item CommitmentModifications => ArrayRef[L<Paws::BCMPricingCalculator::BatchCreateBillScenarioCommitmentModificationEntry>]

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::BatchCreateBillScenarioCommitmentModification>

Returns: a L<Paws::BCMPricingCalculator::BatchCreateBillScenarioCommitmentModificationResponse> instance

Create Compute Savings Plans, EC2 Instance Savings Plans, or EC2
Reserved Instances commitments that you want to model in a Bill
Scenario.

The C<BatchCreateBillScenarioCommitmentModification> operation doesn't
have its own IAM permission. To authorize this operation for Amazon Web
Services principals, include the permission
C<bcm-pricing-calculator:CreateBillScenarioCommitmentModification> in
your policies.


=head2 BatchCreateBillScenarioUsageModification

=over

=item BillScenarioId => Str

=item UsageModifications => ArrayRef[L<Paws::BCMPricingCalculator::BatchCreateBillScenarioUsageModificationEntry>]

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::BatchCreateBillScenarioUsageModification>

Returns: a L<Paws::BCMPricingCalculator::BatchCreateBillScenarioUsageModificationResponse> instance

Create Amazon Web Services service usage that you want to model in a
Bill Scenario.

The C<BatchCreateBillScenarioUsageModification> operation doesn't have
its own IAM permission. To authorize this operation for Amazon Web
Services principals, include the permission
C<bcm-pricing-calculator:CreateBillScenarioUsageModification> in your
policies.


=head2 BatchCreateWorkloadEstimateUsage

=over

=item Usage => ArrayRef[L<Paws::BCMPricingCalculator::BatchCreateWorkloadEstimateUsageEntry>]

=item WorkloadEstimateId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::BatchCreateWorkloadEstimateUsage>

Returns: a L<Paws::BCMPricingCalculator::BatchCreateWorkloadEstimateUsageResponse> instance

Create Amazon Web Services service usage that you want to model in a
Workload Estimate.

The C<BatchCreateWorkloadEstimateUsage> operation doesn't have its own
IAM permission. To authorize this operation for Amazon Web Services
principals, include the permission
C<bcm-pricing-calculator:CreateWorkloadEstimateUsage> in your policies.


=head2 BatchDeleteBillScenarioCommitmentModification

=over

=item BillScenarioId => Str

=item Ids => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::BatchDeleteBillScenarioCommitmentModification>

Returns: a L<Paws::BCMPricingCalculator::BatchDeleteBillScenarioCommitmentModificationResponse> instance

Delete commitment that you have created in a Bill Scenario. You can
only delete a commitment that you had added and cannot model deletion
(or removal) of a existing commitment. If you want model deletion of an
existing commitment, see the negate
BillScenarioCommitmentModificationAction
(https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AWSBCMPricingCalculator_BillScenarioCommitmentModificationAction.html)
of BatchCreateBillScenarioCommitmentModification
(https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AWSBCMPricingCalculator_BatchCreateBillScenarioUsageModification.html)
operation.

The C<BatchDeleteBillScenarioCommitmentModification> operation doesn't
have its own IAM permission. To authorize this operation for Amazon Web
Services principals, include the permission
C<bcm-pricing-calculator:DeleteBillScenarioCommitmentModification> in
your policies.


=head2 BatchDeleteBillScenarioUsageModification

=over

=item BillScenarioId => Str

=item Ids => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::BatchDeleteBillScenarioUsageModification>

Returns: a L<Paws::BCMPricingCalculator::BatchDeleteBillScenarioUsageModificationResponse> instance

Delete usage that you have created in a Bill Scenario. You can only
delete usage that you had added and cannot model deletion (or removal)
of a existing usage. If you want model removal of an existing usage,
see BatchUpdateBillScenarioUsageModification
(https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AWSBCMPricingCalculator_BatchUpdateBillScenarioUsageModification.html).

The C<BatchDeleteBillScenarioUsageModification> operation doesn't have
its own IAM permission. To authorize this operation for Amazon Web
Services principals, include the permission
C<bcm-pricing-calculator:DeleteBillScenarioUsageModification> in your
policies.


=head2 BatchDeleteWorkloadEstimateUsage

=over

=item Ids => ArrayRef[Str|Undef]

=item WorkloadEstimateId => Str


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::BatchDeleteWorkloadEstimateUsage>

Returns: a L<Paws::BCMPricingCalculator::BatchDeleteWorkloadEstimateUsageResponse> instance

Delete usage that you have created in a Workload estimate. You can only
delete usage that you had added and cannot model deletion (or removal)
of a existing usage. If you want model removal of an existing usage,
see BatchUpdateWorkloadEstimateUsage
(https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AWSBCMPricingCalculator_BatchUpdateWorkloadEstimateUsage.html).

The C<BatchDeleteWorkloadEstimateUsage> operation doesn't have its own
IAM permission. To authorize this operation for Amazon Web Services
principals, include the permission
C<bcm-pricing-calculator:DeleteWorkloadEstimateUsage> in your policies.


=head2 BatchUpdateBillScenarioCommitmentModification

=over

=item BillScenarioId => Str

=item CommitmentModifications => ArrayRef[L<Paws::BCMPricingCalculator::BatchUpdateBillScenarioCommitmentModificationEntry>]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::BatchUpdateBillScenarioCommitmentModification>

Returns: a L<Paws::BCMPricingCalculator::BatchUpdateBillScenarioCommitmentModificationResponse> instance

Update a newly added or existing commitment. You can update the
commitment group based on a commitment ID and a Bill scenario ID.

The C<BatchUpdateBillScenarioCommitmentModification> operation doesn't
have its own IAM permission. To authorize this operation for Amazon Web
Services principals, include the permission
C<bcm-pricing-calculator:UpdateBillScenarioCommitmentModification> in
your policies.


=head2 BatchUpdateBillScenarioUsageModification

=over

=item BillScenarioId => Str

=item UsageModifications => ArrayRef[L<Paws::BCMPricingCalculator::BatchUpdateBillScenarioUsageModificationEntry>]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::BatchUpdateBillScenarioUsageModification>

Returns: a L<Paws::BCMPricingCalculator::BatchUpdateBillScenarioUsageModificationResponse> instance

Update a newly added or existing usage lines. You can update the usage
amounts, usage hour, and usage group based on a usage ID and a Bill
scenario ID.

The C<BatchUpdateBillScenarioUsageModification> operation doesn't have
its own IAM permission. To authorize this operation for Amazon Web
Services principals, include the permission
C<bcm-pricing-calculator:UpdateBillScenarioUsageModification> in your
policies.


=head2 BatchUpdateWorkloadEstimateUsage

=over

=item Usage => ArrayRef[L<Paws::BCMPricingCalculator::BatchUpdateWorkloadEstimateUsageEntry>]

=item WorkloadEstimateId => Str


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::BatchUpdateWorkloadEstimateUsage>

Returns: a L<Paws::BCMPricingCalculator::BatchUpdateWorkloadEstimateUsageResponse> instance

Update a newly added or existing usage lines. You can update the usage
amounts and usage group based on a usage ID and a Workload estimate ID.

The C<BatchUpdateWorkloadEstimateUsage> operation doesn't have its own
IAM permission. To authorize this operation for Amazon Web Services
principals, include the permission
C<bcm-pricing-calculator:UpdateWorkloadEstimateUsage> in your policies.


=head2 CreateBillEstimate

=over

=item BillScenarioId => Str

=item Name => Str

=item [ClientToken => Str]

=item [Tags => L<Paws::BCMPricingCalculator::Tags>]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::CreateBillEstimate>

Returns: a L<Paws::BCMPricingCalculator::CreateBillEstimateResponse> instance

Create a Bill estimate from a Bill scenario. In the Bill scenario you
can model usage addition, usage changes, and usage removal. You can
also model commitment addition and commitment removal. After all
changes in a Bill scenario is made satisfactorily, you can call this
API with a Bill scenario ID to generate the Bill estimate. Bill
estimate calculates the pre-tax cost for your consolidated billing
family, incorporating all modeled usage and commitments alongside
existing usage and commitments from your most recent completed
anniversary bill, with any applicable discounts applied.


=head2 CreateBillScenario

=over

=item Name => Str

=item [ClientToken => Str]

=item [Tags => L<Paws::BCMPricingCalculator::Tags>]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::CreateBillScenario>

Returns: a L<Paws::BCMPricingCalculator::CreateBillScenarioResponse> instance

Creates a new bill scenario to model potential changes to Amazon Web
Services usage and costs.


=head2 CreateWorkloadEstimate

=over

=item Name => Str

=item [ClientToken => Str]

=item [RateType => Str]

=item [Tags => L<Paws::BCMPricingCalculator::Tags>]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::CreateWorkloadEstimate>

Returns: a L<Paws::BCMPricingCalculator::CreateWorkloadEstimateResponse> instance

Creates a new workload estimate to model costs for a specific workload.


=head2 DeleteBillEstimate

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::DeleteBillEstimate>

Returns: a L<Paws::BCMPricingCalculator::DeleteBillEstimateResponse> instance

Deletes an existing bill estimate.


=head2 DeleteBillScenario

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::DeleteBillScenario>

Returns: a L<Paws::BCMPricingCalculator::DeleteBillScenarioResponse> instance

Deletes an existing bill scenario.


=head2 DeleteWorkloadEstimate

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::DeleteWorkloadEstimate>

Returns: a L<Paws::BCMPricingCalculator::DeleteWorkloadEstimateResponse> instance

Deletes an existing workload estimate.


=head2 GetBillEstimate

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::GetBillEstimate>

Returns: a L<Paws::BCMPricingCalculator::GetBillEstimateResponse> instance

Retrieves details of a specific bill estimate.


=head2 GetBillScenario

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::GetBillScenario>

Returns: a L<Paws::BCMPricingCalculator::GetBillScenarioResponse> instance

Retrieves details of a specific bill scenario.


=head2 GetPreferences






Each argument is described in detail in: L<Paws::BCMPricingCalculator::GetPreferences>

Returns: a L<Paws::BCMPricingCalculator::GetPreferencesResponse> instance

Retrieves the current preferences for Pricing Calculator.


=head2 GetWorkloadEstimate

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::GetWorkloadEstimate>

Returns: a L<Paws::BCMPricingCalculator::GetWorkloadEstimateResponse> instance

Retrieves details of a specific workload estimate.


=head2 ListBillEstimateCommitments

=over

=item BillEstimateId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::ListBillEstimateCommitments>

Returns: a L<Paws::BCMPricingCalculator::ListBillEstimateCommitmentsResponse> instance

Lists the commitments associated with a bill estimate.


=head2 ListBillEstimateInputCommitmentModifications

=over

=item BillEstimateId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::ListBillEstimateInputCommitmentModifications>

Returns: a L<Paws::BCMPricingCalculator::ListBillEstimateInputCommitmentModificationsResponse> instance

Lists the input commitment modifications associated with a bill
estimate.


=head2 ListBillEstimateInputUsageModifications

=over

=item BillEstimateId => Str

=item [Filters => ArrayRef[L<Paws::BCMPricingCalculator::ListUsageFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::ListBillEstimateInputUsageModifications>

Returns: a L<Paws::BCMPricingCalculator::ListBillEstimateInputUsageModificationsResponse> instance

Lists the input usage modifications associated with a bill estimate.


=head2 ListBillEstimateLineItems

=over

=item BillEstimateId => Str

=item [Filters => ArrayRef[L<Paws::BCMPricingCalculator::ListBillEstimateLineItemsFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::ListBillEstimateLineItems>

Returns: a L<Paws::BCMPricingCalculator::ListBillEstimateLineItemsResponse> instance

Lists the line items associated with a bill estimate.


=head2 ListBillEstimates

=over

=item [CreatedAtFilter => L<Paws::BCMPricingCalculator::FilterTimestamp>]

=item [ExpiresAtFilter => L<Paws::BCMPricingCalculator::FilterTimestamp>]

=item [Filters => ArrayRef[L<Paws::BCMPricingCalculator::ListBillEstimatesFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::ListBillEstimates>

Returns: a L<Paws::BCMPricingCalculator::ListBillEstimatesResponse> instance

Lists all bill estimates for the account.


=head2 ListBillScenarioCommitmentModifications

=over

=item BillScenarioId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::ListBillScenarioCommitmentModifications>

Returns: a L<Paws::BCMPricingCalculator::ListBillScenarioCommitmentModificationsResponse> instance

Lists the commitment modifications associated with a bill scenario.


=head2 ListBillScenarios

=over

=item [CreatedAtFilter => L<Paws::BCMPricingCalculator::FilterTimestamp>]

=item [ExpiresAtFilter => L<Paws::BCMPricingCalculator::FilterTimestamp>]

=item [Filters => ArrayRef[L<Paws::BCMPricingCalculator::ListBillScenariosFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::ListBillScenarios>

Returns: a L<Paws::BCMPricingCalculator::ListBillScenariosResponse> instance

Lists all bill scenarios for the account.


=head2 ListBillScenarioUsageModifications

=over

=item BillScenarioId => Str

=item [Filters => ArrayRef[L<Paws::BCMPricingCalculator::ListUsageFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::ListBillScenarioUsageModifications>

Returns: a L<Paws::BCMPricingCalculator::ListBillScenarioUsageModificationsResponse> instance

Lists the usage modifications associated with a bill scenario.


=head2 ListTagsForResource

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::ListTagsForResource>

Returns: a L<Paws::BCMPricingCalculator::ListTagsForResourceResponse> instance

Lists all tags associated with a specified resource.


=head2 ListWorkloadEstimates

=over

=item [CreatedAtFilter => L<Paws::BCMPricingCalculator::FilterTimestamp>]

=item [ExpiresAtFilter => L<Paws::BCMPricingCalculator::FilterTimestamp>]

=item [Filters => ArrayRef[L<Paws::BCMPricingCalculator::ListWorkloadEstimatesFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::ListWorkloadEstimates>

Returns: a L<Paws::BCMPricingCalculator::ListWorkloadEstimatesResponse> instance

Lists all workload estimates for the account.


=head2 ListWorkloadEstimateUsage

=over

=item WorkloadEstimateId => Str

=item [Filters => ArrayRef[L<Paws::BCMPricingCalculator::ListUsageFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::ListWorkloadEstimateUsage>

Returns: a L<Paws::BCMPricingCalculator::ListWorkloadEstimateUsageResponse> instance

Lists the usage associated with a workload estimate.


=head2 TagResource

=over

=item Arn => Str

=item Tags => L<Paws::BCMPricingCalculator::Tags>


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::TagResource>

Returns: a L<Paws::BCMPricingCalculator::TagResourceResponse> instance

Adds one or more tags to a specified resource.


=head2 UntagResource

=over

=item Arn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::UntagResource>

Returns: a L<Paws::BCMPricingCalculator::UntagResourceResponse> instance

Removes one or more tags from a specified resource.


=head2 UpdateBillEstimate

=over

=item Identifier => Str

=item [ExpiresAt => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::UpdateBillEstimate>

Returns: a L<Paws::BCMPricingCalculator::UpdateBillEstimateResponse> instance

Updates an existing bill estimate.


=head2 UpdateBillScenario

=over

=item Identifier => Str

=item [ExpiresAt => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::UpdateBillScenario>

Returns: a L<Paws::BCMPricingCalculator::UpdateBillScenarioResponse> instance

Updates an existing bill scenario.


=head2 UpdatePreferences

=over

=item [ManagementAccountRateTypeSelections => ArrayRef[Str|Undef]]

=item [MemberAccountRateTypeSelections => ArrayRef[Str|Undef]]

=item [StandaloneAccountRateTypeSelections => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::UpdatePreferences>

Returns: a L<Paws::BCMPricingCalculator::UpdatePreferencesResponse> instance

Updates the preferences for Pricing Calculator.


=head2 UpdateWorkloadEstimate

=over

=item Identifier => Str

=item [ExpiresAt => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::BCMPricingCalculator::UpdateWorkloadEstimate>

Returns: a L<Paws::BCMPricingCalculator::UpdateWorkloadEstimateResponse> instance

Updates an existing workload estimate.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllBillEstimateCommitments(sub { },BillEstimateId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllBillEstimateCommitments(BillEstimateId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::BCMPricingCalculator::ListBillEstimateCommitmentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBillEstimateInputCommitmentModifications(sub { },BillEstimateId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllBillEstimateInputCommitmentModifications(BillEstimateId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::BCMPricingCalculator::ListBillEstimateInputCommitmentModificationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBillEstimateInputUsageModifications(sub { },BillEstimateId => Str, [Filters => ArrayRef[L<Paws::BCMPricingCalculator::ListUsageFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllBillEstimateInputUsageModifications(BillEstimateId => Str, [Filters => ArrayRef[L<Paws::BCMPricingCalculator::ListUsageFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::BCMPricingCalculator::ListBillEstimateInputUsageModificationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBillEstimateLineItems(sub { },BillEstimateId => Str, [Filters => ArrayRef[L<Paws::BCMPricingCalculator::ListBillEstimateLineItemsFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllBillEstimateLineItems(BillEstimateId => Str, [Filters => ArrayRef[L<Paws::BCMPricingCalculator::ListBillEstimateLineItemsFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::BCMPricingCalculator::ListBillEstimateLineItemsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBillEstimates(sub { },[CreatedAtFilter => L<Paws::BCMPricingCalculator::FilterTimestamp>, ExpiresAtFilter => L<Paws::BCMPricingCalculator::FilterTimestamp>, Filters => ArrayRef[L<Paws::BCMPricingCalculator::ListBillEstimatesFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllBillEstimates([CreatedAtFilter => L<Paws::BCMPricingCalculator::FilterTimestamp>, ExpiresAtFilter => L<Paws::BCMPricingCalculator::FilterTimestamp>, Filters => ArrayRef[L<Paws::BCMPricingCalculator::ListBillEstimatesFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::BCMPricingCalculator::ListBillEstimatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBillScenarioCommitmentModifications(sub { },BillScenarioId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllBillScenarioCommitmentModifications(BillScenarioId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::BCMPricingCalculator::ListBillScenarioCommitmentModificationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBillScenarios(sub { },[CreatedAtFilter => L<Paws::BCMPricingCalculator::FilterTimestamp>, ExpiresAtFilter => L<Paws::BCMPricingCalculator::FilterTimestamp>, Filters => ArrayRef[L<Paws::BCMPricingCalculator::ListBillScenariosFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllBillScenarios([CreatedAtFilter => L<Paws::BCMPricingCalculator::FilterTimestamp>, ExpiresAtFilter => L<Paws::BCMPricingCalculator::FilterTimestamp>, Filters => ArrayRef[L<Paws::BCMPricingCalculator::ListBillScenariosFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::BCMPricingCalculator::ListBillScenariosResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllBillScenarioUsageModifications(sub { },BillScenarioId => Str, [Filters => ArrayRef[L<Paws::BCMPricingCalculator::ListUsageFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllBillScenarioUsageModifications(BillScenarioId => Str, [Filters => ArrayRef[L<Paws::BCMPricingCalculator::ListUsageFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::BCMPricingCalculator::ListBillScenarioUsageModificationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkloadEstimates(sub { },[CreatedAtFilter => L<Paws::BCMPricingCalculator::FilterTimestamp>, ExpiresAtFilter => L<Paws::BCMPricingCalculator::FilterTimestamp>, Filters => ArrayRef[L<Paws::BCMPricingCalculator::ListWorkloadEstimatesFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllWorkloadEstimates([CreatedAtFilter => L<Paws::BCMPricingCalculator::FilterTimestamp>, ExpiresAtFilter => L<Paws::BCMPricingCalculator::FilterTimestamp>, Filters => ArrayRef[L<Paws::BCMPricingCalculator::ListWorkloadEstimatesFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::BCMPricingCalculator::ListWorkloadEstimatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkloadEstimateUsage(sub { },WorkloadEstimateId => Str, [Filters => ArrayRef[L<Paws::BCMPricingCalculator::ListUsageFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllWorkloadEstimateUsage(WorkloadEstimateId => Str, [Filters => ArrayRef[L<Paws::BCMPricingCalculator::ListUsageFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::BCMPricingCalculator::ListWorkloadEstimateUsageResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

