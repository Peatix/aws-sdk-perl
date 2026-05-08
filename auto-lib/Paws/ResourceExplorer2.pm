package Paws::ResourceExplorer2;
  use Moose;
  sub service { 'resource-explorer-2' }
  sub signing_name { 'resource-explorer-2' }
  sub version { '2022-07-28' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateDefaultView {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceExplorer2::AssociateDefaultView', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetView {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceExplorer2::BatchGetView', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceExplorer2::CreateIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateView {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceExplorer2::CreateView', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceExplorer2::DeleteIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteView {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceExplorer2::DeleteView', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateDefaultView {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceExplorer2::DisassociateDefaultView', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccountLevelServiceConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceExplorer2::GetAccountLevelServiceConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDefaultView {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceExplorer2::GetDefaultView', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceExplorer2::GetIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetManagedView {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceExplorer2::GetManagedView', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetView {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceExplorer2::GetView', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIndexes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceExplorer2::ListIndexes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIndexesForMembers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceExplorer2::ListIndexesForMembers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListManagedViews {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceExplorer2::ListManagedViews', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceExplorer2::ListResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSupportedResourceTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceExplorer2::ListSupportedResourceTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceExplorer2::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListViews {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceExplorer2::ListViews', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Search {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceExplorer2::Search', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceExplorer2::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceExplorer2::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIndexType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceExplorer2::UpdateIndexType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateView {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ResourceExplorer2::UpdateView', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllIndexes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIndexes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListIndexes(@_, NextToken => $next_result->NextToken);
        push @{ $result->Indexes }, @{ $next_result->Indexes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Indexes') foreach (@{ $result->Indexes });
        $result = $self->ListIndexes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Indexes') foreach (@{ $result->Indexes });
    }

    return undef
  }
  sub ListAllIndexesForMembers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIndexesForMembers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListIndexesForMembers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Indexes }, @{ $next_result->Indexes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Indexes') foreach (@{ $result->Indexes });
        $result = $self->ListIndexesForMembers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Indexes') foreach (@{ $result->Indexes });
    }

    return undef
  }
  sub ListAllManagedViews {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListManagedViews(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListManagedViews(@_, NextToken => $next_result->NextToken);
        push @{ $result->ManagedViews }, @{ $next_result->ManagedViews };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ManagedViews') foreach (@{ $result->ManagedViews });
        $result = $self->ListManagedViews(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ManagedViews') foreach (@{ $result->ManagedViews });
    }

    return undef
  }
  sub ListAllResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListResources(@_, NextToken => $next_result->NextToken);
        push @{ $result->Resources }, @{ $next_result->Resources };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Resources') foreach (@{ $result->Resources });
        $result = $self->ListResources(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Resources') foreach (@{ $result->Resources });
    }

    return undef
  }
  sub ListAllSupportedResourceTypes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSupportedResourceTypes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSupportedResourceTypes(@_, NextToken => $next_result->NextToken);
        push @{ $result->ResourceTypes }, @{ $next_result->ResourceTypes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ResourceTypes') foreach (@{ $result->ResourceTypes });
        $result = $self->ListSupportedResourceTypes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ResourceTypes') foreach (@{ $result->ResourceTypes });
    }

    return undef
  }
  sub ListAllViews {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListViews(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListViews(@_, NextToken => $next_result->NextToken);
        push @{ $result->Views }, @{ $next_result->Views };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Views') foreach (@{ $result->Views });
        $result = $self->ListViews(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Views') foreach (@{ $result->Views });
    }

    return undef
  }
  sub SearchAll {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->Search(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->Search(@_, NextToken => $next_result->NextToken);
        push @{ $result->Resources }, @{ $next_result->Resources };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Resources') foreach (@{ $result->Resources });
        $result = $self->Search(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Resources') foreach (@{ $result->Resources });
    }

    return undef
  }


  sub operations { qw/AssociateDefaultView BatchGetView CreateIndex CreateView DeleteIndex DeleteView DisassociateDefaultView GetAccountLevelServiceConfiguration GetDefaultView GetIndex GetManagedView GetView ListIndexes ListIndexesForMembers ListManagedViews ListResources ListSupportedResourceTypes ListTagsForResource ListViews Search TagResource UntagResource UpdateIndexType UpdateView / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2 - Perl Interface to AWS AWS Resource Explorer

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ResourceExplorer2');
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

Amazon Web Services Resource Explorer is a resource search and
discovery service. By using Resource Explorer, you can explore your
resources using an internet search engine-like experience. Examples of
resources include Amazon Relational Database Service (Amazon RDS)
instances, Amazon Simple Storage Service (Amazon S3) buckets, or Amazon
DynamoDB tables. You can search for your resources using resource
metadata like names, tags, and IDs. Resource Explorer can search across
all of the Amazon Web Services Regions in your account in which you
turn the service on, to simplify your cross-Region workloads.

Resource Explorer scans the resources in each of the Amazon Web
Services Regions in your Amazon Web Services account in which you turn
on Resource Explorer. Resource Explorer creates and maintains an index
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/getting-started-terms-and-concepts.html#term-index)
in each Region, with the details of that Region's resources.

You can search across all of the indexed Regions in your account
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html)
by designating one of your Amazon Web Services Regions to contain the
aggregator index for the account. When you promote a local index in a
Region to become the aggregator index for the account
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region-turn-on.html),
Resource Explorer automatically replicates the index information from
all local indexes in the other Regions to the aggregator index.
Therefore, the Region with the aggregator index has a copy of all
resource information for all Regions in the account where you turned on
Resource Explorer. As a result, views in the aggregator index Region
include resources from all of the indexed Regions in your account.

For more information about Amazon Web Services Resource Explorer,
including how to enable and configure the service, see the Amazon Web
Services Resource Explorer User Guide
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resource-explorer-2-2022-07-28>


=head1 METHODS

=head2 AssociateDefaultView

=over

=item ViewArn => Str


=back

Each argument is described in detail in: L<Paws::ResourceExplorer2::AssociateDefaultView>

Returns: a L<Paws::ResourceExplorer2::AssociateDefaultViewOutput> instance

Sets the specified view as the default for the Amazon Web Services
Region in which you call this operation. When a user performs a Search
that doesn't explicitly specify which view to use, then Amazon Web
Services Resource Explorer automatically chooses this default view for
searches performed in this Amazon Web Services Region.

If an Amazon Web Services Region doesn't have a default view
configured, then users must explicitly specify a view with every
C<Search> operation performed in that Region.


=head2 BatchGetView

=over

=item [ViewArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ResourceExplorer2::BatchGetView>

Returns: a L<Paws::ResourceExplorer2::BatchGetViewOutput> instance

Retrieves details about a list of views.


=head2 CreateIndex

=over

=item [ClientToken => Str]

=item [Tags => L<Paws::ResourceExplorer2::TagMap>]


=back

Each argument is described in detail in: L<Paws::ResourceExplorer2::CreateIndex>

Returns: a L<Paws::ResourceExplorer2::CreateIndexOutput> instance

Turns on Amazon Web Services Resource Explorer in the Amazon Web
Services Region in which you called this operation by creating an
index. Resource Explorer begins discovering the resources in this
Region and stores the details about the resources in the index so that
they can be queried by using the Search operation. You can create only
one index in a Region.

This operation creates only a I<local> index. To promote the local
index in one Amazon Web Services Region into the aggregator index for
the Amazon Web Services account, use the UpdateIndexType operation. For
more information, see Turning on cross-Region search by creating an
aggregator index
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html)
in the I<Amazon Web Services Resource Explorer User Guide>.

For more details about what happens when you turn on Resource Explorer
in an Amazon Web Services Region, see Turn on Resource Explorer to
index your resources in an Amazon Web Services Region
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-service-activate.html)
in the I<Amazon Web Services Resource Explorer User Guide>.

If this is the first Amazon Web Services Region in which you've created
an index for Resource Explorer, then this operation also creates a
service-linked role
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/security_iam_service-linked-roles.html)
in your Amazon Web Services account that allows Resource Explorer to
enumerate your resources to populate the index.

=over

=item *

B<Action>: C<resource-explorer-2:CreateIndex>

B<Resource>: The ARN of the index (as it will exist after the operation
completes) in the Amazon Web Services Region and account in which
you're trying to create the index. Use the wildcard character (C<*>) at
the end of the string to match the eventual UUID. For example, the
following C<Resource> element restricts the role or user to creating an
index in only the C<us-east-2> Region of the specified account.

C<"Resource":
"arn:aws:resource-explorer-2:us-west-2:I<E<lt>account-idE<gt>>:index/*">

Alternatively, you can use C<"Resource": "*"> to allow the role or user
to create an index in any Region.

=item *

B<Action>: C<iam:CreateServiceLinkedRole>

B<Resource>: No specific resource (*).

This permission is required only the first time you create an index to
turn on Resource Explorer in the account. Resource Explorer uses this
to create the service-linked role needed to index the resources in your
account
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/security_iam_service-linked-roles.html).
Resource Explorer uses the same service-linked role for all additional
indexes you create afterwards.

=back



=head2 CreateView

=over

=item ViewName => Str

=item [ClientToken => Str]

=item [Filters => L<Paws::ResourceExplorer2::SearchFilter>]

=item [IncludedProperties => ArrayRef[L<Paws::ResourceExplorer2::IncludedProperty>]]

=item [Scope => Str]

=item [Tags => L<Paws::ResourceExplorer2::TagMap>]


=back

Each argument is described in detail in: L<Paws::ResourceExplorer2::CreateView>

Returns: a L<Paws::ResourceExplorer2::CreateViewOutput> instance

Creates a view that users can query by using the Search operation.
Results from queries that you make using this view include only
resources that match the view's C<Filters>. For more information about
Amazon Web Services Resource Explorer views, see Managing views
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-views.html)
in the I<Amazon Web Services Resource Explorer User Guide>.

