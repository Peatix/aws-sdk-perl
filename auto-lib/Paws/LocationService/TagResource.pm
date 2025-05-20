
package Paws::LocationService::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::LocationService::TagMap', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags/{ResourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::TagResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::TagResource - Arguments for method TagResource on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $TagResourceResponse = $geo->TagResource(
      ResourceArn => 'MyArn',
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource whose tags you want to
update.

=over

=item *

Format example:
C<arn:aws:geo:region:account-id:resourcetype/ExampleResource>

=back




=head2 B<REQUIRED> Tags => L<Paws::LocationService::TagMap>

Applies one or more tags to specific resource. A tag is a key-value
pair that helps you manage, identify, search, and filter your
resources.

Format: C<"key" : "value">

Restrictions:

=over

=item *

Maximum 50 tags per resource.

=item *

Each tag key must be unique and must have exactly one associated value.

=item *

Maximum key length: 128 Unicode characters in UTF-8.

=item *

Maximum value length: 256 Unicode characters in UTF-8.

=item *

Can use alphanumeric characters (AE<ndash>Z, aE<ndash>z, 0E<ndash>9),
and the following characters: + - = . _ : / @

=item *

Cannot use "aws:" as a prefix for a key.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

