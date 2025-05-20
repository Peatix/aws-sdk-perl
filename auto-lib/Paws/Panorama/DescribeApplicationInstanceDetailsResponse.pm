
package Paws::Panorama::DescribeApplicationInstanceDetailsResponse;
  use Moose;
  has ApplicationInstanceId => (is => 'ro', isa => 'Str');
  has ApplicationInstanceIdToReplace => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has DefaultRuntimeContextDevice => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ManifestOverridesPayload => (is => 'ro', isa => 'Paws::Panorama::ManifestOverridesPayload');
  has ManifestPayload => (is => 'ro', isa => 'Paws::Panorama::ManifestPayload');
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::DescribeApplicationInstanceDetailsResponse

=head1 ATTRIBUTES


=head2 ApplicationInstanceId => Str

The application instance's ID.


=head2 ApplicationInstanceIdToReplace => Str

The ID of the application instance that this instance replaced.


=head2 CreatedTime => Str

When the application instance was created.


=head2 DefaultRuntimeContextDevice => Str

The application instance's default runtime context device.


=head2 Description => Str

The application instance's description.


=head2 ManifestOverridesPayload => L<Paws::Panorama::ManifestOverridesPayload>

Parameter overrides for the configuration manifest.


=head2 ManifestPayload => L<Paws::Panorama::ManifestPayload>

The application instance's configuration manifest.


=head2 Name => Str

The application instance's name.


=head2 _request_id => Str


=cut

