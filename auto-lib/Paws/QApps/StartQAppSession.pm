
package Paws::QApps::StartQAppSession;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId', required => 1);
  has AppVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'appVersion', required => 1);
  has InitialValues => (is => 'ro', isa => 'ArrayRef[Paws::QApps::CardValue]', traits => ['NameInRequest'], request_name => 'initialValues');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'instance-id', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId');
  has Tags => (is => 'ro', isa => 'Paws::QApps::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartQAppSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/runtime.startQAppSession');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QApps::StartQAppSessionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::StartQAppSession - Arguments for method StartQAppSession on L<Paws::QApps>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartQAppSession on the
L<QApps|Paws::QApps> service. Use the attributes of this class
as arguments to method StartQAppSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartQAppSession.

=head1 SYNOPSIS

    my $data.qapps = Paws->service('QApps');
    my $StartQAppSessionOutput = $data . qapps->StartQAppSession(
      AppId         => 'MyUUID',
      AppVersion    => 1,
      InstanceId    => 'MyInstanceId',
      InitialValues => [
        {
          CardId             => 'MyUUID',
          Value              => 'MyCardValueValueString',    # max: 40000
          SubmissionMutation => {
            MutationType => 'edit',     # values: edit, delete, add
            SubmissionId => 'MyUUID',

          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      SessionId => 'MyString',                       # OPTIONAL
      Tags      => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $SessionArn = $StartQAppSessionOutput->SessionArn;
    my $SessionId  = $StartQAppSessionOutput->SessionId;

    # Returns a L<Paws::QApps::StartQAppSessionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.qapps/StartQAppSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The unique identifier of the Q App to start a session for.



=head2 B<REQUIRED> AppVersion => Int

The version of the Q App to use for the session.



=head2 InitialValues => ArrayRef[L<Paws::QApps::CardValue>]

Optional initial input values to provide for the Q App session.



=head2 B<REQUIRED> InstanceId => Str

The unique identifier of the Amazon Q Business application environment
instance.



=head2 SessionId => Str

The unique identifier of the a Q App session.



=head2 Tags => L<Paws::QApps::TagMap>

Optional tags to associate with the new Q App session.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartQAppSession in L<Paws::QApps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

