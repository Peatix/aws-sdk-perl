
package Paws::WellArchitected::CreateLensVersion;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has IsMajorVersion => (is => 'ro', isa => 'Bool');
  has LensAlias => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'LensAlias', required => 1);
  has LensVersion => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLensVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/lenses/{LensAlias}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::CreateLensVersionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::CreateLensVersion - Arguments for method CreateLensVersion on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLensVersion on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method CreateLensVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLensVersion.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $CreateLensVersionOutput = $wellarchitected->CreateLensVersion(
      ClientRequestToken => 'MyClientRequestToken',
      LensAlias          => 'MyLensAlias',
      LensVersion        => 'MyLensVersion',
      IsMajorVersion     => 1,                        # OPTIONAL
    );

    # Results:
    my $LensArn     = $CreateLensVersionOutput->LensArn;
    my $LensVersion = $CreateLensVersionOutput->LensVersion;

    # Returns a L<Paws::WellArchitected::CreateLensVersionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/CreateLensVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientRequestToken => Str





=head2 IsMajorVersion => Bool

Set to true if this new major lens version.



=head2 B<REQUIRED> LensAlias => Str





=head2 B<REQUIRED> LensVersion => Str

The version of the lens being created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLensVersion in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