Only the principals with an IAM identity-based policy that grants
C<Allow> to the C<Search> action on a C<Resource> with the Amazon
resource name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of this view can Search using views you create with this operation.


=head2 DeleteIndex

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::ResourceExplorer2::DeleteIndex>

Returns: a L<Paws::ResourceExplorer2::DeleteIndexOutput> instance

Deletes the specified index and turns off Amazon Web Services Resource
Explorer in the specified Amazon Web Services Region. When you delete
an index, Resource Explorer stops discovering and indexing resources in
that Region. Resource Explorer also deletes all views in that Region.
These actions occur as asynchronous background tasks. You can check to
see when the actions are complete by using the GetIndex operation and
checking the C<Status> response value.

If the index you delete is the aggregator index for the Amazon Web
Services account, you must wait 24 hours before you can promote another
local index to be the aggregator index for the account. Users can't
perform account-wide searches using Resource Explorer until another
aggregator index is configured.


=head2 DeleteView

=over

=item ViewArn => Str


=back

Each argument is described in detail in: L<Paws::ResourceExplorer2::DeleteView>

Returns: a L<Paws::ResourceExplorer2::DeleteViewOutput> instance

Deletes the specified view.

If the specified view is the default view for its Amazon Web Services
Region, then all Search operations in that Region must explicitly
specify the view to use until you configure a new default by calling
the AssociateDefaultView operation.


