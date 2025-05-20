
package Paws::QApps::UpdateQAppSession;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'instance-id', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId', required => 1);
  has Values => (is => 'ro', isa => 'ArrayRef[Paws::QApps::CardValue]', traits => ['NameInRequest'], request_name => 'values');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateQAppSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/runtime.updateQAppSession');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QApps::UpdateQAppSessionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::UpdateQAppSession - Arguments for method UpdateQAppSession on L<Paws::QApps>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateQAppSession on the
L<QApps|Paws::QApps> service. Use the attributes of this class
as arguments to method UpdateQAppSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateQAppSession.

=head1 SYNOPSIS

    my $data.qapps = Paws->service('QApps');
    my $UpdateQAppSessionOutput = $data . qapps->UpdateQAppSession(
      InstanceId => 'MyInstanceId',
      SessionId  => 'MyUUID',
      Values     => [
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
    );

    # Results:
    my $SessionArn = $UpdateQAppSessionOutput->SessionArn;
    my $SessionId  = $UpdateQAppSessionOutput->SessionId;

    # Returns a L<Paws::QApps::UpdateQAppSessionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.qapps/UpdateQAppSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The unique identifier of the Amazon Q Business application environment
instance.



=head2 B<REQUIRED> SessionId => Str

The unique identifier of the Q App session to provide input for.



=head2 Values => ArrayRef[L<Paws::QApps::CardValue>]

The input values to provide for the current state of the Q App session.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateQAppSession in L<Paws::QApps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

