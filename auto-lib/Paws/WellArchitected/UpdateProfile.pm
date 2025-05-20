
package Paws::WellArchitected::UpdateProfile;
  use Moose;
  has ProfileArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ProfileArn', required => 1);
  has ProfileDescription => (is => 'ro', isa => 'Str');
  has ProfileQuestions => (is => 'ro', isa => 'ArrayRef[Paws::WellArchitected::ProfileQuestionUpdate]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profiles/{ProfileArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::UpdateProfileOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::UpdateProfile - Arguments for method UpdateProfile on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProfile on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method UpdateProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProfile.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $UpdateProfileOutput = $wellarchitected->UpdateProfile(
      ProfileArn         => 'MyProfileArn',
      ProfileDescription => 'MyProfileDescription',    # OPTIONAL
      ProfileQuestions   => [
        {
          QuestionId        => 'MyQuestionId',    # min: 1, max: 128; OPTIONAL
          SelectedChoiceIds => [
            'MyChoiceId', ...                     # min: 1, max: 64
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Profile = $UpdateProfileOutput->Profile;

    # Returns a L<Paws::WellArchitected::UpdateProfileOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/UpdateProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProfileArn => Str

The profile ARN.



=head2 ProfileDescription => Str

The profile description.



=head2 ProfileQuestions => ArrayRef[L<Paws::WellArchitected::ProfileQuestionUpdate>]

Profile questions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProfile in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

