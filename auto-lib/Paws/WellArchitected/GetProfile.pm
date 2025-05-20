
package Paws::WellArchitected::GetProfile;
  use Moose;
  has ProfileArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ProfileArn', required => 1);
  has ProfileVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'ProfileVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profiles/{ProfileArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::GetProfileOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::GetProfile - Arguments for method GetProfile on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetProfile on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method GetProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetProfile.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $GetProfileOutput = $wellarchitected->GetProfile(
      ProfileArn     => 'MyProfileArn',
      ProfileVersion => 'MyProfileVersion',    # OPTIONAL
    );

    # Results:
    my $Profile = $GetProfileOutput->Profile;

    # Returns a L<Paws::WellArchitected::GetProfileOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/GetProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProfileArn => Str

The profile ARN.



=head2 ProfileVersion => Str

The profile version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetProfile in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

