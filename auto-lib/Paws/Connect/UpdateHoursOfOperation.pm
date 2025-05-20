
package Paws::Connect::UpdateHoursOfOperation;
  use Moose;
  has Config => (is => 'ro', isa => 'ArrayRef[Paws::Connect::HoursOfOperationConfig]');
  has Description => (is => 'ro', isa => 'Str');
  has HoursOfOperationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'HoursOfOperationId', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has TimeZone => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateHoursOfOperation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/hours-of-operations/{InstanceId}/{HoursOfOperationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateHoursOfOperation - Arguments for method UpdateHoursOfOperation on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateHoursOfOperation on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateHoursOfOperation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateHoursOfOperation.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->UpdateHoursOfOperation(
      HoursOfOperationId => 'MyHoursOfOperationId',
      InstanceId         => 'MyInstanceId',
      Config             => [
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
      ],    # OPTIONAL
      Description => 'MyUpdateHoursOfOperationDescription',    # OPTIONAL
      Name        => 'MyCommonNameLength127',                  # OPTIONAL
      TimeZone    => 'MyTimeZone',                             # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateHoursOfOperation>

=head1 ATTRIBUTES


=head2 Config => ArrayRef[L<Paws::Connect::HoursOfOperationConfig>]

Configuration information of the hours of operation.



=head2 Description => Str

The description of the hours of operation.



=head2 B<REQUIRED> HoursOfOperationId => Str

The identifier of the hours of operation.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 Name => Str

The name of the hours of operation.



=head2 TimeZone => Str

The time zone of the hours of operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateHoursOfOperation in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