=head2 DisassociateDefaultView

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::ResourceExplorer2::DisassociateDefaultView>

Returns: nothing

After you call this operation, the affected Amazon Web Services Region
no longer has a default view. All Search operations in that Region must
explicitly specify a view or the operation fails. You can configure a
new default by calling the AssociateDefaultView operation.

If an Amazon Web Services Region doesn't have a default view
configured, then users must explicitly specify a view with every
C<Search> operation performed in that Region.


=head2 GetAccountLevelServiceConfiguration

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::ResourceExplorer2::GetAccountLevelServiceConfiguration>

Returns: a L<Paws::ResourceExplorer2::GetAccountLevelServiceConfigurationOutput> instance

Retrieves the status of your account's Amazon Web Services service
access, and validates the service linked role required to access the
multi-account search feature. Only the management account can invoke
this API call.


=head2 GetDefaultView

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::ResourceExplorer2::GetDefaultView>

Returns: a L<Paws::ResourceExplorer2::GetDefaultViewOutput> instance

Retrieves the Amazon Resource Name (ARN) of the view that is the
default for the Amazon Web Services Region in which you call this
operation. You can then call GetView to retrieve the details of that
view.


=head2 GetIndex

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::ResourceExplorer2::GetIndex>

Returns: a L<Paws::ResourceExplorer2::GetIndexOutput> instance

