
package Paws::IVSRealTime::GetStageSession;
  use Moose;
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId', required => 1);
  has StageArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stageArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetStageSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetStageSession');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVSRealTime::GetStageSessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::GetStageSession - Arguments for method GetStageSession on L<Paws::IVSRealTime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetStageSession on the
L<Amazon Interactive Video Service RealTime|Paws::IVSRealTime> service. Use the attributes of this class
as arguments to method GetStageSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetStageSession.

=head1 SYNOPSIS

    my $ivsrealtime = Paws->service('IVSRealTime');
    my $GetStageSessionResponse = $ivsrealtime->GetStageSession(
      SessionId => 'MyStageSessionId',
      StageArn  => 'MyStageArn',

    );

    # Results:
    my $StageSession = $GetStageSessionResponse->StageSession;

    # Returns a L<Paws::IVSRealTime::GetStageSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivsrealtime/GetStageSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SessionId => Str

ID of a session within the stage.



=head2 B<REQUIRED> StageArn => Str

ARN of the stage for which the information is to be retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetStageSession in L<Paws::IVSRealTime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

