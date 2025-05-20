
package Paws::WellArchitected::DeleteProfile;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'ClientRequestToken', required => 1);
  has ProfileArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ProfileArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profiles/{ProfileArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::DeleteProfile - Arguments for method DeleteProfile on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteProfile on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method DeleteProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteProfile.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    $wellarchitected->DeleteProfile(
      ClientRequestToken => 'MyClientRequestToken',
      ProfileArn         => 'MyProfileArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/DeleteProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientRequestToken => Str





=head2 B<REQUIRED> ProfileArn => Str

The profile ARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteProfile in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

