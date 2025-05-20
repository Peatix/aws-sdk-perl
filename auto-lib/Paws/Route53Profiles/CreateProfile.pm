
package Paws::Route53Profiles::CreateProfile;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Route53Profiles::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profile');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Profiles::CreateProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Profiles::CreateProfile - Arguments for method CreateProfile on L<Paws::Route53Profiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProfile on the
L<Route 53 Profiles|Paws::Route53Profiles> service. Use the attributes of this class
as arguments to method CreateProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProfile.

=head1 SYNOPSIS

    my $route53profiles = Paws->service('Route53Profiles');
    my $CreateProfileResponse = $route53profiles->CreateProfile(
      ClientToken => 'MyCreatorRequestId',
      Name        => 'MyName',
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Profile = $CreateProfileResponse->Profile;

    # Returns a L<Paws::Route53Profiles::CreateProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53profiles/CreateProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

C<ClientToken> is an idempotency token that ensures a call to
C<CreateProfile> completes only once. You choose the value to pass. For
example, an issue might prevent you from getting a response from
C<CreateProfile>. In this case, safely retry your call to
C<CreateProfile> by using the same C<CreateProfile> parameter value.



=head2 B<REQUIRED> Name => Str

A name for the Profile.



=head2 Tags => ArrayRef[L<Paws::Route53Profiles::Tag>]

A list of the tag keys and values that you want to associate with the
Route 53 Profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProfile in L<Paws::Route53Profiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

