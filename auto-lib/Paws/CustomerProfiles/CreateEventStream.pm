
package Paws::CustomerProfiles::CreateEventStream;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has EventStreamName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EventStreamName', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CustomerProfiles::TagMap');
  has Uri => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEventStream');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/event-streams/{EventStreamName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::CreateEventStreamResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::CreateEventStream - Arguments for method CreateEventStream on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEventStream on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method CreateEventStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEventStream.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $CreateEventStreamResponse = $profile->CreateEventStream(
      DomainName      => 'Myname',
      EventStreamName => 'Myname',
      Uri             => 'Mystring1To255',
      Tags            => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $EventStreamArn = $CreateEventStreamResponse->EventStreamArn;
    my $Tags           = $CreateEventStreamResponse->Tags;

    # Returns a L<Paws::CustomerProfiles::CreateEventStreamResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/CreateEventStream>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 B<REQUIRED> EventStreamName => Str

The name of the event stream.



=head2 Tags => L<Paws::CustomerProfiles::TagMap>

The tags used to organize, track, or control access for this resource.



=head2 B<REQUIRED> Uri => Str

The StreamARN of the destination to deliver profile events to. For
example, arn:aws:kinesis:region:account-id:stream/stream-name




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEventStream in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