Retrieves details about the Amazon Web Services Resource Explorer index
in the Amazon Web Services Region in which you invoked the operation.


=head2 GetManagedView

=over

=item ManagedViewArn => Str


=back

Each argument is described in detail in: L<Paws::ResourceExplorer2::GetManagedView>

Returns: a L<Paws::ResourceExplorer2::GetManagedViewOutput> instance

Retrieves details of the specified Amazon Web Services-managed view
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/aws-managed-views.html).


=head2 GetView

=over

=item ViewArn => Str


=back

Each argument is described in detail in: L<Paws::ResourceExplorer2::GetView>

Returns: a L<Paws::ResourceExplorer2::GetViewOutput> instance

Retrieves details of the specified view.


=head2 ListIndexes

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Regions => ArrayRef[Str|Undef]]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::ResourceExplorer2::ListIndexes>

Returns: a L<Paws::ResourceExplorer2::ListIndexesOutput> instance

Retrieves a list of all of the indexes in Amazon Web Services Regions
that are currently collecting resource information for Amazon Web
Services Resource Explorer.


=head2 ListIndexesForMembers

=over

=item AccountIdList => ArrayRef[Str|Undef]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ResourceExplorer2::ListIndexesForMembers>

Returns: a L<Paws::ResourceExplorer2::ListIndexesForMembersOutput> instance

Retrieves a list of a member's indexes in all Amazon Web Services
Regions that are currently collecting resource information for Amazon
Web Services Resource Explorer. Only the management account or a
delegated administrator with service access enabled can invoke this API
call.


=head2 ListManagedViews

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServicePrincipal => Str]


=back

Each argument is described in detail in: L<Paws::ResourceExplorer2::ListManagedViews>

Returns: a L<Paws::ResourceExplorer2::ListManagedViewsOutput> instance

Lists the Amazon resource names (ARNs) of the Amazon Web
Services-managed views
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/aws-managed-views.html)
available in the Amazon Web Services Region in which you call this
operation.


=head2 ListResources

=over

=item [Filters => L<Paws::ResourceExplorer2::SearchFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ViewArn => Str]


=back

Each argument is described in detail in: L<Paws::ResourceExplorer2::ListResources>

Returns: a L<Paws::ResourceExplorer2::ListResourcesOutput> instance

Returns a list of resources and their details that match the specified
criteria. This query must use a view. If you donE<rsquo>t explicitly
specify a view, then Resource Explorer uses the default view for the
Amazon Web Services Region in which you call this operation.


=head2 ListSupportedResourceTypes

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ResourceExplorer2::ListSupportedResourceTypes>

Returns: a L<Paws::ResourceExplorer2::ListSupportedResourceTypesOutput> instance

Retrieves a list of all resource types currently supported by Amazon
Web Services Resource Explorer.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::ResourceExplorer2::ListTagsForResource>

