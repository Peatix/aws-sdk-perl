
package Paws::Connect::UpdateHoursOfOperationOverride;
  use Moose;
  has Config => (is => 'ro', isa => 'ArrayRef[Paws::Connect::HoursOfOperationOverrideConfig]');
  has Description => (is => 'ro', isa => 'Str');
  has EffectiveFrom => (is => 'ro', isa => 'Str');
  has EffectiveTill => (is => 'ro', isa => 'Str');
  has HoursOfOperationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'HoursOfOperationId', required => 1);
  has HoursOfOperationOverrideId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'HoursOfOperationOverrideId', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateHoursOfOperationOverride');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/hours-of-operations/{InstanceId}/{HoursOfOperationId}/overrides/{HoursOfOperationOverrideId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateHoursOfOperationOverride - Arguments for method UpdateHoursOfOperationOverride on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateHoursOfOperationOverride on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateHoursOfOperationOverride.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateHoursOfOperationOverride.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->UpdateHoursOfOperationOverride(
      HoursOfOperationId         => 'MyHoursOfOperationId',
      HoursOfOperationOverrideId => 'MyHoursOfOperationOverrideId',
      InstanceId                 => 'MyInstanceId',
      Config                     => [
        {
          Day => 'SUNDAY'
          , # values: SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY; OPTIONAL
          EndTime => {
            Hours   => 1,    # max: 23
            Minutes => 1,    # max: 59

          },    # OPTIONAL
          StartTime => {
            Hours   => 1,    # max: 23
            Minutes => 1,    # max: 59

          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Description   => 'MyCommonHumanReadableDescription',     # OPTIONAL
      EffectiveFrom =>
        'MyHoursOfOperationOverrideYearMonthDayDateFormat',    # OPTIONAL
      EffectiveTill =>
        'MyHoursOfOperationOverrideYearMonthDayDateFormat',    # OPTIONAL
      Name => 'MyCommonHumanReadableName',                     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateHoursOfOperationOverride>

=head1 ATTRIBUTES


=head2 Config => ArrayRef[L<Paws::Connect::HoursOfOperationOverrideConfig>]

Configuration information for the hours of operation override: day,
start time, and end time.



=head2 Description => Str

The description of the hours of operation override.



=head2 EffectiveFrom => Str

The date from when the hours of operation override would be effective.



=head2 EffectiveTill => Str

The date till when the hours of operation override would be effective.



=head2 B<REQUIRED> HoursOfOperationId => Str

The identifier for the hours of operation.



=head2 B<REQUIRED> HoursOfOperationOverrideId => Str

The identifier for the hours of operation override.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 Name => Str

The name of the hours of operation override.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateHoursOfOperationOverride in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

