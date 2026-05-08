package Paws::SecurityIR;
  use Moose;
  sub service { 'security-ir' }
  sub signing_name { 'security-ir' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchGetMemberAccountDetails {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityIR::BatchGetMemberAccountDetails', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityIR::CancelMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CloseCase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityIR::CloseCase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityIR::CreateCase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCaseComment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityIR::CreateCaseComment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityIR::CreateMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityIR::GetCase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCaseAttachmentDownloadUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityIR::GetCaseAttachmentDownloadUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCaseAttachmentUploadUrl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityIR::GetCaseAttachmentUploadUrl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityIR::GetMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCaseEdits {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityIR::ListCaseEdits', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityIR::ListCases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListComments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityIR::ListComments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMemberships {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityIR::ListMemberships', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityIR::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityIR::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityIR::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityIR::UpdateCase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCaseComment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityIR::UpdateCaseComment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCaseStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityIR::UpdateCaseStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityIR::UpdateMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResolverType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SecurityIR::UpdateResolverType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllCaseEdits {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCaseEdits(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCaseEdits(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListCaseEdits(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllCases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCases(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListCases(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllComments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListComments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListComments(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListComments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllMemberships {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMemberships(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListMemberships(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListMemberships(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }


  sub operations { qw/BatchGetMemberAccountDetails CancelMembership CloseCase CreateCase CreateCaseComment CreateMembership GetCase GetCaseAttachmentDownloadUrl GetCaseAttachmentUploadUrl GetMembership ListCaseEdits ListCases ListComments ListMemberships ListTagsForResource TagResource UntagResource UpdateCase UpdateCaseComment UpdateCaseStatus UpdateMembership UpdateResolverType / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR - Perl Interface to AWS Security Incident Response

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SecurityIR');
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

This guide provides documents the action and response elements for
customer use of the service.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/security-ir-2018-05-10>


=head1 METHODS

=head2 BatchGetMemberAccountDetails

=over

=item AccountIds => ArrayRef[Str|Undef]

=item MembershipId => Str


=back

Each argument is described in detail in: L<Paws::SecurityIR::BatchGetMemberAccountDetails>

Returns: a L<Paws::SecurityIR::BatchGetMemberAccountDetailsResponse> instance

Grants permission to view an existing membership.


=head2 CancelMembership

=over

=item MembershipId => Str


=back

Each argument is described in detail in: L<Paws::SecurityIR::CancelMembership>

Returns: a L<Paws::SecurityIR::CancelMembershipResponse> instance

Grants permissions to cancel an existing membership.


=head2 CloseCase

=over

=item CaseId => Str


=back

Each argument is described in detail in: L<Paws::SecurityIR::CloseCase>

Returns: a L<Paws::SecurityIR::CloseCaseResponse> instance

Grants permission to close an existing case.


=head2 CreateCase

=over

=item Description => Str

=item EngagementType => Str

=item ImpactedAccounts => ArrayRef[Str|Undef]

=item ReportedIncidentStartDate => Str

=item ResolverType => Str

=item Title => Str

=item Watchers => ArrayRef[L<Paws::SecurityIR::Watcher>]

=item [ClientToken => Str]

=item [ImpactedAwsRegions => ArrayRef[L<Paws::SecurityIR::ImpactedAwsRegion>]]

=item [ImpactedServices => ArrayRef[Str|Undef]]

=item [Tags => L<Paws::SecurityIR::TagMap>]

=item [ThreatActorIpAddresses => ArrayRef[L<Paws::SecurityIR::ThreatActorIp>]]


=back

Each argument is described in detail in: L<Paws::SecurityIR::CreateCase>

Returns: a L<Paws::SecurityIR::CreateCaseResponse> instance

Grants permission to create a new case.


=head2 CreateCaseComment

=over

=item Body => Str

=item CaseId => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityIR::CreateCaseComment>

Returns: a L<Paws::SecurityIR::CreateCaseCommentResponse> instance

Grants permission to add a comment to an existing case.


=head2 CreateMembership

=over

=item IncidentResponseTeam => ArrayRef[L<Paws::SecurityIR::IncidentResponder>]

=item MembershipName => Str

=item [ClientToken => Str]

=item [OptInFeatures => ArrayRef[L<Paws::SecurityIR::OptInFeature>]]

=item [Tags => L<Paws::SecurityIR::TagMap>]


=back

Each argument is described in detail in: L<Paws::SecurityIR::CreateMembership>

Returns: a L<Paws::SecurityIR::CreateMembershipResponse> instance

Grants permissions to create a new membership.


=head2 GetCase

=over

=item CaseId => Str


=back

Each argument is described in detail in: L<Paws::SecurityIR::GetCase>

Returns: a L<Paws::SecurityIR::GetCaseResponse> instance

Grant permission to view a designated case.


=head2 GetCaseAttachmentDownloadUrl

=over

=item AttachmentId => Str

=item CaseId => Str


=back

Each argument is described in detail in: L<Paws::SecurityIR::GetCaseAttachmentDownloadUrl>

Returns: a L<Paws::SecurityIR::GetCaseAttachmentDownloadUrlResponse> instance

Grants permission to obtain an Amazon S3 presigned URL to download an
attachment.


=head2 GetCaseAttachmentUploadUrl

=over

=item CaseId => Str

=item ContentLength => Int

=item FileName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityIR::GetCaseAttachmentUploadUrl>

Returns: a L<Paws::SecurityIR::GetCaseAttachmentUploadUrlResponse> instance

Grants permission to upload an attachment to a case.


=head2 GetMembership

=over

=item MembershipId => Str


=back

Each argument is described in detail in: L<Paws::SecurityIR::GetMembership>

Returns: a L<Paws::SecurityIR::GetMembershipResponse> instance

Grants permission to get details of a designated service membership.


=head2 ListCaseEdits

=over

=item CaseId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityIR::ListCaseEdits>

Returns: a L<Paws::SecurityIR::ListCaseEditsResponse> instance

Grants permissions to view the aidt log for edits made to a designated
case.


=head2 ListCases

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityIR::ListCases>

Returns: a L<Paws::SecurityIR::ListCasesResponse> instance

Grants permission to list all cases the requester has access to.


=head2 ListComments

=over

=item CaseId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityIR::ListComments>

Returns: a L<Paws::SecurityIR::ListCommentsResponse> instance

Grants permissions to list and view comments for a designated case.


=head2 ListMemberships

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SecurityIR::ListMemberships>

Returns: a L<Paws::SecurityIR::ListMembershipsResponse> instance

Grants permission to query the memberships a principal has access to.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::SecurityIR::ListTagsForResource>

Returns: a L<Paws::SecurityIR::ListTagsForResourceOutput> instance

Grants permission to view currently configured tags on a resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::SecurityIR::TagMap>


=back

Each argument is described in detail in: L<Paws::SecurityIR::TagResource>

Returns: a L<Paws::SecurityIR::TagResourceOutput> instance

Grants permission to add a tag(s) to a designated resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SecurityIR::UntagResource>

Returns: a L<Paws::SecurityIR::UntagResourceOutput> instance

Grants permission to remove a tag(s) from a designate resource.


=head2 UpdateCase

=over

=item CaseId => Str

=item [ActualIncidentStartDate => Str]

=item [Description => Str]

=item [EngagementType => Str]

=item [ImpactedAccountsToAdd => ArrayRef[Str|Undef]]

=item [ImpactedAccountsToDelete => ArrayRef[Str|Undef]]

=item [ImpactedAwsRegionsToAdd => ArrayRef[L<Paws::SecurityIR::ImpactedAwsRegion>]]

=item [ImpactedAwsRegionsToDelete => ArrayRef[L<Paws::SecurityIR::ImpactedAwsRegion>]]

=item [ImpactedServicesToAdd => ArrayRef[Str|Undef]]

=item [ImpactedServicesToDelete => ArrayRef[Str|Undef]]

=item [ReportedIncidentStartDate => Str]

=item [ThreatActorIpAddressesToAdd => ArrayRef[L<Paws::SecurityIR::ThreatActorIp>]]

=item [ThreatActorIpAddressesToDelete => ArrayRef[L<Paws::SecurityIR::ThreatActorIp>]]

=item [Title => Str]

=item [WatchersToAdd => ArrayRef[L<Paws::SecurityIR::Watcher>]]

=item [WatchersToDelete => ArrayRef[L<Paws::SecurityIR::Watcher>]]


=back

Each argument is described in detail in: L<Paws::SecurityIR::UpdateCase>

Returns: a L<Paws::SecurityIR::UpdateCaseResponse> instance

Grants permission to update an existing case.


=head2 UpdateCaseComment

=over

=item Body => Str

=item CaseId => Str

=item CommentId => Str


=back

Each argument is described in detail in: L<Paws::SecurityIR::UpdateCaseComment>

Returns: a L<Paws::SecurityIR::UpdateCaseCommentResponse> instance

Grants permission to update an existing case comment.


=head2 UpdateCaseStatus

=over

=item CaseId => Str

=item CaseStatus => Str


=back

Each argument is described in detail in: L<Paws::SecurityIR::UpdateCaseStatus>

Returns: a L<Paws::SecurityIR::UpdateCaseStatusResponse> instance

Grants permission to update the status for a designated cases. Options
include C<Submitted | Detection and Analysis | Eradication, Containment
and Recovery | Post-Incident Activities | Closed>.


=head2 UpdateMembership

=over

=item MembershipId => Str

=item [IncidentResponseTeam => ArrayRef[L<Paws::SecurityIR::IncidentResponder>]]

=item [MembershipName => Str]

=item [OptInFeatures => ArrayRef[L<Paws::SecurityIR::OptInFeature>]]


=back

Each argument is described in detail in: L<Paws::SecurityIR::UpdateMembership>

Returns: a L<Paws::SecurityIR::UpdateMembershipResponse> instance

Grants access to UpdateMembership to change membership configuration.


=head2 UpdateResolverType

=over

=item CaseId => Str

=item ResolverType => Str


=back

Each argument is described in detail in: L<Paws::SecurityIR::UpdateResolverType>

Returns: a L<Paws::SecurityIR::UpdateResolverTypeResponse> instance

Grants permission to update the resolver type for a case.

This is a one-way action and cannot be reversed.

Options include self-supported E<gt> AWS-supported.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllCaseEdits(sub { },CaseId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllCaseEdits(CaseId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::SecurityIR::ListCaseEditsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCases(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllCases([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::SecurityIR::ListCasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllComments(sub { },CaseId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllComments(CaseId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::SecurityIR::ListCommentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMemberships(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllMemberships([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::SecurityIR::ListMembershipsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

