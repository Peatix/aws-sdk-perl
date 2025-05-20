
package Paws::GameLiftStreams::UpdateStreamGroupOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has AssociatedApplications => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has DefaultApplication => (is => 'ro', isa => 'Paws::GameLiftStreams::DefaultApplication');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has LastUpdatedAt => (is => 'ro', isa => 'Str');
  has LocationStates => (is => 'ro', isa => 'ArrayRef[Paws::GameLiftStreams::LocationState]');
  has Status => (is => 'ro', isa => 'Str');
  has StatusReason => (is => 'ro', isa => 'Str');
  has StreamClass => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::UpdateStreamGroupOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

An Amazon Resource Name (ARN) that is assigned to the stream group
resource and that uniquely identifies the group across all Amazon Web
Services Regions. Format is C<arn:aws:gameliftstreams:[AWS Region]:[AWS
account]:streamgroup/[resource ID]>.


=head2 AssociatedApplications => ArrayRef[Str|Undef]

A set of applications that this stream group is associated with. You
can stream any of these applications with the stream group.

This value is a set of Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
that uniquely identify application resources. Format example:
C<arn:aws:gameliftstreams:us-west-2:123456789012:application/a-9ZY8X7Wv6>.


=head2 CreatedAt => Str

A timestamp that indicates when this resource was created. Timestamps
are expressed using in ISO8601 format, such as:
C<2022-12-27T22:29:40+00:00> (UTC).


=head2 DefaultApplication => L<Paws::GameLiftStreams::DefaultApplication>

The default Amazon GameLift Streams application that is associated with
this stream group.


=head2 Description => Str

A descriptive label for the stream group.


=head2 Id => Str

A unique ID value that is assigned to the resource when it's created.
Format example: C<sg-1AB2C3De4>.


=head2 LastUpdatedAt => Str

A timestamp that indicates when this resource was last updated.
Timestamps are expressed using in ISO8601 format, such as:
C<2022-12-27T22:29:40+00:00> (UTC).


=head2 LocationStates => ArrayRef[L<Paws::GameLiftStreams::LocationState>]

This value is set of locations, including their name, current status,
and capacities.

A location can be in one of the following states:

=over

=item *

B<ACTIVATING>: Amazon GameLift Streams is preparing the location. You
cannot stream from, scale the capacity of, or remove this location yet.

=item *

B<ACTIVE>: The location is provisioned with initial capacity. You can
now stream from, scale the capacity of, or remove this location.

=item *

B<ERROR>: Amazon GameLift Streams failed to set up this location. The
StatusReason field describes the error. You can remove this location
and try to add it again.

=item *

B<REMOVING>: Amazon GameLift Streams is working to remove this
location. It releases all provisioned capacity for this location in
this stream group.

=back



=head2 Status => Str

The current status of the stream group resource. Possible statuses
include the following:

=over

=item *

C<ACTIVATING>: The stream group is deploying and isn't ready to host
streams.

=item *

C<ACTIVE>: The stream group is ready to host streams.

=item *

C<ACTIVE_WITH_ERRORS>: One or more locations in the stream group are in
an error state. Verify the details of individual locations and remove
any locations which are in error.

=item *

C<ERROR>: An error occurred when the stream group deployed. See
C<StatusReason> for more information.

=item *

C<DELETING>: Amazon GameLift Streams is in the process of deleting the
stream group.

=item *

C<UPDATING_LOCATIONS>: One or more locations in the stream group are in
the process of updating (either activating or deleting).

=back


Valid values are: C<"ACTIVATING">, C<"UPDATING_LOCATIONS">, C<"ACTIVE">, C<"ACTIVE_WITH_ERRORS">, C<"ERROR">, C<"DELETING">
=head2 StatusReason => Str

A short description of the reason that the stream group is in C<ERROR>
status. The possible reasons can be one of the following:

=over

=item *

C<internalError>: The request can't process right now bcause of an
issue with the server. Try again later. Reach out to the Amazon
GameLift Streams team for more help.

=item *

C<noAvailableInstances>: Amazon GameLift Streams does not currently
have enough available On-Demand capacity to fulfill your request. Wait
a few minutes and retry the request as capacity can shift frequently.
You can also try to make the request using a different stream class or
in another region.

=back


Valid values are: C<"internalError">, C<"noAvailableInstances">
=head2 StreamClass => Str

The target stream quality for the stream group.

A stream class can be one of the following:

=over

=item *

B<C<gen5n_win2022> (NVIDIA, ultra)> Supports applications with
extremely high 3D scene complexity. Runs applications on Microsoft
Windows Server 2022 Base and supports DirectX 12. Compatible with
Unreal Engine versions up through 5.4, 32 and 64-bit applications, and
anti-cheat technology. Uses NVIDIA A10G Tensor GPU.

=over

=item *

Reference resolution: 1080p

=item *

Reference frame rate: 60 fps

=item *

Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM

=item *

Tenancy: Supports 1 concurrent stream session

=back

=item *

B<C<gen5n_high> (NVIDIA, high)> Supports applications with moderate to
high 3D scene complexity. Uses NVIDIA A10G Tensor GPU.

=over

=item *

Reference resolution: 1080p

=item *

Reference frame rate: 60 fps

=item *

Workload specifications: 4 vCPUs, 16 GB RAM, 12 GB VRAM

=item *

Tenancy: Supports up to 2 concurrent stream sessions

=back

=item *

B<C<gen5n_ultra> (NVIDIA, ultra)> Supports applications with extremely
high 3D scene complexity. Uses dedicated NVIDIA A10G Tensor GPU.

=over

=item *

Reference resolution: 1080p

=item *

Reference frame rate: 60 fps

=item *

Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM

=item *

Tenancy: Supports 1 concurrent stream session

=back

=item *

B<C<gen4n_win2022> (NVIDIA, ultra)> Supports applications with
extremely high 3D scene complexity. Runs applications on Microsoft
Windows Server 2022 Base and supports DirectX 12. Compatible with
Unreal Engine versions up through 5.4, 32 and 64-bit applications, and
anti-cheat technology. Uses NVIDIA T4 Tensor GPU.

=over

=item *

Reference resolution: 1080p

=item *

Reference frame rate: 60 fps

=item *

Workload specifications: 8 vCPUs, 32 GB RAM, 16 GB VRAM

=item *

Tenancy: Supports 1 concurrent stream session

=back

=item *

B<C<gen4n_high> (NVIDIA, high)> Supports applications with moderate to
high 3D scene complexity. Uses NVIDIA T4 Tensor GPU.

=over

=item *

Reference resolution: 1080p

=item *

Reference frame rate: 60 fps

=item *

Workload specifications: 4 vCPUs, 16 GB RAM, 8 GB VRAM

=item *

Tenancy: Supports up to 2 concurrent stream sessions

=back

=item *

B<C<gen4n_ultra> (NVIDIA, ultra)> Supports applications with high 3D
scene complexity. Uses dedicated NVIDIA T4 Tensor GPU.

=over

=item *

Reference resolution: 1080p

=item *

Reference frame rate: 60 fps

=item *

Workload specifications: 8 vCPUs, 32 GB RAM, 16 GB VRAM

=item *

Tenancy: Supports 1 concurrent stream session

=back

=back


Valid values are: C<"gen4n_high">, C<"gen4n_ultra">, C<"gen4n_win2022">, C<"gen5n_high">, C<"gen5n_ultra">, C<"gen5n_win2022">
=head2 _request_id => Str


=cut

