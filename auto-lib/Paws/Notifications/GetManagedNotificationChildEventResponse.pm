
package Paws::Notifications::GetManagedNotificationChildEventResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Content => (is => 'ro', isa => 'Paws::Notifications::ManagedNotificationChildEvent', traits => ['NameInRequest'], request_name => 'content', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has ManagedNotificationConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'managedNotificationConfigurationArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::GetManagedNotificationChildEventResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the resource.


=head2 B<REQUIRED> Content => L<Paws::Notifications::ManagedNotificationChildEvent>

The content of the C<ManagedNotificationChildEvent>.


=head2 B<REQUIRED> CreationTime => Str

The creation time of the C<ManagedNotificationChildEvent>.


=head2 B<REQUIRED> ManagedNotificationConfigurationArn => Str

The Amazon Resource Name (ARN) of the
C<ManagedNotificationConfiguration> associated with the
C<ManagedNotificationChildEvent>.


=head2 _request_id => Str


=cut

