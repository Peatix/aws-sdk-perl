
package Paws::Notifications::GetManagedNotificationConfigurationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Category => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'category', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has SubCategory => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subCategory', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::GetManagedNotificationConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the C<ManagedNotificationConfiguration> resource.


=head2 B<REQUIRED> Category => Str

The category of the C<ManagedNotificationConfiguration>.


=head2 B<REQUIRED> Description => Str

The description of the C<ManagedNotificationConfiguration>.


=head2 B<REQUIRED> Name => Str

The name of the C<ManagedNotificationConfiguration>.


=head2 B<REQUIRED> SubCategory => Str

The subCategory of the C<ManagedNotificationConfiguration>.


=head2 _request_id => Str


=cut

