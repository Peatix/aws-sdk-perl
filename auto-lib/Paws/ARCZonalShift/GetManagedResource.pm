
package Paws::ARCZonalShift::GetManagedResource;
  use Moose;
  has ResourceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetManagedResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/managedresources/{resourceIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ARCZonalShift::GetManagedResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ARCZonalShift::GetManagedResource - Arguments for method GetManagedResource on L<Paws::ARCZonalShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetManagedResource on the
L<AWS ARC - Zonal Shift|Paws::ARCZonalShift> service. Use the attributes of this class
as arguments to method GetManagedResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetManagedResource.

=head1 SYNOPSIS

    my $arc-zonal-shift = Paws->service('ARCZonalShift');
    my $GetManagedResourceResponse = $arc -zonal-shift->GetManagedResource(
      ResourceIdentifier => 'MyResourceIdentifier',

    );

    # Results:
    my $AppliedWeights = $GetManagedResourceResponse->AppliedWeights;
    my $Arn            = $GetManagedResourceResponse->Arn;
    my $Autoshifts     = $GetManagedResourceResponse->Autoshifts;
    my $Name           = $GetManagedResourceResponse->Name;
    my $PracticeRunConfiguration =
      $GetManagedResourceResponse->PracticeRunConfiguration;
    my $ZonalAutoshiftStatus =
      $GetManagedResourceResponse->ZonalAutoshiftStatus;
    my $ZonalShifts = $GetManagedResourceResponse->ZonalShifts;

    # Returns a L<Paws::ARCZonalShift::GetManagedResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift/GetManagedResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceIdentifier => Str

The identifier for the resource that Amazon Web Services shifts traffic
for. The identifier is the Amazon Resource Name (ARN) for the resource.

At this time, supported resources are Network Load Balancers and
Application Load Balancers with cross-zone load balancing turned off.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetManagedResource in L<Paws::ARCZonalShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

