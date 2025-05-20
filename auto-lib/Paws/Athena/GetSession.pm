
package Paws::Athena::GetSession;
  use Moose;
  has SessionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSession');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::GetSessionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::GetSession - Arguments for method GetSession on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSession on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method GetSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSession.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $GetSessionResponse = $athena->GetSession(
      SessionId => 'MySessionId',

    );

    # Results:
    my $Description          = $GetSessionResponse->Description;
    my $EngineConfiguration  = $GetSessionResponse->EngineConfiguration;
    my $EngineVersion        = $GetSessionResponse->EngineVersion;
    my $NotebookVersion      = $GetSessionResponse->NotebookVersion;
    my $SessionConfiguration = $GetSessionResponse->SessionConfiguration;
    my $SessionId            = $GetSessionResponse->SessionId;
    my $Statistics           = $GetSessionResponse->Statistics;
    my $Status               = $GetSessionResponse->Status;
    my $WorkGroup            = $GetSessionResponse->WorkGroup;

    # Returns a L<Paws::Athena::GetSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/GetSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SessionId => Str

The session ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSession in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

