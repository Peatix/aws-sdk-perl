
package Paws::CleanRooms::StartProtectedJob;
  use Moose;
  has JobParameters => (is => 'ro', isa => 'Paws::CleanRooms::ProtectedJobParameters', traits => ['NameInRequest'], request_name => 'jobParameters', required => 1);
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has ResultConfiguration => (is => 'ro', isa => 'Paws::CleanRooms::ProtectedJobResultConfigurationInput', traits => ['NameInRequest'], request_name => 'resultConfiguration');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartProtectedJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/protectedJobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::StartProtectedJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::StartProtectedJob - Arguments for method StartProtectedJob on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartProtectedJob on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method StartProtectedJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartProtectedJob.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $StartProtectedJobOutput = $cleanrooms->StartProtectedJob(
      JobParameters => {
        AnalysisTemplateArn => 'MyAnalysisTemplateArn',    # max: 200; OPTIONAL
      },
      MembershipIdentifier => 'MyMembershipIdentifier',
      Type                 => 'PYSPARK',
      ResultConfiguration  => {
        OutputConfiguration => {
          Member => {
            AccountId => 'MyAccountId',    # min: 12, max: 12

          },    # OPTIONAL
        },

      },    # OPTIONAL
    );

    # Results:
    my $ProtectedJob = $StartProtectedJobOutput->ProtectedJob;

    # Returns a L<Paws::CleanRooms::StartProtectedJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/StartProtectedJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobParameters => L<Paws::CleanRooms::ProtectedJobParameters>

The job parameters.



=head2 B<REQUIRED> MembershipIdentifier => Str

A unique identifier for the membership to run this job against.
Currently accepts a membership ID.



=head2 ResultConfiguration => L<Paws::CleanRooms::ProtectedJobResultConfigurationInput>

The details needed to write the job results.



=head2 B<REQUIRED> Type => Str

The type of protected job to start.

Valid values are: C<"PYSPARK">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartProtectedJob in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

