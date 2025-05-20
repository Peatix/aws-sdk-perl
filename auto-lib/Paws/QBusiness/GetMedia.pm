
package Paws::QBusiness::GetMedia;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has ConversationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'conversationId', required => 1);
  has MediaId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'mediaId', required => 1);
  has MessageId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'messageId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMedia');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/conversations/{conversationId}/messages/{messageId}/media/{mediaId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::GetMediaResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::GetMedia - Arguments for method GetMedia on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMedia on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method GetMedia.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMedia.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $GetMediaResponse = $qbusiness->GetMedia(
      ApplicationId  => 'MyApplicationId',
      ConversationId => 'MyConversationId',
      MediaId        => 'MyMediaId',
      MessageId      => 'MyMessageId',

    );

    # Results:
    my $MediaBytes    = $GetMediaResponse->MediaBytes;
    my $MediaMimeType = $GetMediaResponse->MediaMimeType;

    # Returns a L<Paws::QBusiness::GetMediaResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/GetMedia>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the Amazon Q Business which contains the media
object.



=head2 B<REQUIRED> ConversationId => Str

The identifier of the Amazon Q Business conversation.



=head2 B<REQUIRED> MediaId => Str

The identifier of the media object. You can find this in the
C<sourceAttributions> returned by the C<Chat>, C<ChatSync>, and
C<ListMessages> API responses.



=head2 B<REQUIRED> MessageId => Str

The identifier of the Amazon Q Business message.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMedia in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