Returns: a L<Paws::ResourceExplorer2::ListTagsForResourceOutput> instance

Lists the tags that are attached to the specified resource.


=head2 ListViews

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ResourceExplorer2::ListViews>

Returns: a L<Paws::ResourceExplorer2::ListViewsOutput> instance

Lists the Amazon resource names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the views available in the Amazon Web Services Region in which you
call this operation.

Always check the C<NextToken> response parameter for a C<null> value
when calling a paginated operation. These operations can occasionally
return an empty set of results even when there are more results
available. The C<NextToken> response parameter value is C<null> I<only>
when there are no more results to display.


=head2 Search

=over

=item QueryString => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ViewArn => Str]


=back

Each argument is described in detail in: L<Paws::ResourceExplorer2::Search>

Returns: a L<Paws::ResourceExplorer2::SearchOutput> instance

Searches for resources and displays details about all resources that
match the specified criteria. You must specify a query string.

All search queries must use a view. If you don't explicitly specify a
view, then Amazon Web Services Resource Explorer uses the default view
for the Amazon Web Services Region in which you call this operation.
The results are the logical intersection of the results that match both
the C<QueryString> parameter supplied to this operation and the
C<SearchFilter> parameter attached to the view.

For the complete syntax supported by the C<QueryString> parameter, see
Search query syntax reference for Resource Explorer
(https://docs.aws.amazon.com/resource-explorer/latest/APIReference/about-query-syntax.html).

If your search results are empty, or are missing results that you think
should be there, see Troubleshooting Resource Explorer search
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/troubleshooting_search.html).


=head2 TagResource

=over

=item ResourceArn => Str

=item [Tags => L<Paws::ResourceExplorer2::TagMap>]


=back

Each argument is described in detail in: L<Paws::ResourceExplorer2::TagResource>

Returns: a L<Paws::ResourceExplorer2::TagResourceOutput> instance

Adds one or more tag key and value pairs to an Amazon Web Services
Resource Explorer view or index.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ResourceExplorer2::UntagResource>

Returns: a L<Paws::ResourceExplorer2::UntagResourceOutput> instance

Removes one or more tag key and value pairs from an Amazon Web Services
Resource Explorer view or index.


=head2 UpdateIndexType

=over

=item Arn => Str

=item Type => Str


=back

Each argument is described in detail in: L<Paws::ResourceExplorer2::UpdateIndexType>

Returns: a L<Paws::ResourceExplorer2::UpdateIndexTypeOutput> instance

Changes the type of the index from one of the following types to the
other. For more information about indexes and the role they perform in
Amazon Web Services Resource Explorer, see Turning on cross-Region
search by creating an aggregator index
(https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html)
in the I<Amazon Web Services Resource Explorer User Guide>.

=over

=item *

B<C<AGGREGATOR> index type>

The index contains information about resources from all Amazon Web
Services Regions in the Amazon Web Services account in which you've
created a Resource Explorer index. Resource information from all other
Regions is replicated to this Region's index.

When you change the index type to C<AGGREGATOR>, Resource Explorer
turns on replication of all discovered resource information from the
other Amazon Web Services Regions in your account to this index. You
can then, from this Region only, perform resource search queries that
span all Amazon Web Services Regions in the Amazon Web Services
account. Turning on replication from all other Regions is performed by
asynchronous background tasks. You can check the status of the
asynchronous tasks by using the GetIndex operation. When the
asynchronous tasks complete, the C<Status> response of that operation
changes from C<UPDATING> to C<ACTIVE>. After that, you can start to see
results from other Amazon Web Services Regions in query results.
However, it can take several hours for replication from all other
Regions to complete.

You can have only one aggregator index per Amazon Web Services account.
Before you can promote a different index to be the aggregator index for
the account, you must first demote the existing aggregator index to
type C<LOCAL>.

=item *

B<C<LOCAL> index type>

