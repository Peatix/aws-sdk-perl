
package Paws::Connect::CreateHoursOfOperation;
  use Moose;
  has Config => (is => 'ro', isa => 'ArrayRef[Paws::Connect::HoursOfOperationConfig]', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Connect::TagMap');
  has TimeZone => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHoursOfOperation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/hours-of-operations/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::CreateHoursOfOperationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateHoursOfOperation - Arguments for method CreateHoursOfOperation on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateHoursOfOperation on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method CreateHoursOfOperation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateHoursOfOperation.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $CreateHoursOfOperationResponse = $connect->CreateHoursOfOperation(
      Config => [
        {
          Day => 'SUNDAY'
          , # values: SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
          EndTime => {
            Hours   => 1,    # max: 23
            Minutes => 1,    # max: 59

          },
          StartTime => {
            Hours   => 1,    # max: 23
            Minutes => 1,    # max: 59

          },

        },
        ...
      ],
      InstanceId  => 'MyInstanceId',
      Name        => 'MyCommonNameLength127',
      TimeZone    => 'MyTimeZone',
      Description => 'MyHoursOfOperationDescription',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $HoursOfOperationArn =
      $CreateHoursOfOperationResponse->HoursOfOperationArn;
    my $HoursOfOperationId =
      $CreateHoursOfOperationResponse->HoursOfOperationId;

    # Returns a L<Paws::Connect::CreateHoursOfOperationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreateHoursOfOperation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Config => ArrayRef[L<Paws::Connect::HoursOfOperationConfig>]

Configuration information for the hours of operation: day, start time,
and end time.



=head2 Description => Str

The description of the hours of operation.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 B<REQUIRED> Name => Str

The name of the hours of operation.



=head2 Tags => L<Paws::Connect::TagMap>

The tags used to organize, track, or control access for this resource.
For example, { "Tags": {"key1":"value1", "key2":"value2"} }.



=head2 B<REQUIRED> TimeZone => Str

The time zone of the hours of operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateHoursOfOperation in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

