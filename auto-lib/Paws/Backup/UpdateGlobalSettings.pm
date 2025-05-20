
package Paws::Backup::UpdateGlobalSettings;
  use Moose;
  has GlobalSettings => (is => 'ro', isa => 'Paws::Backup::GlobalSettings');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGlobalSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-settings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::UpdateGlobalSettings - Arguments for method UpdateGlobalSettings on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGlobalSettings on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method UpdateGlobalSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGlobalSettings.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    $backup->UpdateGlobalSettings(
      GlobalSettings => { 'MyGlobalSettingsName' => 'MyGlobalSettingsValue', }
      ,    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/UpdateGlobalSettings>

=head1 ATTRIBUTES


=head2 GlobalSettings => L<Paws::Backup::GlobalSettings>

A value for C<isCrossAccountBackupEnabled> and a Region. Example:
C<update-global-settings --global-settings
isCrossAccountBackupEnabled=false --region us-west-2>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGlobalSettings in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

