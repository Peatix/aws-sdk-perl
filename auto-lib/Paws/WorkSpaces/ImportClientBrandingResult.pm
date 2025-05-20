
package Paws::WorkSpaces::ImportClientBrandingResult;
  use Moose;
  has DeviceTypeAndroid => (is => 'ro', isa => 'Paws::WorkSpaces::DefaultClientBrandingAttributes');
  has DeviceTypeIos => (is => 'ro', isa => 'Paws::WorkSpaces::IosClientBrandingAttributes');
  has DeviceTypeLinux => (is => 'ro', isa => 'Paws::WorkSpaces::DefaultClientBrandingAttributes');
  has DeviceTypeOsx => (is => 'ro', isa => 'Paws::WorkSpaces::DefaultClientBrandingAttributes');
  has DeviceTypeWeb => (is => 'ro', isa => 'Paws::WorkSpaces::DefaultClientBrandingAttributes');
  has DeviceTypeWindows => (is => 'ro', isa => 'Paws::WorkSpaces::DefaultClientBrandingAttributes');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::ImportClientBrandingResult

=head1 ATTRIBUTES


=head2 DeviceTypeAndroid => L<Paws::WorkSpaces::DefaultClientBrandingAttributes>

The branding information configured for Android devices.


=head2 DeviceTypeIos => L<Paws::WorkSpaces::IosClientBrandingAttributes>

The branding information configured for iOS devices.


=head2 DeviceTypeLinux => L<Paws::WorkSpaces::DefaultClientBrandingAttributes>

The branding information configured for Linux devices.


=head2 DeviceTypeOsx => L<Paws::WorkSpaces::DefaultClientBrandingAttributes>

The branding information configured for macOS devices.


=head2 DeviceTypeWeb => L<Paws::WorkSpaces::DefaultClientBrandingAttributes>

The branding information configured for web access.


=head2 DeviceTypeWindows => L<Paws::WorkSpaces::DefaultClientBrandingAttributes>

The branding information configured for Windows devices.


=head2 _request_id => Str


=cut

1;