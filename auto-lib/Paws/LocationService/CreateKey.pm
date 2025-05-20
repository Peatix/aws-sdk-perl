
package Paws::LocationService::CreateKey;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has ExpireTime => (is => 'ro', isa => 'Str');
  has KeyName => (is => 'ro', isa => 'Str', required => 1);
  has NoExpiry => (is => 'ro', isa => 'Bool');
  has Restrictions => (is => 'ro', isa => 'Paws::LocationService::ApiKeyRestrictions', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::LocationService::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/metadata/v0/keys');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::CreateKeyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::CreateKey - Arguments for method CreateKey on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateKey on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method CreateKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateKey.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $CreateKeyResponse = $geo->CreateKey(
      KeyName      => 'MyResourceName',
      Restrictions => {
        AllowActions => [
          'MyApiKeyAction', ...    # min: 5, max: 200
        ],    # min: 1, max: 24
        AllowResources => [
          'MyGeoArnV2', ...    # max: 1600
        ],    # min: 1, max: 8
        AllowReferers => [
          'MyRefererPattern', ...    # max: 253
        ],    # min: 1, max: 5; OPTIONAL
      },
      Description => 'MyResourceDescription',    # OPTIONAL
      ExpireTime  => '1970-01-01T01:00:00',      # OPTIONAL
      NoExpiry    => 1,                          # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $CreateTime = $CreateKeyResponse->CreateTime;
    my $Key        = $CreateKeyResponse->Key;
    my $KeyArn     = $CreateKeyResponse->KeyArn;
    my $KeyName    = $CreateKeyResponse->KeyName;

    # Returns a L<Paws::LocationService::CreateKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/CreateKey>

=head1 ATTRIBUTES


=head2 Description => Str

An optional description for the API key resource.



=head2 ExpireTime => Str

The optional timestamp for when the API key resource will expire in ISO
8601 (https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>. One of C<NoExpiry> or C<ExpireTime> must
be set.



=head2 B<REQUIRED> KeyName => Str

A custom name for the API key resource.

Requirements:

=over

=item *

Contain only alphanumeric characters (AE<ndash>Z, aE<ndash>z,
0E<ndash>9), hyphens (-), periods (.), and underscores (_).

=item *

Must be a unique API key name.

=item *

No spaces allowed. For example, C<ExampleAPIKey>.

=back




=head2 NoExpiry => Bool

Optionally set to C<true> to set no expiration time for the API key.
One of C<NoExpiry> or C<ExpireTime> must be set.



=head2 B<REQUIRED> Restrictions => L<Paws::LocationService::ApiKeyRestrictions>

The API key restrictions for the API key resource.



=head2 Tags => L<Paws::LocationService::TagMap>

Applies one or more tags to the map resource. A tag is a key-value pair
that helps manage, identify, search, and filter your resources by
labelling them.

Format: C<"key" : "value">

Restrictions:

=over

=item *

Maximum 50 tags per resource

=item *

Each resource tag must be unique with a maximum of one value.

=item *

Maximum key length: 128 Unicode characters in UTF-8

=item *

Maximum value length: 256 Unicode characters in UTF-8

=item *

Can use alphanumeric characters (AE<ndash>Z, aE<ndash>z, 0E<ndash>9),
and the following characters: + - = . _ : / @.

=item *

Cannot use "aws:" as a prefix for a key.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateKey in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

