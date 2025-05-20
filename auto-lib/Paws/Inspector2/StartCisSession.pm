
package Paws::Inspector2::StartCisSession;
  use Moose;
  has Message => (is => 'ro', isa => 'Paws::Inspector2::StartCisSessionMessage', traits => ['NameInRequest'], request_name => 'message', required => 1);
  has ScanJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scanJobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartCisSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cissession/start');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::StartCisSessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::StartCisSession - Arguments for method StartCisSession on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartCisSession on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method StartCisSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartCisSession.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $StartCisSessionResponse = $inspector2->StartCisSession(
      Message => {
        SessionToken => 'MyUUID',

      },
      ScanJobId => 'MyUUID',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/StartCisSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Message => L<Paws::Inspector2::StartCisSessionMessage>

The start CIS session message.



=head2 B<REQUIRED> ScanJobId => Str

A unique identifier for the scan job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartCisSession in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

