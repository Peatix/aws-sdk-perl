package Paws::MarketplaceCatalog;
  use Moose;
  sub service { 'catalog.marketplace' }
  sub signing_name { 'aws-marketplace' }
  sub version { '2018-09-17' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchDescribeEntities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceCatalog::BatchDescribeEntities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelChangeSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceCatalog::CancelChangeSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceCatalog::DeleteResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeChangeSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceCatalog::DescribeChangeSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEntity {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceCatalog::DescribeEntity', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceCatalog::GetResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChangeSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceCatalog::ListChangeSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEntities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceCatalog::ListEntities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceCatalog::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourcePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceCatalog::PutResourcePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartChangeSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceCatalog::StartChangeSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceCatalog::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceCatalog::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllChangeSets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListChangeSets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListChangeSets(@_, NextToken => $next_result->NextToken);
        push @{ $result->ChangeSetSummaryList }, @{ $next_result->ChangeSetSummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ChangeSetSummaryList') foreach (@{ $result->ChangeSetSummaryList });
        $result = $self->ListChangeSets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ChangeSetSummaryList') foreach (@{ $result->ChangeSetSummaryList });
    }

    return undef
  }
  sub ListAllEntities {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEntities(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEntities(@_, NextToken => $next_result->NextToken);
        push @{ $result->EntitySummaryList }, @{ $next_result->EntitySummaryList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EntitySummaryList') foreach (@{ $result->EntitySummaryList });
        $result = $self->ListEntities(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EntitySummaryList') foreach (@{ $result->EntitySummaryList });
    }

    return undef
  }


  sub operations { qw/BatchDescribeEntities CancelChangeSet DeleteResourcePolicy DescribeChangeSet DescribeEntity GetResourcePolicy ListChangeSets ListEntities ListTagsForResource PutResourcePolicy StartChangeSet TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCatalog - Perl Interface to AWS AWS Marketplace Catalog Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MarketplaceCatalog');
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

Catalog API actions allow you to manage your entities through list,
describe, and update capabilities. An entity can be a product or an
offer on AWS Marketplace.

You can automate your entity update process by integrating the AWS
Marketplace Catalog API with your AWS Marketplace product build or
deployment pipelines. You can also create your own applications on top
of the Catalog API to manage your products on AWS Marketplace.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/catalog.marketplace-2018-09-17>


=head1 METHODS

=head2 BatchDescribeEntities

=over

=item EntityRequestList => ArrayRef[L<Paws::MarketplaceCatalog::EntityRequest>]


=back

Each argument is described in detail in: L<Paws::MarketplaceCatalog::BatchDescribeEntities>

Returns: a L<Paws::MarketplaceCatalog::BatchDescribeEntitiesResponse> instance

Returns metadata and content for multiple entities. This is the Batch
version of the C<DescribeEntity> API and uses the same IAM permission
action as C<DescribeEntity> API.


=head2 CancelChangeSet

=over

=item Catalog => Str

=item ChangeSetId => Str


=back

Each argument is described in detail in: L<Paws::MarketplaceCatalog::CancelChangeSet>

Returns: a L<Paws::MarketplaceCatalog::CancelChangeSetResponse> instance

Used to cancel an open change request. Must be sent before the status
of the request changes to C<APPLYING>, the final stage of completing
your change request. You can describe a change during the 60-day
request history retention period for API calls.


=head2 DeleteResourcePolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::MarketplaceCatalog::DeleteResourcePolicy>

Returns: a L<Paws::MarketplaceCatalog::DeleteResourcePolicyResponse> instance

Deletes a resource-based policy on an entity that is identified by its
resource ARN.


=head2 DescribeChangeSet

=over

=item Catalog => Str

=item ChangeSetId => Str


=back

Each argument is described in detail in: L<Paws::MarketplaceCatalog::DescribeChangeSet>

Returns: a L<Paws::MarketplaceCatalog::DescribeChangeSetResponse> instance

Provides information about a given change set.


=head2 DescribeEntity

=over

=item Catalog => Str

=item EntityId => Str


=back

Each argument is described in detail in: L<Paws::MarketplaceCatalog::DescribeEntity>

Returns: a L<Paws::MarketplaceCatalog::DescribeEntityResponse> instance

Returns the metadata and content of the entity.


=head2 GetResourcePolicy

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::MarketplaceCatalog::GetResourcePolicy>

Returns: a L<Paws::MarketplaceCatalog::GetResourcePolicyResponse> instance

Gets a resource-based policy of an entity that is identified by its
resource ARN.


=head2 ListChangeSets

=over

=item Catalog => Str

=item [FilterList => ArrayRef[L<Paws::MarketplaceCatalog::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Sort => L<Paws::MarketplaceCatalog::Sort>]


=back

Each argument is described in detail in: L<Paws::MarketplaceCatalog::ListChangeSets>

Returns: a L<Paws::MarketplaceCatalog::ListChangeSetsResponse> instance

Returns the list of change sets owned by the account being used to make
the call. You can filter this list by providing any combination of
C<entityId>, C<ChangeSetName>, and status. If you provide more than one
filter, the API operation applies a logical AND between the filters.

You can describe a change during the 60-day request history retention
period for API calls.


=head2 ListEntities

=over

=item Catalog => Str

=item EntityType => Str

=item [EntityTypeFilters => L<Paws::MarketplaceCatalog::EntityTypeFilters>]

=item [EntityTypeSort => L<Paws::MarketplaceCatalog::EntityTypeSort>]

=item [FilterList => ArrayRef[L<Paws::MarketplaceCatalog::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OwnershipType => Str]

=item [Sort => L<Paws::MarketplaceCatalog::Sort>]


=back

Each argument is described in detail in: L<Paws::MarketplaceCatalog::ListEntities>

Returns: a L<Paws::MarketplaceCatalog::ListEntitiesResponse> instance

Provides the list of entities of a given type.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::MarketplaceCatalog::ListTagsForResource>

Returns: a L<Paws::MarketplaceCatalog::ListTagsForResourceResponse> instance

Lists all tags that have been added to a resource (either an entity
(https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities)
or change set
(https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets)).


=head2 PutResourcePolicy

=over

=item Policy => Str

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::MarketplaceCatalog::PutResourcePolicy>

Returns: a L<Paws::MarketplaceCatalog::PutResourcePolicyResponse> instance

Attaches a resource-based policy to an entity. Examples of an entity
include: C<AmiProduct> and C<ContainerProduct>.


=head2 StartChangeSet

=over

=item Catalog => Str

=item ChangeSet => ArrayRef[L<Paws::MarketplaceCatalog::Change>]

=item [ChangeSetName => Str]

=item [ChangeSetTags => ArrayRef[L<Paws::MarketplaceCatalog::Tag>]]

=item [ClientRequestToken => Str]

=item [Intent => Str]


=back

Each argument is described in detail in: L<Paws::MarketplaceCatalog::StartChangeSet>

Returns: a L<Paws::MarketplaceCatalog::StartChangeSetResponse> instance

Allows you to request changes for your entities. Within a single
C<ChangeSet>, you can't start the same change type against the same
entity multiple times. Additionally, when a C<ChangeSet> is running,
all the entities targeted by the different changes are locked until the
change set has completed (either succeeded, cancelled, or failed). If
you try to start a change set containing a change against an entity
that is already locked, you will receive a C<ResourceInUseException>
error.

For example, you can't start the C<ChangeSet> described in the example
(https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/API_StartChangeSet.html#API_StartChangeSet_Examples)
later in this topic because it contains two changes to run the same
change type (C<AddRevisions>) against the same entity (C<entity-id@1>).

For more information about working with change sets, see Working with
change sets
(https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets).
For information about change types for single-AMI products, see Working
with single-AMI products
(https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/ami-products.html#working-with-single-AMI-products).
Also, for more information about change types available for
container-based products, see Working with container products
(https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/container-products.html#working-with-container-products).


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::MarketplaceCatalog::Tag>]


=back

Each argument is described in detail in: L<Paws::MarketplaceCatalog::TagResource>

Returns: a L<Paws::MarketplaceCatalog::TagResourceResponse> instance

Tags a resource (either an entity
(https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities)
or change set
(https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets)).


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::MarketplaceCatalog::UntagResource>

Returns: a L<Paws::MarketplaceCatalog::UntagResourceResponse> instance

Removes a tag or list of tags from a resource (either an entity
(https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities)
or change set
(https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets)).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllChangeSets(sub { },Catalog => Str, [FilterList => ArrayRef[L<Paws::MarketplaceCatalog::Filter>], MaxResults => Int, NextToken => Str, Sort => L<Paws::MarketplaceCatalog::Sort>])

=head2 ListAllChangeSets(Catalog => Str, [FilterList => ArrayRef[L<Paws::MarketplaceCatalog::Filter>], MaxResults => Int, NextToken => Str, Sort => L<Paws::MarketplaceCatalog::Sort>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ChangeSetSummaryList, passing the object as the first parameter, and the string 'ChangeSetSummaryList' as the second parameter 

If not, it will return a a L<Paws::MarketplaceCatalog::ListChangeSetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEntities(sub { },Catalog => Str, EntityType => Str, [EntityTypeFilters => L<Paws::MarketplaceCatalog::EntityTypeFilters>, EntityTypeSort => L<Paws::MarketplaceCatalog::EntityTypeSort>, FilterList => ArrayRef[L<Paws::MarketplaceCatalog::Filter>], MaxResults => Int, NextToken => Str, OwnershipType => Str, Sort => L<Paws::MarketplaceCatalog::Sort>])

=head2 ListAllEntities(Catalog => Str, EntityType => Str, [EntityTypeFilters => L<Paws::MarketplaceCatalog::EntityTypeFilters>, EntityTypeSort => L<Paws::MarketplaceCatalog::EntityTypeSort>, FilterList => ArrayRef[L<Paws::MarketplaceCatalog::Filter>], MaxResults => Int, NextToken => Str, OwnershipType => Str, Sort => L<Paws::MarketplaceCatalog::Sort>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EntitySummaryList, passing the object as the first parameter, and the string 'EntitySummaryList' as the second parameter 

If not, it will return a a L<Paws::MarketplaceCatalog::ListEntitiesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

