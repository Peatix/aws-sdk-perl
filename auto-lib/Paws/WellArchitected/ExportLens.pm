
package Paws::WellArchitected::ExportLens;
  use Moose;
  has LensAlias => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'LensAlias', required => 1);
  has LensVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'LensVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExportLens');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/lenses/{LensAlias}/export');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::ExportLensOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ExportLens - Arguments for method ExportLens on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExportLens on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method ExportLens.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExportLens.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $ExportLensOutput = $wellarchitected->ExportLens(
      LensAlias   => 'MyLensAlias',
      LensVersion => 'MyLensVersion',    # OPTIONAL
    );

    # Results:
    my $LensJSON = $ExportLensOutput->LensJSON;

    # Returns a L<Paws::WellArchitected::ExportLensOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/ExportLens>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LensAlias => Str





=head2 LensVersion => Str

The lens version to be exported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExportLens in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

