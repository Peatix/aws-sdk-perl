package Paws::CostOptimizationHub;
  use Moose;
  sub service { 'cost-optimization-hub' }
  sub signing_name { 'cost-optimization-hub' }
  sub version { '2022-07-26' }
  sub target_prefix { 'CostOptimizationHubService' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub GetPreferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostOptimizationHub::GetPreferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRecommendation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostOptimizationHub::GetRecommendation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnrollmentStatuses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostOptimizationHub::ListEnrollmentStatuses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostOptimizationHub::ListRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRecommendationSummaries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostOptimizationHub::ListRecommendationSummaries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnrollmentStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostOptimizationHub::UpdateEnrollmentStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePreferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CostOptimizationHub::UpdatePreferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllEnrollmentStatuses {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnrollmentStatuses(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEnrollmentStatuses(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListEnrollmentStatuses(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
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
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListRecommendations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }
  sub ListAllRecommendationSummaries {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRecommendationSummaries(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRecommendationSummaries(@_, nextToken => $next_result->nextToken);
        push @{ $result->items }, @{ $next_result->items };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'items') foreach (@{ $result->items });
        $result = $self->ListRecommendationSummaries(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'items') foreach (@{ $result->items });
    }

    return undef
  }


  sub operations { qw/GetPreferences GetRecommendation ListEnrollmentStatuses ListRecommendations ListRecommendationSummaries UpdateEnrollmentStatus UpdatePreferences / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CostOptimizationHub - Perl Interface to AWS Cost Optimization Hub

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CostOptimizationHub');
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

You can use the Cost Optimization Hub API to programmatically identify,
filter, aggregate, and quantify savings for your cost optimization
recommendations across multiple Amazon Web Services Regions and Amazon
Web Services accounts in your organization.

The Cost Optimization Hub API provides the following endpoint:

=over

=item *

https://cost-optimization-hub.us-east-1.amazonaws.com

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cost-optimization-hub-2022-07-26>


=head1 METHODS

=head2 GetPreferences






Each argument is described in detail in: L<Paws::CostOptimizationHub::GetPreferences>

Returns: a L<Paws::CostOptimizationHub::GetPreferencesResponse> instance

Returns a set of preferences for an account in order to add
account-specific preferences into the service. These preferences impact
how the savings associated with recommendations are
presentedE<mdash>estimated savings after discounts or estimated savings
before discounts, for example.


=head2 GetRecommendation

=over

=item RecommendationId => Str


=back

Each argument is described in detail in: L<Paws::CostOptimizationHub::GetRecommendation>

Returns: a L<Paws::CostOptimizationHub::GetRecommendationResponse> instance

Returns both the current and recommended resource configuration and the
estimated cost impact for a recommendation.

The C<recommendationId> is only valid for up to a maximum of 24 hours
as recommendations are refreshed daily. To retrieve the
C<recommendationId>, use the C<ListRecommendations> API.


=head2 ListEnrollmentStatuses

=over

=item [AccountId => Str]

=item [IncludeOrganizationInfo => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CostOptimizationHub::ListEnrollmentStatuses>

Returns: a L<Paws::CostOptimizationHub::ListEnrollmentStatusesResponse> instance

Retrieves the enrollment status for an account. It can also return the
list of accounts that are enrolled under the organization.


=head2 ListRecommendations

=over

=item [Filter => L<Paws::CostOptimizationHub::Filter>]

=item [IncludeAllRecommendations => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [OrderBy => L<Paws::CostOptimizationHub::OrderBy>]


=back

Each argument is described in detail in: L<Paws::CostOptimizationHub::ListRecommendations>

Returns: a L<Paws::CostOptimizationHub::ListRecommendationsResponse> instance

Returns a list of recommendations.


=head2 ListRecommendationSummaries

=over

=item GroupBy => Str

=item [Filter => L<Paws::CostOptimizationHub::Filter>]

=item [MaxResults => Int]

=item [Metrics => ArrayRef[Str|Undef]]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CostOptimizationHub::ListRecommendationSummaries>

Returns: a L<Paws::CostOptimizationHub::ListRecommendationSummariesResponse> instance

Returns a concise representation of savings estimates for resources.
Also returns de-duped savings across different types of
recommendations.

The following filters are not supported for this API:
C<recommendationIds>, C<resourceArns>, and C<resourceIds>.


=head2 UpdateEnrollmentStatus

=over

=item Status => Str

=item [IncludeMemberAccounts => Bool]


=back

Each argument is described in detail in: L<Paws::CostOptimizationHub::UpdateEnrollmentStatus>

Returns: a L<Paws::CostOptimizationHub::UpdateEnrollmentStatusResponse> instance

Updates the enrollment (opt in and opt out) status of an account to the
Cost Optimization Hub service.

If the account is a management account or delegated administrator of an
organization, this action can also be used to enroll member accounts of
the organization.

You must have the appropriate permissions to opt in to Cost
Optimization Hub and to view its recommendations. When you opt in, Cost
Optimization Hub automatically creates a service-linked role in your
account to access its data.


=head2 UpdatePreferences

=over

=item [MemberAccountDiscountVisibility => Str]

=item [SavingsEstimationMode => Str]


=back

Each argument is described in detail in: L<Paws::CostOptimizationHub::UpdatePreferences>

Returns: a L<Paws::CostOptimizationHub::UpdatePreferencesResponse> instance

Updates a set of preferences for an account in order to add
account-specific preferences into the service. These preferences impact
how the savings associated with recommendations are presented.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllEnrollmentStatuses(sub { },[AccountId => Str, IncludeOrganizationInfo => Bool, MaxResults => Int, NextToken => Str])

=head2 ListAllEnrollmentStatuses([AccountId => Str, IncludeOrganizationInfo => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::CostOptimizationHub::ListEnrollmentStatusesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRecommendations(sub { },[Filter => L<Paws::CostOptimizationHub::Filter>, IncludeAllRecommendations => Bool, MaxResults => Int, NextToken => Str, OrderBy => L<Paws::CostOptimizationHub::OrderBy>])

=head2 ListAllRecommendations([Filter => L<Paws::CostOptimizationHub::Filter>, IncludeAllRecommendations => Bool, MaxResults => Int, NextToken => Str, OrderBy => L<Paws::CostOptimizationHub::OrderBy>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::CostOptimizationHub::ListRecommendationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRecommendationSummaries(sub { },GroupBy => Str, [Filter => L<Paws::CostOptimizationHub::Filter>, MaxResults => Int, Metrics => ArrayRef[Str|Undef], NextToken => Str])

=head2 ListAllRecommendationSummaries(GroupBy => Str, [Filter => L<Paws::CostOptimizationHub::Filter>, MaxResults => Int, Metrics => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - items, passing the object as the first parameter, and the string 'items' as the second parameter 

If not, it will return a a L<Paws::CostOptimizationHub::ListRecommendationSummariesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

