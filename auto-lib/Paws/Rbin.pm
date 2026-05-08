package Paws::Rbin;
  use Moose;
  sub service { 'rbin' }
  sub signing_name { 'rbin' }
  sub version { '2021-06-15' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rbin::CreateRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rbin::DeleteRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rbin::GetRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rbin::ListRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rbin::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub LockRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rbin::LockRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rbin::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnlockRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rbin::UnlockRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rbin::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Rbin::UpdateRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRules(@_, NextToken => $next_result->NextToken);
        push @{ $result->Rules }, @{ $next_result->Rules };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Rules') foreach (@{ $result->Rules });
        $result = $self->ListRules(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Rules') foreach (@{ $result->Rules });
    }

    return undef
  }


  sub operations { qw/CreateRule DeleteRule GetRule ListRules ListTagsForResource LockRule TagResource UnlockRule UntagResource UpdateRule / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Rbin - Perl Interface to AWS Amazon Recycle Bin

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Rbin');
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

This is the I<Recycle Bin API Reference>. This documentation provides
descriptions and syntax for each of the actions and data types in
Recycle Bin.

Recycle Bin is a resource recovery feature that enables you to restore
accidentally deleted snapshots and EBS-backed AMIs. When using Recycle
Bin, if your resources are deleted, they are retained in the Recycle
Bin for a time period that you specify.

You can restore a resource from the Recycle Bin at any time before its
retention period expires. After you restore a resource from the Recycle
Bin, the resource is removed from the Recycle Bin, and you can then use
it in the same way you use any other resource of that type in your
account. If the retention period expires and the resource is not
restored, the resource is permanently deleted from the Recycle Bin and
is no longer available for recovery. For more information about Recycle
Bin, see Recycle Bin
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin.html)
in the I<Amazon Elastic Compute Cloud User Guide>.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateRule

=over

=item ResourceType => Str

=item RetentionPeriod => L<Paws::Rbin::RetentionPeriod>

=item [Description => Str]

=item [ExcludeResourceTags => ArrayRef[L<Paws::Rbin::ResourceTag>]]

=item [LockConfiguration => L<Paws::Rbin::LockConfiguration>]

=item [ResourceTags => ArrayRef[L<Paws::Rbin::ResourceTag>]]

=item [Tags => ArrayRef[L<Paws::Rbin::Tag>]]


=back

Each argument is described in detail in: L<Paws::Rbin::CreateRule>

Returns: a L<Paws::Rbin::CreateRuleResponse> instance

Creates a Recycle Bin retention rule. You can create two types of
retention rules:

=over

=item *

B<Tag-level retention rules> - These retention rules use resource tags
to identify the resources to protect. For each retention rule, you
specify one or more tag key and value pairs. Resources (of the
specified type) that have at least one of these tag key and value pairs
are automatically retained in the Recycle Bin upon deletion. Use this
type of retention rule to protect specific resources in your account
based on their tags.

=item *

B<Region-level retention rules> - These retention rules, by default,
apply to all of the resources (of the specified type) in the Region,
even if the resources are not tagged. However, you can specify
exclusion tags to exclude resources that have specific tags. Use this
type of retention rule to protect all resources of a specific type in a
Region.

=back

For more information, see Create Recycle Bin retention rules
(https://docs.aws.amazon.com/ebs/latest/userguide/recycle-bin.html) in
the I<Amazon EBS User Guide>.


=head2 DeleteRule

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::Rbin::DeleteRule>

Returns: a L<Paws::Rbin::DeleteRuleResponse> instance

Deletes a Recycle Bin retention rule. For more information, see Delete
Recycle Bin retention rules
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-delete-rule)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 GetRule

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::Rbin::GetRule>

Returns: a L<Paws::Rbin::GetRuleResponse> instance

Gets information about a Recycle Bin retention rule.


=head2 ListRules

=over

=item ResourceType => Str

=item [ExcludeResourceTags => ArrayRef[L<Paws::Rbin::ResourceTag>]]

=item [LockState => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceTags => ArrayRef[L<Paws::Rbin::ResourceTag>]]


=back

Each argument is described in detail in: L<Paws::Rbin::ListRules>

Returns: a L<Paws::Rbin::ListRulesResponse> instance

Lists the Recycle Bin retention rules in the Region.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Rbin::ListTagsForResource>

Returns: a L<Paws::Rbin::ListTagsForResourceResponse> instance

Lists the tags assigned to a retention rule.


=head2 LockRule

=over

=item Identifier => Str

=item LockConfiguration => L<Paws::Rbin::LockConfiguration>


=back

Each argument is described in detail in: L<Paws::Rbin::LockRule>

Returns: a L<Paws::Rbin::LockRuleResponse> instance

Locks a Region-level retention rule. A locked retention rule can't be
modified or deleted.

You can't lock tag-level retention rules, or Region-level retention
rules that have exclusion tags.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::Rbin::Tag>]


=back

Each argument is described in detail in: L<Paws::Rbin::TagResource>

Returns: a L<Paws::Rbin::TagResourceResponse> instance

Assigns tags to the specified retention rule.


=head2 UnlockRule

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::Rbin::UnlockRule>

Returns: a L<Paws::Rbin::UnlockRuleResponse> instance

Unlocks a retention rule. After a retention rule is unlocked, it can be
modified or deleted only after the unlock delay period expires.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Rbin::UntagResource>

Returns: a L<Paws::Rbin::UntagResourceResponse> instance

Unassigns a tag from a retention rule.


=head2 UpdateRule

=over

=item Identifier => Str

=item [Description => Str]

=item [ExcludeResourceTags => ArrayRef[L<Paws::Rbin::ResourceTag>]]

=item [ResourceTags => ArrayRef[L<Paws::Rbin::ResourceTag>]]

=item [ResourceType => Str]

=item [RetentionPeriod => L<Paws::Rbin::RetentionPeriod>]


=back

Each argument is described in detail in: L<Paws::Rbin::UpdateRule>

Returns: a L<Paws::Rbin::UpdateRuleResponse> instance

Updates an existing Recycle Bin retention rule. You can update a
retention rule's description, resource tags, and retention period at
any time after creation. You can't update a retention rule's resource
type after creation. For more information, see Update Recycle Bin
retention rules
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-update-rule)
in the I<Amazon Elastic Compute Cloud User Guide>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllRules(sub { },ResourceType => Str, [ExcludeResourceTags => ArrayRef[L<Paws::Rbin::ResourceTag>], LockState => Str, MaxResults => Int, NextToken => Str, ResourceTags => ArrayRef[L<Paws::Rbin::ResourceTag>]])

=head2 ListAllRules(ResourceType => Str, [ExcludeResourceTags => ArrayRef[L<Paws::Rbin::ResourceTag>], LockState => Str, MaxResults => Int, NextToken => Str, ResourceTags => ArrayRef[L<Paws::Rbin::ResourceTag>]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Rules, passing the object as the first parameter, and the string 'Rules' as the second parameter 

If not, it will return a a L<Paws::Rbin::ListRulesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

