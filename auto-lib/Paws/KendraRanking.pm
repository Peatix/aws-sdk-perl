package Paws::KendraRanking;
  use Moose;
  sub service { 'kendra-ranking' }
  sub signing_name { 'kendra-ranking' }
  sub version { '2022-10-19' }
  sub target_prefix { 'AWSKendraRerankingFrontendService' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateRescoreExecutionPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KendraRanking::CreateRescoreExecutionPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRescoreExecutionPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KendraRanking::DeleteRescoreExecutionPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRescoreExecutionPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KendraRanking::DescribeRescoreExecutionPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRescoreExecutionPlans {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KendraRanking::ListRescoreExecutionPlans', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KendraRanking::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Rescore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KendraRanking::Rescore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KendraRanking::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KendraRanking::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRescoreExecutionPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KendraRanking::UpdateRescoreExecutionPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateRescoreExecutionPlan DeleteRescoreExecutionPlan DescribeRescoreExecutionPlan ListRescoreExecutionPlans ListTagsForResource Rescore TagResource UntagResource UpdateRescoreExecutionPlan / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::KendraRanking - Perl Interface to AWS Amazon Kendra Intelligent Ranking

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('KendraRanking');
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

Amazon Kendra Intelligent Ranking uses Amazon Kendra semantic search
capabilities to intelligently re-rank a search service's results.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateRescoreExecutionPlan

=over

=item Name => Str

=item [CapacityUnits => L<Paws::KendraRanking::CapacityUnitsConfiguration>]

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::KendraRanking::Tag>]]


=back

Each argument is described in detail in: L<Paws::KendraRanking::CreateRescoreExecutionPlan>

Returns: a L<Paws::KendraRanking::CreateRescoreExecutionPlanResponse> instance

Creates a rescore execution plan. A rescore execution plan is an Amazon
Kendra Intelligent Ranking resource used for provisioning the
C<Rescore> API. You set the number of capacity units that you require
for Amazon Kendra Intelligent Ranking to rescore or re-rank a search
service's results.

For an example of using the C<CreateRescoreExecutionPlan> API,
including using the Python and Java SDKs, see Semantically ranking a
search service's results
(https://docs.aws.amazon.com/kendra/latest/dg/search-service-rerank.html).


=head2 DeleteRescoreExecutionPlan

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::KendraRanking::DeleteRescoreExecutionPlan>

Returns: nothing

Deletes a rescore execution plan. A rescore execution plan is an Amazon
Kendra Intelligent Ranking resource used for provisioning the
C<Rescore> API.


=head2 DescribeRescoreExecutionPlan

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::KendraRanking::DescribeRescoreExecutionPlan>

Returns: a L<Paws::KendraRanking::DescribeRescoreExecutionPlanResponse> instance

Gets information about a rescore execution plan. A rescore execution
plan is an Amazon Kendra Intelligent Ranking resource used for
provisioning the C<Rescore> API.


=head2 ListRescoreExecutionPlans

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::KendraRanking::ListRescoreExecutionPlans>

Returns: a L<Paws::KendraRanking::ListRescoreExecutionPlansResponse> instance

Lists your rescore execution plans. A rescore execution plan is an
Amazon Kendra Intelligent Ranking resource used for provisioning the
C<Rescore> API.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::KendraRanking::ListTagsForResource>

Returns: a L<Paws::KendraRanking::ListTagsForResourceResponse> instance

Gets a list of tags associated with a specified resource. A rescore
execution plan is an example of a resource that can have tags
associated with it.


=head2 Rescore

=over

=item Documents => ArrayRef[L<Paws::KendraRanking::Document>]

=item RescoreExecutionPlanId => Str

=item SearchQuery => Str


=back

Each argument is described in detail in: L<Paws::KendraRanking::Rescore>

Returns: a L<Paws::KendraRanking::RescoreResult> instance

Rescores or re-ranks search results from a search service such as
OpenSearch (self managed). You use the semantic search capabilities of
Amazon Kendra Intelligent Ranking to improve the search service's
results.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::KendraRanking::Tag>]


=back

Each argument is described in detail in: L<Paws::KendraRanking::TagResource>

Returns: a L<Paws::KendraRanking::TagResourceResponse> instance

Adds a specified tag to a specified rescore execution plan. A rescore
execution plan is an Amazon Kendra Intelligent Ranking resource used
for provisioning the C<Rescore> API. If the tag already exists, the
existing value is replaced with the new value.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::KendraRanking::UntagResource>

Returns: a L<Paws::KendraRanking::UntagResourceResponse> instance

Removes a tag from a rescore execution plan. A rescore execution plan
is an Amazon Kendra Intelligent Ranking resource used for provisioning
the C<Rescore> operation.


=head2 UpdateRescoreExecutionPlan

=over

=item Id => Str

=item [CapacityUnits => L<Paws::KendraRanking::CapacityUnitsConfiguration>]

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::KendraRanking::UpdateRescoreExecutionPlan>

Returns: nothing

Updates a rescore execution plan. A rescore execution plan is an Amazon
Kendra Intelligent Ranking resource used for provisioning the
C<Rescore> API. You can update the number of capacity units you require
for Amazon Kendra Intelligent Ranking to rescore or re-rank a search
service's results.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

