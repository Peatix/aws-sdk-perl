
package Paws::IoTWireless::PutResourceLogLevel;
  use Moose;
  has LogLevel => (is => 'ro', isa => 'Str', required => 1);
  has ResourceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceIdentifier', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResourceLogLevel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/log-levels/{ResourceIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::PutResourceLogLevelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::PutResourceLogLevel - Arguments for method PutResourceLogLevel on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResourceLogLevel on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method PutResourceLogLevel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResourceLogLevel.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $PutResourceLogLevelResponse = $api . iotwireless->PutResourceLogLevel(
      LogLevel           => 'INFO',
      ResourceIdentifier => 'MyResourceIdentifier',
      ResourceType       => 'MyResourceType',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/PutResourceLogLevel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogLevel => Str



Valid values are: C<"INFO">, C<"ERROR">, C<"DISABLED">

=head2 B<REQUIRED> ResourceIdentifier => Str





=head2 B<REQUIRED> ResourceType => Str

The type of resource, which can be C<WirelessDevice>,
C<WirelessGateway>, or C<FuotaTask>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResourceLogLevel in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

