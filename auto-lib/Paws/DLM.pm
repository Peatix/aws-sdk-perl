package Paws::DLM;
  use Moose;
  sub service { 'dlm' }
  sub signing_name { 'dlm' }
  sub version { '2018-01-12' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateLifecyclePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DLM::CreateLifecyclePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLifecyclePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DLM::DeleteLifecyclePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLifecyclePolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DLM::GetLifecyclePolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLifecyclePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DLM::GetLifecyclePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DLM::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DLM::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DLM::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLifecyclePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DLM::UpdateLifecyclePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateLifecyclePolicy DeleteLifecyclePolicy GetLifecyclePolicies GetLifecyclePolicy ListTagsForResource TagResource UntagResource UpdateLifecyclePolicy / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM - Perl Interface to AWS Amazon Data Lifecycle Manager

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('DLM');
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

Amazon Data Lifecycle Manager

With Amazon Data Lifecycle Manager, you can manage the lifecycle of
your Amazon Web Services resources. You create lifecycle policies,
which are used to automate operations on the specified resources.

Amazon Data Lifecycle Manager supports Amazon EBS volumes and
snapshots. For information about using Amazon Data Lifecycle Manager
with Amazon EBS, see Amazon Data Lifecycle Manager
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-lifecycle.html)
in the I<Amazon EC2 User Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dlm-2018-01-12>


=head1 METHODS

=head2 CreateLifecyclePolicy

=over

=item Description => Str

=item ExecutionRoleArn => Str

=item State => Str

=item [CopyTags => Bool]

=item [CreateInterval => Int]

=item [CrossRegionCopyTargets => ArrayRef[L<Paws::DLM::CrossRegionCopyTarget>]]

=item [DefaultPolicy => Str]

=item [Exclusions => L<Paws::DLM::Exclusions>]

=item [ExtendDeletion => Bool]

=item [PolicyDetails => L<Paws::DLM::PolicyDetails>]

=item [RetainInterval => Int]

=item [Tags => L<Paws::DLM::TagMap>]


=back

Each argument is described in detail in: L<Paws::DLM::CreateLifecyclePolicy>

Returns: a L<Paws::DLM::CreateLifecyclePolicyResponse> instance

Creates an Amazon Data Lifecycle Manager lifecycle policy. Amazon Data
Lifecycle Manager supports the following policy types:

=over

=item *

Custom EBS snapshot policy

=item *

Custom EBS-backed AMI policy

=item *

Cross-account copy event policy

=item *

Default policy for EBS snapshots

=item *

Default policy for EBS-backed AMIs

=back

For more information, see Default policies vs custom policies
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/policy-differences.html).

If you create a default policy, you can specify the request parameters
either in the request body, or in the PolicyDetails request structure,
but not both.


=head2 DeleteLifecyclePolicy

=over

=item PolicyId => Str


=back

Each argument is described in detail in: L<Paws::DLM::DeleteLifecyclePolicy>

Returns: a L<Paws::DLM::DeleteLifecyclePolicyResponse> instance

Deletes the specified lifecycle policy and halts the automated
operations that the policy specified.

For more information about deleting a policy, see Delete lifecycle
policies
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/view-modify-delete.html#delete).


=head2 GetLifecyclePolicies

=over

=item [DefaultPolicyType => Str]

=item [PolicyIds => ArrayRef[Str|Undef]]

=item [ResourceTypes => ArrayRef[Str|Undef]]

=item [State => Str]

=item [TagsToAdd => ArrayRef[Str|Undef]]

=item [TargetTags => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DLM::GetLifecyclePolicies>

Returns: a L<Paws::DLM::GetLifecyclePoliciesResponse> instance

Gets summary information about all or the specified data lifecycle
policies.

To get complete information about a policy, use GetLifecyclePolicy
(https://docs.aws.amazon.com/dlm/latest/APIReference/API_GetLifecyclePolicy.html).


=head2 GetLifecyclePolicy

=over

=item PolicyId => Str


=back

Each argument is described in detail in: L<Paws::DLM::GetLifecyclePolicy>

Returns: a L<Paws::DLM::GetLifecyclePolicyResponse> instance

Gets detailed information about the specified lifecycle policy.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::DLM::ListTagsForResource>

Returns: a L<Paws::DLM::ListTagsForResourceResponse> instance

Lists the tags for the specified resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::DLM::TagMap>


=back

Each argument is described in detail in: L<Paws::DLM::TagResource>

Returns: a L<Paws::DLM::TagResourceResponse> instance

Adds the specified tags to the specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::DLM::UntagResource>

Returns: a L<Paws::DLM::UntagResourceResponse> instance

Removes the specified tags from the specified resource.


=head2 UpdateLifecyclePolicy

=over

=item PolicyId => Str

=item [CopyTags => Bool]

=item [CreateInterval => Int]

=item [CrossRegionCopyTargets => ArrayRef[L<Paws::DLM::CrossRegionCopyTarget>]]

=item [Description => Str]

=item [Exclusions => L<Paws::DLM::Exclusions>]

=item [ExecutionRoleArn => Str]

=item [ExtendDeletion => Bool]

=item [PolicyDetails => L<Paws::DLM::PolicyDetails>]

=item [RetainInterval => Int]

=item [State => Str]


=back

Each argument is described in detail in: L<Paws::DLM::UpdateLifecyclePolicy>

Returns: a L<Paws::DLM::UpdateLifecyclePolicyResponse> instance

Updates the specified lifecycle policy.

For more information about updating a policy, see Modify lifecycle
policies
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/view-modify-delete.html#modify).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

