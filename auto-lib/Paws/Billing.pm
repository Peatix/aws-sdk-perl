package Paws::Billing;
  use Moose;
  sub service { 'billing' }
  sub signing_name { 'billing' }
  sub version { '2023-09-07' }
  sub target_prefix { 'AWSBilling' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateBillingView {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billing::CreateBillingView', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBillingView {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billing::DeleteBillingView', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBillingView {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billing::GetBillingView', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billing::GetResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBillingViews {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billing::ListBillingViews', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSourceViewsForBillingView {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billing::ListSourceViewsForBillingView', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billing::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billing::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billing::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBillingView {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Billing::UpdateBillingView', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllBillingViews {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBillingViews(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBillingViews(@_, nextToken => $next_result->nextToken);
        push @{ $result->billingViews }, @{ $next_result->billingViews };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'billingViews') foreach (@{ $result->billingViews });
        $result = $self->ListBillingViews(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'billingViews') foreach (@{ $result->billingViews });
    }

    return undef
  }
  sub ListAllSourceViewsForBillingView {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSourceViewsForBillingView(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSourceViewsForBillingView(@_, nextToken => $next_result->nextToken);
        push @{ $result->sourceViews }, @{ $next_result->sourceViews };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'sourceViews') foreach (@{ $result->sourceViews });
        $result = $self->ListSourceViewsForBillingView(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'sourceViews') foreach (@{ $result->sourceViews });
    }

    return undef
  }


  sub operations { qw/CreateBillingView DeleteBillingView GetBillingView GetResourcePolicy ListBillingViews ListSourceViewsForBillingView ListTagsForResource TagResource UntagResource UpdateBillingView / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Billing - Perl Interface to AWS AWS Billing

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Billing');
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

You can use the Billing API to programatically list the billing views
available to you for a given time period. A billing view represents a
set of billing data.

The Billing API provides the following endpoint:

C<https://billing.us-east-1.api.aws>

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07>


=head1 METHODS

=head2 CreateBillingView

=over

=item Name => Str

=item SourceViews => ArrayRef[Str|Undef]

=item [ClientToken => Str]

=item [DataFilterExpression => L<Paws::Billing::Expression>]

=item [Description => Str]

=item [ResourceTags => ArrayRef[L<Paws::Billing::ResourceTag>]]


=back

Each argument is described in detail in: L<Paws::Billing::CreateBillingView>

Returns: a L<Paws::Billing::CreateBillingViewResponse> instance

Creates a billing view with the specified billing view attributes.


=head2 DeleteBillingView

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Billing::DeleteBillingView>

Returns: a L<Paws::Billing::DeleteBillingViewResponse> instance

Deletes the specified billing view.


=head2 GetBillingView

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::Billing::GetBillingView>

Returns: a L<Paws::Billing::GetBillingViewResponse> instance

Returns the metadata associated to the specified billing view ARN.


=head2 GetResourcePolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Billing::GetResourcePolicy>

Returns: a L<Paws::Billing::GetResourcePolicyResponse> instance

Returns the resource-based policy document attached to the resource in
C<JSON> format.


=head2 ListBillingViews

=over

=item [ActiveTimeRange => L<Paws::Billing::ActiveTimeRange>]

=item [Arns => ArrayRef[Str|Undef]]

=item [BillingViewTypes => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OwnerAccountId => Str]


=back

Each argument is described in detail in: L<Paws::Billing::ListBillingViews>

Returns: a L<Paws::Billing::ListBillingViewsResponse> instance

Lists the billing views available for a given time period.

Every Amazon Web Services account has a unique C<PRIMARY> billing view
that represents the billing data available by default. Accounts that
use Billing Conductor also have C<BILLING_GROUP> billing views
representing pro forma costs associated with each created billing
group.


=head2 ListSourceViewsForBillingView

=over

=item Arn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Billing::ListSourceViewsForBillingView>

Returns: a L<Paws::Billing::ListSourceViewsForBillingViewResponse> instance

Lists the source views (managed Amazon Web Services billing views)
associated with the billing view.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Billing::ListTagsForResource>

Returns: a L<Paws::Billing::ListTagsForResourceResponse> instance

Lists tags associated with the billing view resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item ResourceTags => ArrayRef[L<Paws::Billing::ResourceTag>]


=back

Each argument is described in detail in: L<Paws::Billing::TagResource>

Returns: a L<Paws::Billing::TagResourceResponse> instance

An API operation for adding one or more tags (key-value pairs) to a
resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item ResourceTagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Billing::UntagResource>

Returns: a L<Paws::Billing::UntagResourceResponse> instance

Removes one or more tags from a resource. Specify only tag keys in your
request. Don't specify the value.


=head2 UpdateBillingView

=over

=item Arn => Str

=item [DataFilterExpression => L<Paws::Billing::Expression>]

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Billing::UpdateBillingView>

Returns: a L<Paws::Billing::UpdateBillingViewResponse> instance

An API to update the attributes of the billing view.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllBillingViews(sub { },[ActiveTimeRange => L<Paws::Billing::ActiveTimeRange>, Arns => ArrayRef[Str|Undef], BillingViewTypes => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, OwnerAccountId => Str])

=head2 ListAllBillingViews([ActiveTimeRange => L<Paws::Billing::ActiveTimeRange>, Arns => ArrayRef[Str|Undef], BillingViewTypes => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, OwnerAccountId => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - billingViews, passing the object as the first parameter, and the string 'billingViews' as the second parameter 

If not, it will return a a L<Paws::Billing::ListBillingViewsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSourceViewsForBillingView(sub { },Arn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllSourceViewsForBillingView(Arn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - sourceViews, passing the object as the first parameter, and the string 'sourceViews' as the second parameter 

If not, it will return a a L<Paws::Billing::ListSourceViewsForBillingViewResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

