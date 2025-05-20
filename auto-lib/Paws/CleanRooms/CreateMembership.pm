
package Paws::CleanRooms::CreateMembership;
  use Moose;
  has CollaborationIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'collaborationIdentifier', required => 1);
  has DefaultJobResultConfiguration => (is => 'ro', isa => 'Paws::CleanRooms::MembershipProtectedJobResultConfiguration', traits => ['NameInRequest'], request_name => 'defaultJobResultConfiguration');
  has DefaultResultConfiguration => (is => 'ro', isa => 'Paws::CleanRooms::MembershipProtectedQueryResultConfiguration', traits => ['NameInRequest'], request_name => 'defaultResultConfiguration');
  has JobLogStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobLogStatus');
  has PaymentConfiguration => (is => 'ro', isa => 'Paws::CleanRooms::MembershipPaymentConfiguration', traits => ['NameInRequest'], request_name => 'paymentConfiguration');
  has QueryLogStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryLogStatus', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CleanRooms::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMembership');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::CreateMembershipOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::CreateMembership - Arguments for method CreateMembership on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMembership on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method CreateMembership.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMembership.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $CreateMembershipOutput = $cleanrooms->CreateMembership(
      CollaborationIdentifier       => 'MyCollaborationIdentifier',
      QueryLogStatus                => 'ENABLED',
      DefaultJobResultConfiguration => {
        OutputConfiguration => {
          S3 => {
            Bucket => 'MyProtectedJobS3OutputConfigurationInputBucketString'
            ,                              # min: 3, max: 63
            KeyPrefix => 'MyKeyPrefix',    # max: 512; OPTIONAL
          },    # OPTIONAL
        },
        RoleArn => 'MyRoleArn',    # min: 32, max: 512

      },    # OPTIONAL
      DefaultResultConfiguration => {
        OutputConfiguration => {
          S3 => {
            Bucket => 'MyProtectedQueryS3OutputConfigurationBucketString'
            ,                                     # min: 3, max: 63
            ResultFormat     => 'CSV',            # values: CSV, PARQUET
            KeyPrefix        => 'MyKeyPrefix',    # max: 512; OPTIONAL
            SingleFileOutput => 1,                # OPTIONAL
          },    # OPTIONAL
        },
        RoleArn => 'MyRoleArn',    # min: 32, max: 512
      },    # OPTIONAL
      JobLogStatus         => 'ENABLED',    # OPTIONAL
      PaymentConfiguration => {
        QueryCompute => {
          IsResponsible => 1,               # OPTIONAL

        },
        JobCompute => {
          IsResponsible => 1,               # OPTIONAL

        },    # OPTIONAL
        MachineLearning => {
          ModelInference => {
            IsResponsible => 1,    # OPTIONAL

          },    # OPTIONAL
          ModelTraining => {
            IsResponsible => 1,    # OPTIONAL

          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Membership = $CreateMembershipOutput->Membership;

    # Returns a L<Paws::CleanRooms::CreateMembershipOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/CreateMembership>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationIdentifier => Str

The unique ID for the associated collaboration.



=head2 DefaultJobResultConfiguration => L<Paws::CleanRooms::MembershipProtectedJobResultConfiguration>

The default job result configuration that determines how job results
are protected and managed within this membership. This configuration
applies to all jobs.



=head2 DefaultResultConfiguration => L<Paws::CleanRooms::MembershipProtectedQueryResultConfiguration>

The default protected query result configuration as specified by the
member who can receive results.



=head2 JobLogStatus => Str

An indicator as to whether job logging has been enabled or disabled for
the collaboration.

When C<ENABLED>, Clean Rooms logs details about jobs run within this
collaboration and those logs can be viewed in Amazon CloudWatch Logs.
The default value is C<DISABLED>.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 PaymentConfiguration => L<Paws::CleanRooms::MembershipPaymentConfiguration>

The payment responsibilities accepted by the collaboration member.

Not required if the collaboration member has the member ability to run
queries.

Required if the collaboration member doesn't have the member ability to
run queries but is configured as a payer by the collaboration creator.



=head2 B<REQUIRED> QueryLogStatus => Str

An indicator as to whether query logging has been enabled or disabled
for the membership.

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

This class forms part of L<Paws>, documenting arguments for method CreateMembership in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

