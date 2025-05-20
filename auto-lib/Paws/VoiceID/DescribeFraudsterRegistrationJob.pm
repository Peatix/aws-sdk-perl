
package Paws::VoiceID::DescribeFraudsterRegistrationJob;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFraudsterRegistrationJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VoiceID::DescribeFraudsterRegistrationJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::DescribeFraudsterRegistrationJob - Arguments for method DescribeFraudsterRegistrationJob on L<Paws::VoiceID>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFraudsterRegistrationJob on the
L<Amazon Voice ID|Paws::VoiceID> service. Use the attributes of this class
as arguments to method DescribeFraudsterRegistrationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFraudsterRegistrationJob.

=head1 SYNOPSIS

    my $voiceid = Paws->service('VoiceID');
    my $DescribeFraudsterRegistrationJobResponse =
      $voiceid->DescribeFraudsterRegistrationJob(
      DomainId => 'MyDomainId',
      JobId    => 'MyJobId',

      );

    # Results:
    my $Job = $DescribeFraudsterRegistrationJobResponse->Job;

  # Returns a L<Paws::VoiceID::DescribeFraudsterRegistrationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voiceid/DescribeFraudsterRegistrationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainId => Str

The identifier of the domain that contains the fraudster registration
job.



=head2 B<REQUIRED> JobId => Str

The identifier of the fraudster registration job you are describing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFraudsterRegistrationJob in L<Paws::VoiceID>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

