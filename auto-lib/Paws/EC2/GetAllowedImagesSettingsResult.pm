
package Paws::EC2::GetAllowedImagesSettingsResult;
  use Moose;
  has ImageCriteria => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ImageCriterion]', request_name => 'imageCriterionSet', traits => ['NameInRequest',]);
  has ManagedBy => (is => 'ro', isa => 'Str', request_name => 'managedBy', traits => ['NameInRequest',]);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetAllowedImagesSettingsResult

=head1 ATTRIBUTES


=head2 ImageCriteria => ArrayRef[L<Paws::EC2::ImageCriterion>]

The list of criteria for images that are discoverable and usable in the
account in the specified Amazon Web Services Region.


=head2 ManagedBy => Str

The entity that manages the Allowed AMIs settings. Possible values
include:

=over

=item *

C<account> - The Allowed AMIs settings is managed by the account.

=item *

C<declarative-policy> - The Allowed AMIs settings is managed by a
declarative policy and can't be modified by the account.

=back


Valid values are: C<"account">, C<"declarative-policy">
=head2 State => Str

The current state of the Allowed AMIs setting at the account level in
the specified Amazon Web Services Region.

Possible values:

=over

=item *

C<disabled>: All AMIs are allowed.

=item *

C<audit-mode>: All AMIs are allowed, but the C<ImageAllowed> field is
set to C<true> if the AMI would be allowed with the current list of
criteria if allowed AMIs was enabled.

=item *

C<enabled>: Only AMIs matching the image criteria are discoverable and
available for use.

=back



=head2 _request_id => Str


=cut

