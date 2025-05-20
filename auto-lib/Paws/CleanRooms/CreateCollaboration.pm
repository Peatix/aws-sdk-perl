
package Paws::CleanRooms::CreateCollaboration;
  use Moose;
  has AnalyticsEngine => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'analyticsEngine');
  has CreatorDisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creatorDisplayName', required => 1);
  has CreatorMemberAbilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'creatorMemberAbilities', required => 1);
  has CreatorMLMemberAbilities => (is => 'ro', isa => 'Paws::CleanRooms::MLMemberAbilities', traits => ['NameInRequest'], request_name => 'creatorMLMemberAbilities');
  has CreatorPaymentConfiguration => (is => 'ro', isa => 'Paws::CleanRooms::PaymentConfiguration', traits => ['NameInRequest'], request_name => 'creatorPaymentConfiguration');
  has DataEncryptionMetadata => (is => 'ro', isa => 'Paws::CleanRooms::DataEncryptionMetadata', traits => ['NameInRequest'], request_name => 'dataEncryptionMetadata');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description', required => 1);
  has JobLogStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobLogStatus');
  has Members => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::MemberSpecification]', traits => ['NameInRequest'], request_name => 'members', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has QueryLogStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryLogStatus', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CleanRooms::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCollaboration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/collaborations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::CreateCollaborationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::CreateCollaboration - Arguments for method CreateCollaboration on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCollaboration on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method CreateCollaboration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCollaboration.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $CreateCollaborationOutput = $cleanrooms->CreateCollaboration(
      CreatorDisplayName     => 'MyDisplayName',
      CreatorMemberAbilities => [
        'CAN_QUERY', ...   # values: CAN_QUERY, CAN_RECEIVE_RESULTS, CAN_RUN_JOB
      ],
      Description => 'MyCollaborationDescription',
      Members     => [
        {
          AccountId       => 'MyAccountId',      # min: 12, max: 12
          DisplayName     => 'MyDisplayName',    # min: 1, max: 100
          MemberAbilities => [
            'CAN_QUERY',
            ...    # values: CAN_QUERY, CAN_RECEIVE_RESULTS, CAN_RUN_JOB
          ],
          MlMemberAbilities => {
            CustomMLMemberAbilities => [
              'CAN_RECEIVE_MODEL_OUTPUT',
              ... # values: CAN_RECEIVE_MODEL_OUTPUT, CAN_RECEIVE_INFERENCE_OUTPUT
            ],    # min: 1

          },    # OPTIONAL
          PaymentConfiguration => {
            QueryCompute => {
              IsResponsible => 1,

            },
            JobCompute => {
              IsResponsible => 1,

            },    # OPTIONAL
            MachineLearning => {
              ModelInference => {
                IsResponsible => 1,

              },    # OPTIONAL
              ModelTraining => {
                IsResponsible => 1,

              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      Name                     => 'MyCollaborationName',
      QueryLogStatus           => 'ENABLED',
      AnalyticsEngine          => 'SPARK',                 # OPTIONAL
      CreatorMLMemberAbilities => {
        CustomMLMemberAbilities => [
          'CAN_RECEIVE_MODEL_OUTPUT',
          ...   # values: CAN_RECEIVE_MODEL_OUTPUT, CAN_RECEIVE_INFERENCE_OUTPUT
        ],    # min: 1

      },    # OPTIONAL
      CreatorPaymentConfiguration => {
        QueryCompute => {
          IsResponsible => 1,

        },
        JobCompute => {
          IsResponsible => 1,

        },    # OPTIONAL
        MachineLearning => {
          ModelInference => {
            IsResponsible => 1,

          },    # OPTIONAL
          ModelTraining => {
            IsResponsible => 1,

          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      DataEncryptionMetadata => {
        AllowCleartext                        => 1,
        AllowDuplicates                       => 1,
        AllowJoinsOnColumnsWithDifferentNames => 1,
        PreserveNulls                         => 1,

      },    # OPTIONAL
      JobLogStatus => 'ENABLED',    # OPTIONAL
      Tags         => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Collaboration = $CreateCollaborationOutput->Collaboration;

    # Returns a L<Paws::CleanRooms::CreateCollaborationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/CreateCollaboration>

=head1 ATTRIBUTES


=head2 AnalyticsEngine => Str

The analytics engine.

Valid values are: C<"SPARK">, C<"CLEAN_ROOMS_SQL">

=head2 B<REQUIRED> CreatorDisplayName => Str

The display name of the collaboration creator.



=head2 B<REQUIRED> CreatorMemberAbilities => ArrayRef[Str|Undef]

The abilities granted to the collaboration creator.



=head2 CreatorMLMemberAbilities => L<Paws::CleanRooms::MLMemberAbilities>

The ML abilities granted to the collaboration creator.



=head2 CreatorPaymentConfiguration => L<Paws::CleanRooms::PaymentConfiguration>

The collaboration creator's payment responsibilities set by the
collaboration creator.

If the collaboration creator hasn't specified anyone as the member
paying for query compute costs, then the member who can query is the
default payer.



=head2 DataEncryptionMetadata => L<Paws::CleanRooms::DataEncryptionMetadata>

The settings for client-side encryption with Cryptographic Computing
for Clean Rooms.



=head2 B<REQUIRED> Description => Str

A description of the collaboration provided by the collaboration owner.



=head2 JobLogStatus => Str

Specifies whether job logs are enabled for this collaboration.

When C<ENABLED>, Clean Rooms logs details about jobs run within this
collaboration; those logs can be viewed in Amazon CloudWatch Logs. The
default value is C<DISABLED>.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 B<REQUIRED> Members => ArrayRef[L<Paws::CleanRooms::MemberSpecification>]

A list of initial members, not including the creator. This list is
immutable.



=head2 B<REQUIRED> Name => Str

The display name for a collaboration.



=head2 B<REQUIRED> QueryLogStatus => Str

An indicator as to whether query logging has been enabled or disabled
for the collaboration.

When C<ENABLED>, Clean Rooms logs details about queries run within this
collaboration and those logs can be viewed in Amazon CloudWatch Logs.
The default value is C<DISABLED>.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 Tags => L<Paws::CleanRooms::TagMap>

An optional label that you can assign to a resource when you create it.
Each tag consists of a key and an optional value, both of which you
define. When you use tagging, you can also use tag-based access control
in IAM policies to control access to this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCollaboration in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

