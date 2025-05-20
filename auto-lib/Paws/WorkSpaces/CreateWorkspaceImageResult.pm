
package Paws::WorkSpaces::CreateWorkspaceImageResult;
  use Moose;
  has Created => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ImageId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OperatingSystem => (is => 'ro', isa => 'Paws::WorkSpaces::OperatingSystem');
  has OwnerAccountId => (is => 'ro', isa => 'Str');
  has RequiredTenancy => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::CreateWorkspaceImageResult

=head1 ATTRIBUTES


=head2 Created => Str

The date when the image was created.


=head2 Description => Str

The description of the image.


=head2 ImageId => Str

The identifier of the new WorkSpace image.


=head2 Name => Str

The name of the image.


=head2 OperatingSystem => L<Paws::WorkSpaces::OperatingSystem>

The operating system that the image is running.


=head2 OwnerAccountId => Str

The identifier of the Amazon Web Services account that owns the image.


=head2 RequiredTenancy => Str

Specifies whether the image is running on dedicated hardware. When
Bring Your Own License (BYOL) is enabled, this value is set to
DEDICATED. For more information, see Bring Your Own Windows Desktop
Images.
(https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.htm).

Valid values are: C<"DEFAULT">, C<"DEDICATED">
=head2 State => Str

The availability status of the image.

Valid values are: C<"AVAILABLE">, C<"PENDING">, C<"ERROR">
=head2 _request_id => Str


=cut

1;