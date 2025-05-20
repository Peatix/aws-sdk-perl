
package Paws::VoiceID::ListFraudsterRegistrationJobs;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has JobStatus => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFraudsterRegistrationJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VoiceID::ListFraudsterRegistrationJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::ListFraudsterRegistrationJobs - Arguments for method ListFraudsterRegistrationJobs on L<Paws::VoiceID>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFraudsterRegistrationJobs on the
L<Amazon Voice ID|Paws::VoiceID> service. Use the attributes of this class
as arguments to method ListFraudsterRegistrationJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFraudsterRegistrationJobs.

=head1 SYNOPSIS

    my $voiceid = Paws->service('VoiceID');
    my $ListFraudsterRegistrationJobsResponse =
      $voiceid->ListFraudsterRegistrationJobs(
      DomainId   => 'MyDomainId',
      JobStatus  => 'SUBMITTED',      # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $JobSummaries = $ListFraudsterRegistrationJobsResponse->JobSummaries;
    my $NextToken    = $ListFraudsterRegistrationJobsResponse->NextToken;

    # Returns a L<Paws::VoiceID::ListFraudsterRegistrationJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voiceid/ListFraudsterRegistrationJobs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainId => Str

The identifier of the domain that contains the fraudster registration
Jobs.



=head2 JobStatus => Str

Provides the status of your fraudster registration job.

Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"COMPLETED_WITH_ERRORS">, C<"FAILED">

=head2 MaxResults => Int

The maximum number of results that are returned per call. You can use
C<NextToken> to obtain more pages of results. The default is 100; the
maximum allowed page size is also 100.



=head2 NextToken => Str

If C<NextToken> is returned, there are more results available. The
value of C<NextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged. Each pagination token expires after 24
hours.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFraudsterRegistrationJobs in L<Paws::VoiceID>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

