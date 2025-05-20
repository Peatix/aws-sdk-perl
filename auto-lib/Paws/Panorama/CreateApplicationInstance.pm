
package Paws::Panorama::CreateApplicationInstance;
  use Moose;
  has ApplicationInstanceIdToReplace => (is => 'ro', isa => 'Str');
  has DefaultRuntimeContextDevice => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has ManifestOverridesPayload => (is => 'ro', isa => 'Paws::Panorama::ManifestOverridesPayload');
  has ManifestPayload => (is => 'ro', isa => 'Paws::Panorama::ManifestPayload', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has RuntimeRoleArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Panorama::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplicationInstance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/application-instances');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Panorama::CreateApplicationInstanceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::CreateApplicationInstance - Arguments for method CreateApplicationInstance on L<Paws::Panorama>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplicationInstance on the
L<AWS Panorama|Paws::Panorama> service. Use the attributes of this class
as arguments to method CreateApplicationInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplicationInstance.

=head1 SYNOPSIS

    my $panorama = Paws->service('Panorama');
    my $CreateApplicationInstanceResponse =
      $panorama->CreateApplicationInstance(
      DefaultRuntimeContextDevice => 'MyDefaultRuntimeContextDevice',
      ManifestPayload             => {
        PayloadData => 'MyManifestPayloadData',   # min: 1, max: 51200; OPTIONAL
      },
      ApplicationInstanceIdToReplace => 'MyApplicationInstanceId',    # OPTIONAL
      Description                    => 'MyDescription',              # OPTIONAL
      ManifestOverridesPayload       => {
        PayloadData => 'MyManifestOverridesPayloadData',  # max: 51200; OPTIONAL
      },    # OPTIONAL
      Name           => 'MyApplicationInstanceName',    # OPTIONAL
      RuntimeRoleArn => 'MyRuntimeRoleArn',             # OPTIONAL
      Tags           => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $ApplicationInstanceId =
      $CreateApplicationInstanceResponse->ApplicationInstanceId;

    # Returns a L<Paws::Panorama::CreateApplicationInstanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/panorama/CreateApplicationInstance>

=head1 ATTRIBUTES


=head2 ApplicationInstanceIdToReplace => Str

The ID of an application instance to replace with the new instance.



=head2 B<REQUIRED> DefaultRuntimeContextDevice => Str

A device's ID.



=head2 Description => Str

A description for the application instance.



=head2 ManifestOverridesPayload => L<Paws::Panorama::ManifestOverridesPayload>

Setting overrides for the application manifest.



=head2 B<REQUIRED> ManifestPayload => L<Paws::Panorama::ManifestPayload>

The application's manifest document.



=head2 Name => Str

A name for the application instance.



=head2 RuntimeRoleArn => Str

The ARN of a runtime role for the application instance.



=head2 Tags => L<Paws::Panorama::TagMap>

Tags for the application instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplicationInstance in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

