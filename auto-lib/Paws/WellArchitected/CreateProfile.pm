
package Paws::WellArchitected::CreateProfile;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has ProfileDescription => (is => 'ro', isa => 'Str', required => 1);
  has ProfileName => (is => 'ro', isa => 'Str', required => 1);
  has ProfileQuestions => (is => 'ro', isa => 'ArrayRef[Paws::WellArchitected::ProfileQuestionUpdate]', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::WellArchitected::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::CreateProfileOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::CreateProfile - Arguments for method CreateProfile on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProfile on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method CreateProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProfile.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $CreateProfileOutput = $wellarchitected->CreateProfile(
      ClientRequestToken => 'MyClientRequestToken',
      ProfileDescription => 'MyProfileDescription',
      ProfileName        => 'MyProfileName',
      ProfileQuestions   => [
        {
          QuestionId        => 'MyQuestionId',    # min: 1, max: 128; OPTIONAL
          SelectedChoiceIds => [
            'MyChoiceId', ...                     # min: 1, max: 64
          ],    # OPTIONAL
        },
        ...
      ],
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $ProfileArn     = $CreateProfileOutput->ProfileArn;
    my $ProfileVersion = $CreateProfileOutput->ProfileVersion;

    # Returns a L<Paws::WellArchitected::CreateProfileOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/CreateProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientRequestToken => Str





=head2 B<REQUIRED> ProfileDescription => Str

The profile description.



=head2 B<REQUIRED> ProfileName => Str

Name of the profile.



=head2 B<REQUIRED> ProfileQuestions => ArrayRef[L<Paws::WellArchitected::ProfileQuestionUpdate>]

The profile questions.



=head2 Tags => L<Paws::WellArchitected::TagMap>

The tags assigned to the profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProfile in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

