
package Paws::Inspector2::StopCisSession;
  use Moose;
  has Message => (is => 'ro', isa => 'Paws::Inspector2::StopCisSessionMessage', traits => ['NameInRequest'], request_name => 'message', required => 1);
  has ScanJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scanJobId', required => 1);
  has SessionToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionToken', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopCisSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cissession/stop');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::StopCisSessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::StopCisSession - Arguments for method StopCisSession on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopCisSession on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method StopCisSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopCisSession.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $StopCisSessionResponse = $inspector2->StopCisSession(
      Message => {
        Progress => {
          ErrorChecks         => 1,    # max: 65536; OPTIONAL
          FailedChecks        => 1,    # max: 65536; OPTIONAL
          InformationalChecks => 1,    # max: 65536; OPTIONAL
          NotApplicableChecks => 1,    # max: 65536; OPTIONAL
          NotEvaluatedChecks  => 1,    # max: 65536; OPTIONAL
          SuccessfulChecks    => 1,    # max: 65536; OPTIONAL
          TotalChecks         => 1,    # max: 65536; OPTIONAL
          UnknownChecks       => 1,    # max: 65536; OPTIONAL
        },
        Status =>
          'SUCCESS',    # values: SUCCESS, FAILED, INTERRUPTED, UNSUPPORTED_OS
        BenchmarkProfile => 'MyBenchmarkProfile',    # max: 128; OPTIONAL
        BenchmarkVersion => 'MyBenchmarkVersion',    # max: 8; OPTIONAL
        ComputePlatform  => {
          Product => 'MyProduct',                    # max: 32; OPTIONAL
          Vendor  => 'MyVendor',                     # max: 16; OPTIONAL
          Version => 'MyPlatformVersion',            # max: 8; OPTIONAL
        },    # OPTIONAL
        Reason => 'MyReason',    # max: 1024; OPTIONAL
      },
      ScanJobId    => 'MyUUID',
      SessionToken => 'MyUUID',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/StopCisSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Message => L<Paws::Inspector2::StopCisSessionMessage>

The stop CIS session message.



=head2 B<REQUIRED> ScanJobId => Str

A unique identifier for the scan job.



=head2 B<REQUIRED> SessionToken => Str

The unique token that identifies the CIS session.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopCisSession in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

