
package Paws::CleanRooms::PreviewPrivacyImpact;
  use Moose;
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::CleanRooms::PreviewPrivacyImpactParametersInput', traits => ['NameInRequest'], request_name => 'parameters', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PreviewPrivacyImpact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/previewprivacyimpact');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::PreviewPrivacyImpactOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::PreviewPrivacyImpact - Arguments for method PreviewPrivacyImpact on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PreviewPrivacyImpact on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method PreviewPrivacyImpact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PreviewPrivacyImpact.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $PreviewPrivacyImpactOutput = $cleanrooms->PreviewPrivacyImpact(
      MembershipIdentifier => 'MyMembershipIdentifier',
      Parameters           => {
        DifferentialPrivacy => {
          Epsilon            => 1,    # min: 1, max: 20
          UsersNoisePerQuery => 1,    # min: 10, max: 100

        },    # OPTIONAL
      },

    );

    # Results:
    my $PrivacyImpact = $PreviewPrivacyImpactOutput->PrivacyImpact;

    # Returns a L<Paws::CleanRooms::PreviewPrivacyImpactOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/PreviewPrivacyImpact>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MembershipIdentifier => Str

A unique identifier for one of your memberships for a collaboration.
Accepts a membership ID.



=head2 B<REQUIRED> Parameters => L<Paws::CleanRooms::PreviewPrivacyImpactParametersInput>

Specifies the desired epsilon and noise parameters to preview.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PreviewPrivacyImpact in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

