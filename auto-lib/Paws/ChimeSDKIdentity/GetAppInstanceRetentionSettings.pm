
package Paws::ChimeSDKIdentity::GetAppInstanceRetentionSettings;
  use Moose;
  has AppInstanceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appInstanceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAppInstanceRetentionSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app-instances/{appInstanceArn}/retention-settings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKIdentity::GetAppInstanceRetentionSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::GetAppInstanceRetentionSettings - Arguments for method GetAppInstanceRetentionSettings on L<Paws::ChimeSDKIdentity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAppInstanceRetentionSettings on the
L<Amazon Chime SDK Identity|Paws::ChimeSDKIdentity> service. Use the attributes of this class
as arguments to method GetAppInstanceRetentionSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAppInstanceRetentionSettings.

=head1 SYNOPSIS

    my $identity-chime = Paws->service('ChimeSDKIdentity');
    my $GetAppInstanceRetentionSettingsResponse =
      $identity -chime->GetAppInstanceRetentionSettings(
      AppInstanceArn => 'MyChimeArn',

      );

    # Results:
    my $AppInstanceRetentionSettings =
      $GetAppInstanceRetentionSettingsResponse->AppInstanceRetentionSettings;
    my $InitiateDeletionTimestamp =
      $GetAppInstanceRetentionSettingsResponse->InitiateDeletionTimestamp;

# Returns a L<Paws::ChimeSDKIdentity::GetAppInstanceRetentionSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/identity-chime/GetAppInstanceRetentionSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppInstanceArn => Str

The ARN of the C<AppInstance>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAppInstanceRetentionSettings in L<Paws::ChimeSDKIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

