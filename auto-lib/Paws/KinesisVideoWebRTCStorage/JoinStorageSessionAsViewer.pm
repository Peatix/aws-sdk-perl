
package Paws::KinesisVideoWebRTCStorage::JoinStorageSessionAsViewer;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'channelArn', required => 1);
  has ClientId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'JoinStorageSessionAsViewer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/joinStorageSessionAsViewer');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoWebRTCStorage::JoinStorageSessionAsViewer - Arguments for method JoinStorageSessionAsViewer on L<Paws::KinesisVideoWebRTCStorage>

=head1 DESCRIPTION

This class represents the parameters used for calling the method JoinStorageSessionAsViewer on the
L<Amazon Kinesis Video WebRTC Storage|Paws::KinesisVideoWebRTCStorage> service. Use the attributes of this class
as arguments to method JoinStorageSessionAsViewer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to JoinStorageSessionAsViewer.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideoWebRTCStorage');
    $kinesisvideo->JoinStorageSessionAsViewer(
      ChannelArn => 'MyChannelArn',
      ClientId   => 'MyClientId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/JoinStorageSessionAsViewer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelArn => Str

The Amazon Resource Name (ARN) of the signaling channel.



=head2 B<REQUIRED> ClientId => Str

The unique identifier for the sender client.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method JoinStorageSessionAsViewer in L<Paws::KinesisVideoWebRTCStorage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

