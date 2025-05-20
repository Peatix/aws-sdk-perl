
package Paws::Notifications::ListManagedNotificationChannelAssociations;
  use Moose;
  has ManagedNotificationConfigurationArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'managedNotificationConfigurationArn', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListManagedNotificationChannelAssociations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/list-managed-notification-channel-associations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Notifications::ListManagedNotificationChannelAssociationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::ListManagedNotificationChannelAssociations - Arguments for method ListManagedNotificationChannelAssociations on L<Paws::Notifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListManagedNotificationChannelAssociations on the
L<AWS User Notifications|Paws::Notifications> service. Use the attributes of this class
as arguments to method ListManagedNotificationChannelAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListManagedNotificationChannelAssociations.

=head1 SYNOPSIS

    my $notifications = Paws->service('Notifications');
    my $ListManagedNotificationChannelAssociationsResponse =
      $notifications->ListManagedNotificationChannelAssociations(
      ManagedNotificationConfigurationArn =>
        'MyManagedNotificationConfigurationOsArn',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $ChannelAssociations =
      $ListManagedNotificationChannelAssociationsResponse->ChannelAssociations;
    my $NextToken =
      $ListManagedNotificationChannelAssociationsResponse->NextToken;

# Returns a L<Paws::Notifications::ListManagedNotificationChannelAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/notifications/ListManagedNotificationChannelAssociations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ManagedNotificationConfigurationArn => Str

The Amazon Resource Name (ARN) of the
C<ManagedNotificationConfiguration> to match.



=head2 MaxResults => Int

The maximum number of results to be returned in this call. Defaults to
20.



=head2 NextToken => Str

The start token for paginated calls. Retrieved from the response of a
previous C<ListManagedNotificationChannelAssociations> call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListManagedNotificationChannelAssociations in L<Paws::Notifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