The index contains information about resources in only the Amazon Web
Services Region in which the index exists. If an aggregator index in
another Region exists, then information in this local index is
replicated to the aggregator index.

When you change the index type to C<LOCAL>, Resource Explorer turns off
the replication of resource information from all other Amazon Web
Services Regions in the Amazon Web Services account to this Region. The
aggregator index remains in the C<UPDATING> state until all replication
with other Regions successfully stops. You can check the status of the
asynchronous task by using the GetIndex operation. When Resource
Explorer successfully stops all replication with other Regions, the
C<Status> response of that operation changes from C<UPDATING> to
C<ACTIVE>. Separately, the resource information from other Regions that
was previously stored in the index is deleted within 30 days by another
background task. Until that asynchronous task completes, some results
from other Regions can continue to appear in search results.

After you demote an aggregator index to a local index, you must wait 24
hours before you can promote another index to be the new aggregator
index for the account.

=back



=head2 UpdateView

=over

=item ViewArn => Str

=item [Filters => L<Paws::ResourceExplorer2::SearchFilter>]

=item [IncludedProperties => ArrayRef[L<Paws::ResourceExplorer2::IncludedProperty>]]


=back

Each argument is described in detail in: L<Paws::ResourceExplorer2::UpdateView>

Returns: a L<Paws::ResourceExplorer2::UpdateViewOutput> instance

Modifies some of the details of a view. You can change the filter
string and the list of included properties. You can't change the name
of the view.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllIndexes(sub { },[MaxResults => Int, NextToken => Str, Regions => ArrayRef[Str|Undef], Type => Str])

=head2 ListAllIndexes([MaxResults => Int, NextToken => Str, Regions => ArrayRef[Str|Undef], Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Indexes, passing the object as the first parameter, and the string 'Indexes' as the second parameter 

If not, it will return a a L<Paws::ResourceExplorer2::ListIndexesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIndexesForMembers(sub { },AccountIdList => ArrayRef[Str|Undef], [MaxResults => Int, NextToken => Str])

=head2 ListAllIndexesForMembers(AccountIdList => ArrayRef[Str|Undef], [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Indexes, passing the object as the first parameter, and the string 'Indexes' as the second parameter 

If not, it will return a a L<Paws::ResourceExplorer2::ListIndexesForMembersOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllManagedViews(sub { },[MaxResults => Int, NextToken => Str, ServicePrincipal => Str])

=head2 ListAllManagedViews([MaxResults => Int, NextToken => Str, ServicePrincipal => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ManagedViews, passing the object as the first parameter, and the string 'ManagedViews' as the second parameter 

If not, it will return a a L<Paws::ResourceExplorer2::ListManagedViewsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllResources(sub { },[Filters => L<Paws::ResourceExplorer2::SearchFilter>, MaxResults => Int, NextToken => Str, ViewArn => Str])

=head2 ListAllResources([Filters => L<Paws::ResourceExplorer2::SearchFilter>, MaxResults => Int, NextToken => Str, ViewArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Resources, passing the object as the first parameter, and the string 'Resources' as the second parameter 

If not, it will return a a L<Paws::ResourceExplorer2::ListResourcesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSupportedResourceTypes(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllSupportedResourceTypes([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ResourceTypes, passing the object as the first parameter, and the string 'ResourceTypes' as the second parameter 

If not, it will return a a L<Paws::ResourceExplorer2::ListSupportedResourceTypesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllViews(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllViews([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Views, passing the object as the first parameter, and the string 'Views' as the second parameter 

If not, it will return a a L<Paws::ResourceExplorer2::ListViewsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAll(sub { },QueryString => Str, [MaxResults => Int, NextToken => Str, ViewArn => Str])

=head2 SearchAll(QueryString => Str, [MaxResults => Int, NextToken => Str, ViewArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Resources, passing the object as the first parameter, and the string 'Resources' as the second parameter 

If not, it will return a a L<Paws::ResourceExplorer2::SearchOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

