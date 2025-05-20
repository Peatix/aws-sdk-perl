
package Paws::CleanRooms::UpdateMembership;
  use Moose;
  has DefaultJobResultConfiguration => (is => 'ro', isa => 'Paws::CleanRooms::MembershipProtectedJobResultConfiguration', traits => ['NameInRequest'], request_name => 'defaultJobResultConfiguration');
  has DefaultResultConfiguration => (is => 'ro', isa => 'Paws::CleanRooms::MembershipProtectedQueryResultConfiguration', traits => ['NameInRequest'], request_name => 'defaultResultConfiguration');
  has JobLogStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobLogStatus');
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has QueryLogStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryLogStatus');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMembership');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::UpdateMembershipOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::UpdateMembership - Arguments for method UpdateMembership on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMembership on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method UpdateMembership.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMembership.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $UpdateMembershipOutput = $cleanrooms->UpdateMembership(
      MembershipIdentifier          => 'MyMembershipIdentifier',
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
      JobLogStatus   => 'ENABLED',    # OPTIONAL
      QueryLogStatus => 'ENABLED',    # OPTIONAL
    );

    # Results:
    my $Membership = $UpdateMembershipOutput->Membership;

    # Returns a L<Paws::CleanRooms::UpdateMembershipOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/UpdateMembership>

=head1 ATTRIBUTES


=head2 DefaultJobResultConfiguration => L<Paws::CleanRooms::MembershipProtectedJobResultConfiguration>

The default job result configuration.



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

=head2 B<REQUIRED> MembershipIdentifier => Str

The unique identifier of the membership.



=head2 QueryLogStatus => Str

An indicator as to whether query logging has been enabled or disabled
for the membership.

When C<ENABLED>, Clean Rooms logs details about queries run within this
collaboration and those logs can be viewed in Amazon CloudWatch Logs.
The default value is C<DISABLED>.

Valid values are: C<"ENABLED">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMembership in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

