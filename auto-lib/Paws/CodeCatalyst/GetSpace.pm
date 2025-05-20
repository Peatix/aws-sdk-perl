
package Paws::CodeCatalyst::GetSpace;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSpace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/spaces/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCatalyst::GetSpaceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::GetSpace - Arguments for method GetSpace on L<Paws::CodeCatalyst>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSpace on the
L<Amazon CodeCatalyst|Paws::CodeCatalyst> service. Use the attributes of this class
as arguments to method GetSpace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSpace.

=head1 SYNOPSIS

    my $codecatalyst = Paws->service('CodeCatalyst');
    my $GetSpaceResponse = $codecatalyst->GetSpace(
      Name => 'MyNameString',

    );

    # Results:
    my $Description = $GetSpaceResponse->Description;
    my $DisplayName = $GetSpaceResponse->DisplayName;
    my $Name        = $GetSpaceResponse->Name;
    my $RegionName  = $GetSpaceResponse->RegionName;

    # Returns a L<Paws::CodeCatalyst::GetSpaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecatalyst/GetSpace>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the space.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSpace in L<Paws::CodeCatalyst>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

