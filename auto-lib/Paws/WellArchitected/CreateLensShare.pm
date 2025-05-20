
package Paws::WellArchitected::CreateLensShare;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has LensAlias => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'LensAlias', required => 1);
  has SharedWith => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLensShare');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/lenses/{LensAlias}/shares');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::CreateLensShareOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::CreateLensShare - Arguments for method CreateLensShare on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLensShare on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method CreateLensShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLensShare.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $CreateLensShareOutput = $wellarchitected->CreateLensShare(
      ClientRequestToken => 'MyClientRequestToken',
      LensAlias          => 'MyLensAlias',
      SharedWith         => 'MySharedWith',

    );

    # Results:
    my $ShareId = $CreateLensShareOutput->ShareId;

    # Returns a L<Paws::WellArchitected::CreateLensShareOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/CreateLensShare>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientRequestToken => Str





=head2 B<REQUIRED> LensAlias => Str





=head2 B<REQUIRED> SharedWith => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLensShare in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

