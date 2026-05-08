package Paws::OAM;
  use Moose;
  sub service { 'oam' }
  sub signing_name { 'oam' }
  sub version { '2022-06-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OAM::CreateLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OAM::CreateSink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OAM::DeleteLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OAM::DeleteSink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OAM::GetLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OAM::GetSink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSinkPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OAM::GetSinkPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAttachedLinks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OAM::ListAttachedLinks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLinks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OAM::ListLinks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSinks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OAM::ListSinks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OAM::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutSinkPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OAM::PutSinkPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OAM::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OAM::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OAM::UpdateLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAttachedLinks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAttachedLinks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAttachedLinks(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListAttachedLinks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllLinks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLinks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLinks(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListLinks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllSinks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSinks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSinks(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListSinks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }


  sub operations { qw/CreateLink CreateSink DeleteLink DeleteSink GetLink GetSink GetSinkPolicy ListAttachedLinks ListLinks ListSinks ListTagsForResource PutSinkPolicy TagResource UntagResource UpdateLink / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::OAM - Perl Interface to AWS CloudWatch Observability Access Manager

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('OAM');
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

Use Amazon CloudWatch Observability Access Manager to create and manage
links between source accounts and monitoring accounts by using
I<CloudWatch cross-account observability>. With CloudWatch
cross-account observability, you can monitor and troubleshoot
applications that span multiple accounts within a Region. Seamlessly
search, visualize, and analyze your metrics, logs, traces, Application
Signals services, service level objectives (SLOs), Application Insights
applications, and internet monitors in any of the linked accounts
without account boundaries.

Set up one or more Amazon Web Services accounts as I<monitoring
accounts> and link them with multiple I<source accounts>. A monitoring
account is a central Amazon Web Services account that can view and
interact with observability data generated from source accounts. A
source account is an individual Amazon Web Services account that
generates observability data for the resources that reside in it.
Source accounts share their observability data with the monitoring
account. The shared observability data can include metrics in Amazon
CloudWatch, logs in Amazon CloudWatch Logs, traces in X-Ray,
Application Signals services, service level objectives (SLOs),
applications in Amazon CloudWatch Application Insights, and internet
monitors in CloudWatch Internet Monitor.

When you set up a link, you can choose to share the metrics from all
namespaces with the monitoring account, or filter to a subset of
namespaces. And for CloudWatch Logs, you can choose to share all log
groups with the monitoring account, or filter to a subset of log
groups.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateLink

=over

=item LabelTemplate => Str

=item ResourceTypes => ArrayRef[Str|Undef]

=item SinkIdentifier => Str

=item [LinkConfiguration => L<Paws::OAM::LinkConfiguration>]

=item [Tags => L<Paws::OAM::TagMapInput>]


=back

Each argument is described in detail in: L<Paws::OAM::CreateLink>

Returns: a L<Paws::OAM::CreateLinkOutput> instance

Creates a link between a source account and a sink that you have
created in a monitoring account. After the link is created, data is
sent from the source account to the monitoring account. When you create
a link, you can optionally specify filters that specify which metric
namespaces and which log groups are shared from the source account to
the monitoring account.

Before you create a link, you must create a sink in the monitoring
account and create a sink policy in that account. The sink policy must
permit the source account to link to it. You can grant permission to
source accounts by granting permission to an entire organization or to
individual accounts.

For more information, see CreateSink
(https://docs.aws.amazon.com/OAM/latest/APIReference/API_CreateSink.html)
and PutSinkPolicy
(https://docs.aws.amazon.com/OAM/latest/APIReference/API_PutSinkPolicy.html).

Each monitoring account can be linked to as many as 100,000 source
accounts.

Each source account can be linked to as many as five monitoring
accounts.


=head2 CreateSink

=over

=item Name => Str

=item [Tags => L<Paws::OAM::TagMapInput>]


=back

Each argument is described in detail in: L<Paws::OAM::CreateSink>

Returns: a L<Paws::OAM::CreateSinkOutput> instance

Use this to create a I<sink> in the current account, so that it can be
used as a monitoring account in CloudWatch cross-account observability.
A sink is a resource that represents an attachment point in a
monitoring account. Source accounts can link to the sink to send
observability data.

After you create a sink, you must create a sink policy that allows
source accounts to attach to it. For more information, see
PutSinkPolicy
(https://docs.aws.amazon.com/OAM/latest/APIReference/API_PutSinkPolicy.html).

Each account can contain one sink per Region. If you delete a sink, you
can then create a new one in that Region.


=head2 DeleteLink

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::OAM::DeleteLink>

Returns: a L<Paws::OAM::DeleteLinkOutput> instance

Deletes a link between a monitoring account sink and a source account.
You must run this operation in the source account.


=head2 DeleteSink

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::OAM::DeleteSink>

Returns: a L<Paws::OAM::DeleteSinkOutput> instance

Deletes a sink. You must delete all links to a sink before you can
delete that sink.


=head2 GetLink

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::OAM::GetLink>

Returns: a L<Paws::OAM::GetLinkOutput> instance

Returns complete information about one link.

To use this operation, provide the link ARN. To retrieve a list of link
ARNs, use ListLinks
(https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListLinks.html).


=head2 GetSink

=over

=item Identifier => Str


=back

Each argument is described in detail in: L<Paws::OAM::GetSink>

Returns: a L<Paws::OAM::GetSinkOutput> instance

Returns complete information about one monitoring account sink.

To use this operation, provide the sink ARN. To retrieve a list of sink
ARNs, use ListSinks
(https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListSinks.html).


=head2 GetSinkPolicy

=over

=item SinkIdentifier => Str


=back

Each argument is described in detail in: L<Paws::OAM::GetSinkPolicy>

Returns: a L<Paws::OAM::GetSinkPolicyOutput> instance

Returns the current sink policy attached to this sink. The sink policy
specifies what accounts can attach to this sink as source accounts, and
what types of data they can share.


=head2 ListAttachedLinks

=over

=item SinkIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::OAM::ListAttachedLinks>

Returns: a L<Paws::OAM::ListAttachedLinksOutput> instance

Returns a list of source account links that are linked to this
monitoring account sink.

To use this operation, provide the sink ARN. To retrieve a list of sink
ARNs, use ListSinks
(https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListSinks.html).

To find a list of links for one source account, use ListLinks
(https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListLinks.html).


=head2 ListLinks

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::OAM::ListLinks>

Returns: a L<Paws::OAM::ListLinksOutput> instance

Use this operation in a source account to return a list of links to
monitoring account sinks that this source account has.

To find a list of links for one monitoring account sink, use
ListAttachedLinks
(https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListAttachedLinks.html)
from within the monitoring account.


=head2 ListSinks

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::OAM::ListSinks>

Returns: a L<Paws::OAM::ListSinksOutput> instance

Use this operation in a monitoring account to return the list of sinks
created in that account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::OAM::ListTagsForResource>

Returns: a L<Paws::OAM::ListTagsForResourceOutput> instance

Displays the tags associated with a resource. Both sinks and links
support tagging.


=head2 PutSinkPolicy

=over

=item Policy => Str

=item SinkIdentifier => Str


=back

Each argument is described in detail in: L<Paws::OAM::PutSinkPolicy>

Returns: a L<Paws::OAM::PutSinkPolicyOutput> instance

Creates or updates the resource policy that grants permissions to
source accounts to link to the monitoring account sink. When you create
a sink policy, you can grant permissions to all accounts in an
organization or to individual accounts.

You can also use a sink policy to limit the types of data that is
shared. The three types that you can allow or deny are:

=over

=item *

B<Metrics> - Specify with C<AWS::CloudWatch::Metric>

=item *

B<Log groups> - Specify with C<AWS::Logs::LogGroup>

=item *

B<Traces> - Specify with C<AWS::XRay::Trace>

=item *

B<Application Insights - Applications> - Specify with
C<AWS::ApplicationInsights::Application>

=back

See the examples in this section to see how to specify permitted source
accounts and data types.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::OAM::TagMapInput>


=back

Each argument is described in detail in: L<Paws::OAM::TagResource>

Returns: a L<Paws::OAM::TagResourceOutput> instance

Assigns one or more tags (key-value pairs) to the specified resource.
Both sinks and links can be tagged.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions by granting a user permission to
access or change only resources with certain tag values.

Tags don't have any semantic meaning to Amazon Web Services and are
interpreted strictly as strings of characters.

You can use the C<TagResource> action with a resource that already has
tags. If you specify a new tag key for the alarm, this tag is appended
to the list of tags associated with the alarm. If you specify a tag key
that is already associated with the alarm, the new tag value that you
specify replaces the previous value for that tag.

You can associate as many as 50 tags with a resource.

Unlike tagging permissions in other Amazon Web Services services, to
tag or untag links and sinks you must have the C<oam:ResourceTag>
permission. The C<iam:ResourceTag> permission does not allow you to tag
and untag links and sinks.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::OAM::UntagResource>

Returns: a L<Paws::OAM::UntagResourceOutput> instance

Removes one or more tags from the specified resource.

Unlike tagging permissions in other Amazon Web Services services, to
tag or untag links and sinks you must have the C<oam:ResourceTag>
permission. The C<iam:TagResource> permission does not allow you to tag
and untag links and sinks.


=head2 UpdateLink

=over

=item Identifier => Str

=item ResourceTypes => ArrayRef[Str|Undef]

=item [LinkConfiguration => L<Paws::OAM::LinkConfiguration>]


=back

Each argument is described in detail in: L<Paws::OAM::UpdateLink>

Returns: a L<Paws::OAM::UpdateLinkOutput> instance

Use this operation to change what types of data are shared from a
source account to its linked monitoring account sink. You can't change
the sink or change the monitoring account with this operation.

When you update a link, you can optionally specify filters that specify
which metric namespaces and which log groups are shared from the source
account to the monitoring account.

To update the list of tags associated with the sink, use TagResource
(https://docs.aws.amazon.com/OAM/latest/APIReference/API_TagResource.html).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAttachedLinks(sub { },SinkIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllAttachedLinks(SinkIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::OAM::ListAttachedLinksOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLinks(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllLinks([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::OAM::ListLinksOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSinks(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllSinks([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::OAM::ListSinksOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

