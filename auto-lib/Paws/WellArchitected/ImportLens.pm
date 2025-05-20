
package Paws::WellArchitected::ImportLens;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has JSONString => (is => 'ro', isa => 'Str', required => 1);
  has LensAlias => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::WellArchitected::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportLens');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/importLens');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::ImportLensOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ImportLens - Arguments for method ImportLens on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportLens on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method ImportLens.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportLens.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $ImportLensOutput = $wellarchitected->ImportLens(
      ClientRequestToken => 'MyClientRequestToken',
      JSONString         => 'MyLensJSON',
      LensAlias          => 'MyLensAlias',            # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $LensArn = $ImportLensOutput->LensArn;
    my $Status  = $ImportLensOutput->Status;

    # Returns a L<Paws::WellArchitected::ImportLensOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/ImportLens>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientRequestToken => Str





=head2 B<REQUIRED> JSONString => Str

The JSON representation of a lens.



=head2 LensAlias => Str





=head2 Tags => L<Paws::WellArchitected::TagMap>

Tags to associate to a lens.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportLens in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

