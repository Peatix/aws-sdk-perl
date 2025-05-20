
package Paws::WorkSpacesWeb::DeleteUserAccessLoggingSettings;
  use Moose;
  has UserAccessLoggingSettingsArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'userAccessLoggingSettingsArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUserAccessLoggingSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/userAccessLoggingSettings/{userAccessLoggingSettingsArn+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpacesWeb::DeleteUserAccessLoggingSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::DeleteUserAccessLoggingSettings - Arguments for method DeleteUserAccessLoggingSettings on L<Paws::WorkSpacesWeb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteUserAccessLoggingSettings on the
L<Amazon WorkSpaces Web|Paws::WorkSpacesWeb> service. Use the attributes of this class
as arguments to method DeleteUserAccessLoggingSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteUserAccessLoggingSettings.

=head1 SYNOPSIS

    my $workspaces-web = Paws->service('WorkSpacesWeb');
    my $DeleteUserAccessLoggingSettingsResponse =
      $workspaces -web->DeleteUserAccessLoggingSettings(
      UserAccessLoggingSettingsArn => 'MyARN',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces-web/DeleteUserAccessLoggingSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> UserAccessLoggingSettingsArn => Str

The ARN of the user access logging settings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteUserAccessLoggingSettings in L<Paws::WorkSpacesWeb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

