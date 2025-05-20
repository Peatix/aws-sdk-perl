
package Paws::LocationService::UpdateKey;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has ExpireTime => (is => 'ro', isa => 'Str');
  has ForceUpdate => (is => 'ro', isa => 'Bool');
  has KeyName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'KeyName', required => 1);
  has NoExpiry => (is => 'ro', isa => 'Bool');
  has Restrictions => (is => 'ro', isa => 'Paws::LocationService::ApiKeyRestrictions');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/metadata/v0/keys/{KeyName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::UpdateKeyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::UpdateKey - Arguments for method UpdateKey on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateKey on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method UpdateKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateKey.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $UpdateKeyResponse = $geo->UpdateKey(
      KeyName      => 'MyResourceName',
      Description  => 'MyResourceDescription',    # OPTIONAL
      ExpireTime   => '1970-01-01T01:00:00',      # OPTIONAL
      ForceUpdate  => 1,                          # OPTIONAL
      NoExpiry     => 1,                          # OPTIONAL
      Restrictions => {
        AllowActions => [
          'MyApiKeyAction', ...                   # min: 5, max: 200
        ],    # min: 1, max: 24
        AllowResources => [
          'MyGeoArnV2', ...    # max: 1600
        ],    # min: 1, max: 8
        AllowReferers => [
          'MyRefererPattern', ...    # max: 253
        ],    # min: 1, max: 5; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $KeyArn     = $UpdateKeyResponse->KeyArn;
    my $KeyName    = $UpdateKeyResponse->KeyName;
    my $UpdateTime = $UpdateKeyResponse->UpdateTime;

    # Returns a L<Paws::LocationService::UpdateKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/UpdateKey>

=head1 ATTRIBUTES


=head2 Description => Str

Updates the description for the API key resource.



=head2 ExpireTime => Str

Updates the timestamp for when the API key resource will expire in ISO
8601 (https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.



=head2 ForceUpdate => Bool

The boolean flag to be included for updating C<ExpireTime> or
C<Restrictions> details.

Must be set to C<true> to update an API key resource that has been used
in the past 7 days.

C<False> if force update is not preferred

Default value: C<False>



=head2 B<REQUIRED> KeyName => Str

The name of the API key resource to update.



=head2 NoExpiry => Bool

Whether the API key should expire. Set to C<true> to set the API key to
have no expiration time.



=head2 Restrictions => L<Paws::LocationService::ApiKeyRestrictions>

Updates the API key restrictions for the API key resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateKey in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

