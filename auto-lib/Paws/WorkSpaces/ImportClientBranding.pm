
package Paws::WorkSpaces::ImportClientBranding;
  use Moose;
  has DeviceTypeAndroid => (is => 'ro', isa => 'Paws::WorkSpaces::DefaultImportClientBrandingAttributes');
  has DeviceTypeIos => (is => 'ro', isa => 'Paws::WorkSpaces::IosImportClientBrandingAttributes');
  has DeviceTypeLinux => (is => 'ro', isa => 'Paws::WorkSpaces::DefaultImportClientBrandingAttributes');
  has DeviceTypeOsx => (is => 'ro', isa => 'Paws::WorkSpaces::DefaultImportClientBrandingAttributes');
  has DeviceTypeWeb => (is => 'ro', isa => 'Paws::WorkSpaces::DefaultImportClientBrandingAttributes');
  has DeviceTypeWindows => (is => 'ro', isa => 'Paws::WorkSpaces::DefaultImportClientBrandingAttributes');
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportClientBranding');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::ImportClientBrandingResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::ImportClientBranding - Arguments for method ImportClientBranding on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportClientBranding on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method ImportClientBranding.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportClientBranding.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $ImportClientBrandingResult = $workspaces->ImportClientBranding(
      ResourceId        => 'MyDirectoryId',
      DeviceTypeAndroid => {
        ForgotPasswordLink => 'MyClientUrl',    # min: 1, max: 200; OPTIONAL
        LoginMessage       => {
          'MyClientLocale' =>
            'MyClientLoginMessage',    # key: min: 5, max: 5, value: max: 2000
        },    # OPTIONAL
        Logo         => 'BlobDefaultLogo',    # min: 1, max: 1500000; OPTIONAL
        SupportEmail => 'MyClientEmail',      # min: 6, max: 64; OPTIONAL
        SupportLink  => 'MyClientUrl',        # min: 1, max: 200; OPTIONAL
      },    # OPTIONAL
      DeviceTypeIos => {
        ForgotPasswordLink => 'MyClientUrl',    # min: 1, max: 200; OPTIONAL
        LoginMessage       => {
          'MyClientLocale' =>
            'MyClientLoginMessage',    # key: min: 5, max: 5, value: max: 2000
        },    # OPTIONAL
        Logo         => 'BlobIosLogo',      # min: 1, max: 447000; OPTIONAL
        Logo2x       => 'BlobIos2XLogo',    # min: 1, max: 1770000; OPTIONAL
        Logo3x       => 'BlobIos3XLogo',    # min: 1, max: 1770000; OPTIONAL
        SupportEmail => 'MyClientEmail',    # min: 6, max: 64; OPTIONAL
        SupportLink  => 'MyClientUrl',      # min: 1, max: 200; OPTIONAL
      },    # OPTIONAL
      DeviceTypeLinux => {
        ForgotPasswordLink => 'MyClientUrl',    # min: 1, max: 200; OPTIONAL
        LoginMessage       => {
          'MyClientLocale' =>
            'MyClientLoginMessage',    # key: min: 5, max: 5, value: max: 2000
        },    # OPTIONAL
        Logo         => 'BlobDefaultLogo',    # min: 1, max: 1500000; OPTIONAL
        SupportEmail => 'MyClientEmail',      # min: 6, max: 64; OPTIONAL
        SupportLink  => 'MyClientUrl',        # min: 1, max: 200; OPTIONAL
      },    # OPTIONAL
      DeviceTypeOsx => {
        ForgotPasswordLink => 'MyClientUrl',    # min: 1, max: 200; OPTIONAL
        LoginMessage       => {
          'MyClientLocale' =>
            'MyClientLoginMessage',    # key: min: 5, max: 5, value: max: 2000
        },    # OPTIONAL
        Logo         => 'BlobDefaultLogo',    # min: 1, max: 1500000; OPTIONAL
        SupportEmail => 'MyClientEmail',      # min: 6, max: 64; OPTIONAL
        SupportLink  => 'MyClientUrl',        # min: 1, max: 200; OPTIONAL
      },    # OPTIONAL
      DeviceTypeWeb => {
        ForgotPasswordLink => 'MyClientUrl',    # min: 1, max: 200; OPTIONAL
        LoginMessage       => {
          'MyClientLocale' =>
            'MyClientLoginMessage',    # key: min: 5, max: 5, value: max: 2000
        },    # OPTIONAL
        Logo         => 'BlobDefaultLogo',    # min: 1, max: 1500000; OPTIONAL
        SupportEmail => 'MyClientEmail',      # min: 6, max: 64; OPTIONAL
        SupportLink  => 'MyClientUrl',        # min: 1, max: 200; OPTIONAL
      },    # OPTIONAL
      DeviceTypeWindows => {
        ForgotPasswordLink => 'MyClientUrl',    # min: 1, max: 200; OPTIONAL
        LoginMessage       => {
          'MyClientLocale' =>
            'MyClientLoginMessage',    # key: min: 5, max: 5, value: max: 2000
        },    # OPTIONAL
        Logo         => 'BlobDefaultLogo',    # min: 1, max: 1500000; OPTIONAL
        SupportEmail => 'MyClientEmail',      # min: 6, max: 64; OPTIONAL
        SupportLink  => 'MyClientUrl',        # min: 1, max: 200; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $DeviceTypeAndroid = $ImportClientBrandingResult->DeviceTypeAndroid;
    my $DeviceTypeIos     = $ImportClientBrandingResult->DeviceTypeIos;
    my $DeviceTypeLinux   = $ImportClientBrandingResult->DeviceTypeLinux;
    my $DeviceTypeOsx     = $ImportClientBrandingResult->DeviceTypeOsx;
    my $DeviceTypeWeb     = $ImportClientBrandingResult->DeviceTypeWeb;
    my $DeviceTypeWindows = $ImportClientBrandingResult->DeviceTypeWindows;

    # Returns a L<Paws::WorkSpaces::ImportClientBrandingResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/ImportClientBranding>

=head1 ATTRIBUTES


=head2 DeviceTypeAndroid => L<Paws::WorkSpaces::DefaultImportClientBrandingAttributes>

The branding information to import for Android devices.



=head2 DeviceTypeIos => L<Paws::WorkSpaces::IosImportClientBrandingAttributes>

The branding information to import for iOS devices.



=head2 DeviceTypeLinux => L<Paws::WorkSpaces::DefaultImportClientBrandingAttributes>

The branding information to import for Linux devices.



=head2 DeviceTypeOsx => L<Paws::WorkSpaces::DefaultImportClientBrandingAttributes>

The branding information to import for macOS devices.



=head2 DeviceTypeWeb => L<Paws::WorkSpaces::DefaultImportClientBrandingAttributes>

The branding information to import for web access.



=head2 DeviceTypeWindows => L<Paws::WorkSpaces::DefaultImportClientBrandingAttributes>

The branding information to import for Windows devices.



=head2 B<REQUIRED> ResourceId => Str

The directory identifier of the WorkSpace for which you want to import
client branding.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportClientBranding in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

