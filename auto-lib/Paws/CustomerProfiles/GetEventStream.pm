
package Paws::CustomerProfiles::GetEventStream;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has EventStreamName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EventStreamName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEventStream');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/event-streams/{EventStreamName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::GetEventStreamResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetEventStream - Arguments for method GetEventStream on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEventStream on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method GetEventStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEventStream.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $GetEventStreamResponse = $profile->GetEventStream(
      DomainName      => 'Myname',
      EventStreamName => 'Myname',

    );

    # Results:
    my $CreatedAt          = $GetEventStreamResponse->CreatedAt;
    my $DestinationDetails = $GetEventStreamResponse->DestinationDetails;
    my $DomainName         = $GetEventStreamResponse->DomainName;
    my $EventStreamArn     = $GetEventStreamResponse->EventStreamArn;
    my $State              = $GetEventStreamResponse->State;
    my $StoppedSince       = $GetEventStreamResponse->StoppedSince;
    my $Tags               = $GetEventStreamResponse->Tags;

    # Returns a L<Paws::CustomerProfiles::GetEventStreamResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/GetEventStream>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 B<REQUIRED> EventStreamName => Str

The name of the event stream provided during create operations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEventStream in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

