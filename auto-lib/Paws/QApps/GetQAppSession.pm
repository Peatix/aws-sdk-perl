
package Paws::QApps::GetQAppSession;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'instance-id', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sessionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQAppSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/runtime.getQAppSession');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QApps::GetQAppSessionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::GetQAppSession - Arguments for method GetQAppSession on L<Paws::QApps>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetQAppSession on the
L<QApps|Paws::QApps> service. Use the attributes of this class
as arguments to method GetQAppSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetQAppSession.

=head1 SYNOPSIS

    my $data.qapps = Paws->service('QApps');
    my $GetQAppSessionOutput = $data . qapps->GetQAppSession(
      InstanceId => 'MyInstanceId',
      SessionId  => 'MyUUID',

    );

    # Results:
    my $AppVersion = $GetQAppSessionOutput->AppVersion;
    my $CardStatus = $GetQAppSessionOutput->CardStatus;
    my $LatestPublishedAppVersion =
      $GetQAppSessionOutput->LatestPublishedAppVersion;
    my $SessionArn  = $GetQAppSessionOutput->SessionArn;
    my $SessionId   = $GetQAppSessionOutput->SessionId;
    my $SessionName = $GetQAppSessionOutput->SessionName;
    my $Status      = $GetQAppSessionOutput->Status;
    my $UserIsHost  = $GetQAppSessionOutput->UserIsHost;

    # Returns a L<Paws::QApps::GetQAppSessionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.qapps/GetQAppSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The unique identifier of the Amazon Q Business application environment
instance.



=head2 B<REQUIRED> SessionId => Str

The unique identifier of the Q App session to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetQAppSession in L<Paws::QApps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

