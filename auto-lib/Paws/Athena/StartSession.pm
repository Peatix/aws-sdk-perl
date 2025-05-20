
package Paws::Athena::StartSession;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EngineConfiguration => (is => 'ro', isa => 'Paws::Athena::EngineConfiguration', required => 1);
  has NotebookVersion => (is => 'ro', isa => 'Str');
  has SessionIdleTimeoutInMinutes => (is => 'ro', isa => 'Int');
  has WorkGroup => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartSession');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::StartSessionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::StartSession - Arguments for method StartSession on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartSession on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method StartSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartSession.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $StartSessionResponse = $athena->StartSession(
      EngineConfiguration => {
        MaxConcurrentDpus => 1,    # min: 2, max: 5000
        AdditionalConfigs => {
          'MyKeyString' =>
            'MyParametersMapValue',   # key: min: 1, max: 255, value: max: 51200
        },    # OPTIONAL
        CoordinatorDpuSize     => 1,    # min: 1, max: 1; OPTIONAL
        DefaultExecutorDpuSize => 1,    # min: 1, max: 1; OPTIONAL
        SparkProperties        => {
          'MyKeyString' =>
            'MyParametersMapValue',   # key: min: 1, max: 255, value: max: 51200
        },    # OPTIONAL
      },
      WorkGroup                   => 'MyWorkGroupName',
      ClientRequestToken          => 'MyIdempotencyToken',     # OPTIONAL
      Description                 => 'MyDescriptionString',    # OPTIONAL
      NotebookVersion             => 'MyNameString',           # OPTIONAL
      SessionIdleTimeoutInMinutes => 1,                        # OPTIONAL
    );

    # Results:
    my $SessionId = $StartSessionResponse->SessionId;
    my $State     = $StartSessionResponse->State;

    # Returns a L<Paws::Athena::StartSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/StartSession>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique case-sensitive string used to ensure the request to create the
session is idempotent (executes only once). If another
C<StartSessionRequest> is received, the same response is returned and
another session is not created. If a parameter has changed, an error is
returned.

This token is listed as not required because Amazon Web Services SDKs
(for example the Amazon Web Services SDK for Java) auto-generate the
token for users. If you are not using the Amazon Web Services SDK or
the Amazon Web Services CLI, you must provide this token or the action
will fail.



=head2 Description => Str

The session description.



=head2 B<REQUIRED> EngineConfiguration => L<Paws::Athena::EngineConfiguration>

Contains engine data processing unit (DPU) configuration settings and
parameter mappings.



=head2 NotebookVersion => Str

The notebook version. This value is supplied automatically for notebook
sessions in the Athena console and is not required for programmatic
session access. The only valid notebook version is C<Athena notebook
version 1>. If you specify a value for C<NotebookVersion>, you must
also specify a value for C<NotebookId>. See
EngineConfiguration$AdditionalConfigs.



=head2 SessionIdleTimeoutInMinutes => Int

The idle timeout in minutes for the session.



=head2 B<REQUIRED> WorkGroup => Str

The workgroup to which the session belongs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartSession in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

