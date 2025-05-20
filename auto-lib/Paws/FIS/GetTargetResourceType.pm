
package Paws::FIS::GetTargetResourceType;
  use Moose;
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTargetResourceType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/targetResourceTypes/{resourceType}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FIS::GetTargetResourceTypeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::GetTargetResourceType - Arguments for method GetTargetResourceType on L<Paws::FIS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTargetResourceType on the
L<AWS Fault Injection Simulator|Paws::FIS> service. Use the attributes of this class
as arguments to method GetTargetResourceType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTargetResourceType.

=head1 SYNOPSIS

    my $fis = Paws->service('FIS');
    my $GetTargetResourceTypeResponse = $fis->GetTargetResourceType(
      ResourceType => 'MyTargetResourceTypeId',

    );

    # Results:
    my $TargetResourceType = $GetTargetResourceTypeResponse->TargetResourceType;

    # Returns a L<Paws::FIS::GetTargetResourceTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fis/GetTargetResourceType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceType => Str

The resource type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTargetResourceType in L<Paws::FIS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

