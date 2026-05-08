package Paws::TrustedAdvisor;
  use Moose;
  sub service { 'trustedadvisor' }
  sub signing_name { 'trustedadvisor' }
  sub version { '2022-09-15' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchUpdateRecommendationResourceExclusion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TrustedAdvisor::BatchUpdateRecommendationResourceExclusion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOrganizationRecommendation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TrustedAdvisor::GetOrganizationRecommendation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRecommendation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TrustedAdvisor::GetRecommendation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListChecks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TrustedAdvisor::ListChecks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOrganizationRecommendationAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TrustedAdvisor::ListOrganizationRecommendationAccounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOrganizationRecommendationResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TrustedAdvisor::ListOrganizationRecommendationResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOrganizationRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TrustedAdvisor::ListOrganizationRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecommendationResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TrustedAdvisor::ListRecommendationResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TrustedAdvisor::ListRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateOrganizationRecommendationLifecycle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TrustedAdvisor::UpdateOrganizationRecommendationLifecycle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRecommendationLifecycle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TrustedAdvisor::UpdateRecommendationLifecycle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllChecks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListChecks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListChecks(@_, nextToken => $next_result->nextToken);
        push @{ $result->checkSummaries }, @{ $next_result->checkSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'checkSummaries') foreach (@{ $result->checkSummaries });
        $result = $self->ListChecks(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'checkSummaries') foreach (@{ $result->checkSummaries });
    }

    return undef
  }
  sub ListAllOrganizationRecommendationAccounts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOrganizationRecommendationAccounts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListOrganizationRecommendationAccounts(@_, nextToken => $next_result->nextToken);
        push @{ $result->accountRecommendationLifecycleSummaries }, @{ $next_result->accountRecommendationLifecycleSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'accountRecommendationLifecycleSummaries') foreach (@{ $result->accountRecommendationLifecycleSummaries });
        $result = $self->ListOrganizationRecommendationAccounts(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'accountRecommendationLifecycleSummaries') foreach (@{ $result->accountRecommendationLifecycleSummaries });
    }

    return undef
  }
  sub ListAllOrganizationRecommendationResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOrganizationRecommendationResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListOrganizationRecommendationResources(@_, nextToken => $next_result->nextToken);
        push @{ $result->organizationRecommendationResourceSummaries }, @{ $next_result->organizationRecommendationResourceSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'organizationRecommendationResourceSummaries') foreach (@{ $result->organizationRecommendationResourceSummaries });
        $result = $self->ListOrganizationRecommendationResources(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'organizationRecommendationResourceSummaries') foreach (@{ $result->organizationRecommendationResourceSummaries });
    }

    return undef
  }
  sub ListAllOrganizationRecommendations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOrganizationRecommendations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListOrganizationRecommendations(@_, nextToken => $next_result->nextToken);
        push @{ $result->organizationRecommendationSummaries }, @{ $next_result->organizationRecommendationSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'organizationRecommendationSummaries') foreach (@{ $result->organizationRecommendationSummaries });
        $result = $self->ListOrganizationRecommendations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'organizationRecommendationSummaries') foreach (@{ $result->organizationRecommendationSummaries });
    }

    return undef
  }
  sub ListAllRecommendationResources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRecommendationResources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRecommendationResources(@_, nextToken => $next_result->nextToken);
        push @{ $result->recommendationResourceSummaries }, @{ $next_result->recommendationResourceSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'recommendationResourceSummaries') foreach (@{ $result->recommendationResourceSummaries });
        $result = $self->ListRecommendationResources(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'recommendationResourceSummaries') foreach (@{ $result->recommendationResourceSummaries });
    }

    return undef
  }
  sub ListAllRecommendations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRecommendations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRecommendations(@_, nextToken => $next_result->nextToken);
        push @{ $result->recommendationSummaries }, @{ $next_result->recommendationSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'recommendationSummaries') foreach (@{ $result->recommendationSummaries });
        $result = $self->ListRecommendations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'recommendationSummaries') foreach (@{ $result->recommendationSummaries });
    }

    return undef
  }


  sub operations { qw/BatchUpdateRecommendationResourceExclusion GetOrganizationRecommendation GetRecommendation ListChecks ListOrganizationRecommendationAccounts ListOrganizationRecommendationResources ListOrganizationRecommendations ListRecommendationResources ListRecommendations UpdateOrganizationRecommendationLifecycle UpdateRecommendationLifecycle / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::TrustedAdvisor - Perl Interface to AWS TrustedAdvisor Public API

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('TrustedAdvisor');
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

TrustedAdvisor Public API

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 BatchUpdateRecommendationResourceExclusion

=over

=item RecommendationResourceExclusions => ArrayRef[L<Paws::TrustedAdvisor::RecommendationResourceExclusion>]


=back

Each argument is described in detail in: L<Paws::TrustedAdvisor::BatchUpdateRecommendationResourceExclusion>

Returns: a L<Paws::TrustedAdvisor::BatchUpdateRecommendationResourceExclusionResponse> instance

Update one or more exclusion status for a list of recommendation
resources


=head2 GetOrganizationRecommendation

=over

=item OrganizationRecommendationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::TrustedAdvisor::GetOrganizationRecommendation>

Returns: a L<Paws::TrustedAdvisor::GetOrganizationRecommendationResponse> instance

Get a specific recommendation within an AWS Organizations organization.
This API supports only prioritized recommendations.


=head2 GetRecommendation

=over

=item RecommendationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::TrustedAdvisor::GetRecommendation>

Returns: a L<Paws::TrustedAdvisor::GetRecommendationResponse> instance

Get a specific Recommendation


=head2 ListChecks

=over

=item [AwsService => Str]

=item [Language => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Pillar => Str]

=item [Source => Str]


=back

Each argument is described in detail in: L<Paws::TrustedAdvisor::ListChecks>

Returns: a L<Paws::TrustedAdvisor::ListChecksResponse> instance

List a filterable set of Checks


=head2 ListOrganizationRecommendationAccounts

=over

=item OrganizationRecommendationIdentifier => Str

=item [AffectedAccountId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::TrustedAdvisor::ListOrganizationRecommendationAccounts>

Returns: a L<Paws::TrustedAdvisor::ListOrganizationRecommendationAccountsResponse> instance

Lists the accounts that own the resources for an organization aggregate
recommendation. This API only supports prioritized recommendations.


=head2 ListOrganizationRecommendationResources

=over

=item OrganizationRecommendationIdentifier => Str

=item [AffectedAccountId => Str]

=item [ExclusionStatus => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RegionCode => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::TrustedAdvisor::ListOrganizationRecommendationResources>

Returns: a L<Paws::TrustedAdvisor::ListOrganizationRecommendationResourcesResponse> instance

List Resources of a Recommendation within an Organization. This API
only supports prioritized recommendations.


=head2 ListOrganizationRecommendations

=over

=item [AfterLastUpdatedAt => Str]

=item [AwsService => Str]

=item [BeforeLastUpdatedAt => Str]

=item [CheckIdentifier => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Pillar => Str]

=item [Source => Str]

=item [Status => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::TrustedAdvisor::ListOrganizationRecommendations>

Returns: a L<Paws::TrustedAdvisor::ListOrganizationRecommendationsResponse> instance

List a filterable set of Recommendations within an Organization. This
API only supports prioritized recommendations.


=head2 ListRecommendationResources

=over

=item RecommendationIdentifier => Str

=item [ExclusionStatus => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RegionCode => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::TrustedAdvisor::ListRecommendationResources>

Returns: a L<Paws::TrustedAdvisor::ListRecommendationResourcesResponse> instance

List Resources of a Recommendation


=head2 ListRecommendations

=over

=item [AfterLastUpdatedAt => Str]

=item [AwsService => Str]

=item [BeforeLastUpdatedAt => Str]

=item [CheckIdentifier => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Pillar => Str]

=item [Source => Str]

=item [Status => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::TrustedAdvisor::ListRecommendations>

Returns: a L<Paws::TrustedAdvisor::ListRecommendationsResponse> instance

List a filterable set of Recommendations


=head2 UpdateOrganizationRecommendationLifecycle

=over

=item LifecycleStage => Str

=item OrganizationRecommendationIdentifier => Str

=item [UpdateReason => Str]

=item [UpdateReasonCode => Str]


=back

Each argument is described in detail in: L<Paws::TrustedAdvisor::UpdateOrganizationRecommendationLifecycle>

Returns: nothing

Update the lifecycle of a Recommendation within an Organization. This
API only supports prioritized recommendations.


=head2 UpdateRecommendationLifecycle

=over

=item LifecycleStage => Str

=item RecommendationIdentifier => Str

=item [UpdateReason => Str]

=item [UpdateReasonCode => Str]


=back

Each argument is described in detail in: L<Paws::TrustedAdvisor::UpdateRecommendationLifecycle>

Returns: nothing

Update the lifecyle of a Recommendation. This API only supports
prioritized recommendations.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllChecks(sub { },[AwsService => Str, Language => Str, MaxResults => Int, NextToken => Str, Pillar => Str, Source => Str])

=head2 ListAllChecks([AwsService => Str, Language => Str, MaxResults => Int, NextToken => Str, Pillar => Str, Source => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - checkSummaries, passing the object as the first parameter, and the string 'checkSummaries' as the second parameter 

If not, it will return a a L<Paws::TrustedAdvisor::ListChecksResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOrganizationRecommendationAccounts(sub { },OrganizationRecommendationIdentifier => Str, [AffectedAccountId => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllOrganizationRecommendationAccounts(OrganizationRecommendationIdentifier => Str, [AffectedAccountId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - accountRecommendationLifecycleSummaries, passing the object as the first parameter, and the string 'accountRecommendationLifecycleSummaries' as the second parameter 

If not, it will return a a L<Paws::TrustedAdvisor::ListOrganizationRecommendationAccountsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOrganizationRecommendationResources(sub { },OrganizationRecommendationIdentifier => Str, [AffectedAccountId => Str, ExclusionStatus => Str, MaxResults => Int, NextToken => Str, RegionCode => Str, Status => Str])

=head2 ListAllOrganizationRecommendationResources(OrganizationRecommendationIdentifier => Str, [AffectedAccountId => Str, ExclusionStatus => Str, MaxResults => Int, NextToken => Str, RegionCode => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - organizationRecommendationResourceSummaries, passing the object as the first parameter, and the string 'organizationRecommendationResourceSummaries' as the second parameter 

If not, it will return a a L<Paws::TrustedAdvisor::ListOrganizationRecommendationResourcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOrganizationRecommendations(sub { },[AfterLastUpdatedAt => Str, AwsService => Str, BeforeLastUpdatedAt => Str, CheckIdentifier => Str, MaxResults => Int, NextToken => Str, Pillar => Str, Source => Str, Status => Str, Type => Str])

=head2 ListAllOrganizationRecommendations([AfterLastUpdatedAt => Str, AwsService => Str, BeforeLastUpdatedAt => Str, CheckIdentifier => Str, MaxResults => Int, NextToken => Str, Pillar => Str, Source => Str, Status => Str, Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - organizationRecommendationSummaries, passing the object as the first parameter, and the string 'organizationRecommendationSummaries' as the second parameter 

If not, it will return a a L<Paws::TrustedAdvisor::ListOrganizationRecommendationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRecommendationResources(sub { },RecommendationIdentifier => Str, [ExclusionStatus => Str, MaxResults => Int, NextToken => Str, RegionCode => Str, Status => Str])

=head2 ListAllRecommendationResources(RecommendationIdentifier => Str, [ExclusionStatus => Str, MaxResults => Int, NextToken => Str, RegionCode => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - recommendationResourceSummaries, passing the object as the first parameter, and the string 'recommendationResourceSummaries' as the second parameter 

If not, it will return a a L<Paws::TrustedAdvisor::ListRecommendationResourcesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRecommendations(sub { },[AfterLastUpdatedAt => Str, AwsService => Str, BeforeLastUpdatedAt => Str, CheckIdentifier => Str, MaxResults => Int, NextToken => Str, Pillar => Str, Source => Str, Status => Str, Type => Str])

=head2 ListAllRecommendations([AfterLastUpdatedAt => Str, AwsService => Str, BeforeLastUpdatedAt => Str, CheckIdentifier => Str, MaxResults => Int, NextToken => Str, Pillar => Str, Source => Str, Status => Str, Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - recommendationSummaries, passing the object as the first parameter, and the string 'recommendationSummaries' as the second parameter 

If not, it will return a a L<Paws::TrustedAdvisor::ListRecommendationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

