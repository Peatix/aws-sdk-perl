
package Paws::ChimeSDKIdentity::PutAppInstanceUserExpirationSettings;
  use Moose;
  has AppInstanceUserArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appInstanceUserArn', required => 1);
  has ExpirationSettings => (is => 'ro', isa => 'Paws::ChimeSDKIdentity::ExpirationSettings');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAppInstanceUserExpirationSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app-instance-users/{appInstanceUserArn}/expiration-settings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKIdentity::PutAppInstanceUserExpirationSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKIdentity::PutAppInstanceUserExpirationSettings - Arguments for method PutAppInstanceUserExpirationSettings on L<Paws::ChimeSDKIdentity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAppInstanceUserExpirationSettings on the
L<Amazon Chime SDK Identity|Paws::ChimeSDKIdentity> service. Use the attributes of this class
as arguments to method PutAppInstanceUserExpirationSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAppInstanceUserExpirationSettings.

=head1 SYNOPSIS

    my $identity-chime = Paws->service('ChimeSDKIdentity');
    my $PutAppInstanceUserExpirationSettingsResponse =
      $identity -chime->PutAppInstanceUserExpirationSettings(
      AppInstanceUserArn => 'MyChimeArn',
      ExpirationSettings => {
        ExpirationCriterion => 'CREATED_TIMESTAMP',  # values: CREATED_TIMESTAMP
        ExpirationDays      => 1,                    # min: 1, max: 5475

      },    # OPTIONAL
      );

    # Results:
    my $AppInstanceUserArn =
      $PutAppInstanceUserExpirationSettingsResponse->AppInstanceUserArn;
    my $ExpirationSettings =
      $PutAppInstanceUserExpirationSettingsResponse->ExpirationSettings;

# Returns a L<Paws::ChimeSDKIdentity::PutAppInstanceUserExpirationSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/identity-chime/PutAppInstanceUserExpirationSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppInstanceUserArn => Str

The ARN of the C<AppInstanceUser>.



=head2 ExpirationSettings => L<Paws::ChimeSDKIdentity::ExpirationSettings>

Settings that control the interval after which an C<AppInstanceUser> is
automatically deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAppInstanceUserExpirationSettings in L<Paws::ChimeSDKIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

