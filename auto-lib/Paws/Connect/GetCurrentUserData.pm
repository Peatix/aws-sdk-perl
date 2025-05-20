
package Paws::Connect::GetCurrentUserData;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::Connect::UserDataFilters', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCurrentUserData');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/metrics/userdata/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::GetCurrentUserDataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetCurrentUserData - Arguments for method GetCurrentUserData on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCurrentUserData on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method GetCurrentUserData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCurrentUserData.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $GetCurrentUserDataResponse = $connect->GetCurrentUserData(
      Filters => {
        Agents        => [ 'MyUserId', ... ],    # min: 1, max: 100; OPTIONAL
        ContactFilter => {
          ContactStates => [
            'INCOMING',
            ... # values: INCOMING, PENDING, CONNECTING, CONNECTED, CONNECTED_ONHOLD, MISSED, ERROR, ENDED, REJECTED
          ],    # max: 9; OPTIONAL
        },    # OPTIONAL
        Queues          => [ 'MyQueueId', ... ],    # min: 1, max: 100; OPTIONAL
        RoutingProfiles => [ 'MyRoutingProfileId', ... ]
        ,                                           # min: 1, max: 100; OPTIONAL
        UserHierarchyGroups => [ 'MyHierarchyGroupId', ... ]
        ,                                           # min: 1, max: 1; OPTIONAL
      },
      InstanceId => 'MyInstanceId',
      MaxResults => 1,                              # OPTIONAL
      NextToken  => 'MyNextToken',                  # OPTIONAL
    );

    # Results:
    my $ApproximateTotalCount =
      $GetCurrentUserDataResponse->ApproximateTotalCount;
    my $NextToken    = $GetCurrentUserDataResponse->NextToken;
    my $UserDataList = $GetCurrentUserDataResponse->UserDataList;

    # Returns a L<Paws::Connect::GetCurrentUserDataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/GetCurrentUserData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Filters => L<Paws::Connect::UserDataFilters>

The filters to apply to returned user data. You can filter up to the
following limits:

=over

=item *

Queues: 100

=item *

Routing profiles: 100

=item *

Agents: 100

=item *

Contact states: 9

=item *

User hierarchy groups: 1

=back

The user data is retrieved for only the specified values/resources in
the filter. A maximum of one filter can be passed from queues, routing
profiles, agents, and user hierarchy groups.

Currently tagging is only supported on the resources that are passed in
the filter.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCurrentUserData in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

