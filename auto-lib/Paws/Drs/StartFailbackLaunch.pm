
package Paws::Drs::StartFailbackLaunch;
  use Moose;
  has RecoveryInstanceIDs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'recoveryInstanceIDs', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Drs::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartFailbackLaunch');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/StartFailbackLaunch');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Drs::StartFailbackLaunchResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::StartFailbackLaunch - Arguments for method StartFailbackLaunch on L<Paws::Drs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartFailbackLaunch on the
L<Elastic Disaster Recovery Service|Paws::Drs> service. Use the attributes of this class
as arguments to method StartFailbackLaunch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartFailbackLaunch.

=head1 SYNOPSIS

    my $drs = Paws->service('Drs');
    my $StartFailbackLaunchResponse = $drs->StartFailbackLaunch(
      RecoveryInstanceIDs => [
        'MyRecoveryInstanceID', ...    # min: 10, max: 19
      ],
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: max: 256, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Job = $StartFailbackLaunchResponse->Job;

    # Returns a L<Paws::Drs::StartFailbackLaunchResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/drs/StartFailbackLaunch>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RecoveryInstanceIDs => ArrayRef[Str|Undef]

The IDs of the Recovery Instance whose failback launch we want to
request.



=head2 Tags => L<Paws::Drs::TagsMap>

The tags to be associated with the failback launch Job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartFailbackLaunch in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

