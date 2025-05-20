
package Paws::Connect::DeleteHoursOfOperationOverride;
  use Moose;
  has HoursOfOperationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'HoursOfOperationId', required => 1);
  has HoursOfOperationOverrideId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'HoursOfOperationOverrideId', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteHoursOfOperationOverride');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/hours-of-operations/{InstanceId}/{HoursOfOperationId}/overrides/{HoursOfOperationOverrideId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DeleteHoursOfOperationOverride - Arguments for method DeleteHoursOfOperationOverride on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteHoursOfOperationOverride on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method DeleteHoursOfOperationOverride.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteHoursOfOperationOverride.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->DeleteHoursOfOperationOverride(
      HoursOfOperationId         => 'MyHoursOfOperationId',
      HoursOfOperationOverrideId => 'MyHoursOfOperationOverrideId',
      InstanceId                 => 'MyInstanceId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/DeleteHoursOfOperationOverride>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HoursOfOperationId => Str

The identifier for the hours of operation.



=head2 B<REQUIRED> HoursOfOperationOverrideId => Str

The identifier for the hours of operation override.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteHoursOfOperationOverride in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

