
package Paws::Connect::GetEffectiveHoursOfOperations;
  use Moose;
  has FromDate => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'fromDate', required => 1);
  has HoursOfOperationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'HoursOfOperationId', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has ToDate => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'toDate', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEffectiveHoursOfOperations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/effective-hours-of-operations/{InstanceId}/{HoursOfOperationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::GetEffectiveHoursOfOperationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetEffectiveHoursOfOperations - Arguments for method GetEffectiveHoursOfOperations on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEffectiveHoursOfOperations on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method GetEffectiveHoursOfOperations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEffectiveHoursOfOperations.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $GetEffectiveHoursOfOperationsResponse =
      $connect->GetEffectiveHoursOfOperations(
      FromDate           => 'MyHoursOfOperationOverrideYearMonthDayDateFormat',
      HoursOfOperationId => 'MyHoursOfOperationId',
      InstanceId         => 'MyInstanceId',
      ToDate             => 'MyHoursOfOperationOverrideYearMonthDayDateFormat',

      );

    # Results:
    my $EffectiveHoursOfOperationList =
      $GetEffectiveHoursOfOperationsResponse->EffectiveHoursOfOperationList;
    my $TimeZone = $GetEffectiveHoursOfOperationsResponse->TimeZone;

    # Returns a L<Paws::Connect::GetEffectiveHoursOfOperationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/GetEffectiveHoursOfOperations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FromDate => Str

The Date from when the hours of operation are listed.



=head2 B<REQUIRED> HoursOfOperationId => Str

The identifier for the hours of operation.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 B<REQUIRED> ToDate => Str

The Date until when the hours of operation are listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEffectiveHoursOfOperations in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

