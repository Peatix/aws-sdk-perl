
package Paws::ARCZonalShift::DeletePracticeRunConfiguration;
  use Moose;
  has ResourceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePracticeRunConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configuration/{resourceIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ARCZonalShift::DeletePracticeRunConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ARCZonalShift::DeletePracticeRunConfiguration - Arguments for method DeletePracticeRunConfiguration on L<Paws::ARCZonalShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePracticeRunConfiguration on the
L<AWS ARC - Zonal Shift|Paws::ARCZonalShift> service. Use the attributes of this class
as arguments to method DeletePracticeRunConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePracticeRunConfiguration.

=head1 SYNOPSIS

    my $arc-zonal-shift = Paws->service('ARCZonalShift');
    my $DeletePracticeRunConfigurationResponse =
      $arc -zonal-shift->DeletePracticeRunConfiguration(
      ResourceIdentifier => 'MyResourceIdentifier',

      );

    # Results:
    my $Arn  = $DeletePracticeRunConfigurationResponse->Arn;
    my $Name = $DeletePracticeRunConfigurationResponse->Name;
    my $ZonalAutoshiftStatus =
      $DeletePracticeRunConfigurationResponse->ZonalAutoshiftStatus;

# Returns a L<Paws::ARCZonalShift::DeletePracticeRunConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift/DeletePracticeRunConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceIdentifier => Str

The identifier for the resource that you want to delete the practice
run configuration for. The identifier is the Amazon Resource Name (ARN)
for the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePracticeRunConfiguration in L<Paws::ARCZonalShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

