
package Paws::Notifications::ListNotificationHubs;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListNotificationHubs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/notification-hubs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Notifications::ListNotificationHubsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::ListNotificationHubs - Arguments for method ListNotificationHubs on L<Paws::Notifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListNotificationHubs on the
L<AWS User Notifications|Paws::Notifications> service. Use the attributes of this class
as arguments to method ListNotificationHubs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListNotificationHubs.

=head1 SYNOPSIS

    my $notifications = Paws->service('Notifications');
    my $ListNotificationHubsResponse = $notifications->ListNotificationHubs(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken        = $ListNotificationHubsResponse->NextToken;
    my $NotificationHubs = $ListNotificationHubsResponse->NotificationHubs;

    # Returns a L<Paws::Notifications::ListNotificationHubsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/notifications/ListNotificationHubs>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of records to list in a single response.



=head2 NextToken => Str

A pagination token. Set to null to start listing notification hubs from
the start.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListNotificationHubs in L<Paws::Notifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

