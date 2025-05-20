
package Paws::ARCZonalShift::UpdateZonalAutoshiftConfiguration;
  use Moose;
  has ResourceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceIdentifier', required => 1);
  has ZonalAutoshiftStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'zonalAutoshiftStatus', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateZonalAutoshiftConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/managedresources/{resourceIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ARCZonalShift::UpdateZonalAutoshiftConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ARCZonalShift::UpdateZonalAutoshiftConfiguration - Arguments for method UpdateZonalAutoshiftConfiguration on L<Paws::ARCZonalShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateZonalAutoshiftConfiguration on the
L<AWS ARC - Zonal Shift|Paws::ARCZonalShift> service. Use the attributes of this class
as arguments to method UpdateZonalAutoshiftConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateZonalAutoshiftConfiguration.

=head1 SYNOPSIS

    my $arc-zonal-shift = Paws->service('ARCZonalShift');
    my $UpdateZonalAutoshiftConfigurationResponse =
      $arc -zonal-shift->UpdateZonalAutoshiftConfiguration(
      ResourceIdentifier   => 'MyResourceIdentifier',
      ZonalAutoshiftStatus => 'ENABLED',

      );

    # Results:
    my $ResourceIdentifier =
      $UpdateZonalAutoshiftConfigurationResponse->ResourceIdentifier;
    my $ZonalAutoshiftStatus =
      $UpdateZonalAutoshiftConfigurationResponse->ZonalAutoshiftStatus;

# Returns a L<Paws::ARCZonalShift::UpdateZonalAutoshiftConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift/UpdateZonalAutoshiftConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceIdentifier => Str

The identifier for the resource that you want to update the zonal
autoshift configuration for. The identifier is the Amazon Resource Name
(ARN) for the resource.



=head2 B<REQUIRED> ZonalAutoshiftStatus => Str

The zonal autoshift status for the resource that you want to update the
zonal autoshift configuration for. Choose C<ENABLED> to authorize
Amazon Web Services to shift away resource traffic for an application
from an Availability Zone during events, on your behalf, to help reduce
time to recovery.

Valid values are: C<"ENABLED">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateZonalAutoshiftConfiguration in L<Paws::ARCZonalShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

