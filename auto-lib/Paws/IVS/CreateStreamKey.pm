
package Paws::IVS::CreateStreamKey;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'channelArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::IVS::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStreamKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateStreamKey');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVS::CreateStreamKeyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::CreateStreamKey - Arguments for method CreateStreamKey on L<Paws::IVS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStreamKey on the
L<Amazon Interactive Video Service|Paws::IVS> service. Use the attributes of this class
as arguments to method CreateStreamKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStreamKey.

=head1 SYNOPSIS

    my $ivs = Paws->service('IVS');
    my $CreateStreamKeyResponse = $ivs->CreateStreamKey(
      ChannelArn => 'MyChannelArn',
      Tags       => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $StreamKey = $CreateStreamKeyResponse->StreamKey;

    # Returns a L<Paws::IVS::CreateStreamKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivs/CreateStreamKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelArn => Str

ARN of the channel for which to create the stream key.



=head2 Tags => L<Paws::IVS::Tags>

Array of 1-50 maps, each of the form C<string:string (key:value)>. See
Best practices and strategies
(https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html)
in I<Tagging Amazon Web Services Resources and Tag Editor> for details,
including restrictions that apply to tags and "Tag naming limits and
requirements"; Amazon IVS has no service-specific constraints beyond
what is documented there.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStreamKey in L<Paws::IVS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

