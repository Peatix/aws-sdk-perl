
package Paws::QApps::UpdateQAppSessionMetadata;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'instance-id', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId', required => 1);
  has SessionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionName');
  has SharingConfiguration => (is => 'ro', isa => 'Paws::QApps::SessionSharingConfiguration', traits => ['NameInRequest'], request_name => 'sharingConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateQAppSessionMetadata');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/runtime.updateQAppSessionMetadata');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QApps::UpdateQAppSessionMetadataOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::UpdateQAppSessionMetadata - Arguments for method UpdateQAppSessionMetadata on L<Paws::QApps>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateQAppSessionMetadata on the
L<QApps|Paws::QApps> service. Use the attributes of this class
as arguments to method UpdateQAppSessionMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateQAppSessionMetadata.

=head1 SYNOPSIS

    my $data.qapps = Paws->service('QApps');
    my $UpdateQAppSessionMetadataOutput =
      $data . qapps->UpdateQAppSessionMetadata(
      InstanceId           => 'MyInstanceId',
      SessionId            => 'MyUUID',
      SharingConfiguration => {
        Enabled         => 1,
        AcceptResponses => 1,    # OPTIONAL
        RevealCards     => 1,    # OPTIONAL
      },
      SessionName => 'MySessionName',    # OPTIONAL
      );

    # Results:
    my $SessionArn  = $UpdateQAppSessionMetadataOutput->SessionArn;
    my $SessionId   = $UpdateQAppSessionMetadataOutput->SessionId;
    my $SessionName = $UpdateQAppSessionMetadataOutput->SessionName;
    my $SharingConfiguration =
      $UpdateQAppSessionMetadataOutput->SharingConfiguration;

    # Returns a L<Paws::QApps::UpdateQAppSessionMetadataOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.qapps/UpdateQAppSessionMetadata>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The unique identifier of the Amazon Q Business application environment
instance.



=head2 B<REQUIRED> SessionId => Str

The unique identifier of the Q App session to update configuration for.



=head2 SessionName => Str

The new name for the Q App session.



=head2 B<REQUIRED> SharingConfiguration => L<Paws::QApps::SessionSharingConfiguration>

The new sharing configuration for the Q App data collection session.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateQAppSessionMetadata in L<Paws::QApps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

