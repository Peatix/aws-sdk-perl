
package Paws::CodeCatalyst::ListEventLogs;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime', required => 1);
  has EventName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventName');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SpaceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'spaceName', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEventLogs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/spaces/{spaceName}/eventLogs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCatalyst::ListEventLogsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::ListEventLogs - Arguments for method ListEventLogs on L<Paws::CodeCatalyst>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEventLogs on the
L<Amazon CodeCatalyst|Paws::CodeCatalyst> service. Use the attributes of this class
as arguments to method ListEventLogs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEventLogs.

=head1 SYNOPSIS

    my $codecatalyst = Paws->service('CodeCatalyst');
    my $ListEventLogsResponse = $codecatalyst->ListEventLogs(
      EndTime    => '1970-01-01T01:00:00',
      SpaceName  => 'MyNameString',
      StartTime  => '1970-01-01T01:00:00',
      EventName  => 'MyString',                                 # OPTIONAL
      MaxResults => 1,                                          # OPTIONAL
      NextToken  => 'MyListEventLogsRequestNextTokenString',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListEventLogsResponse->Items;
    my $NextToken = $ListEventLogsResponse->NextToken;

    # Returns a L<Paws::CodeCatalyst::ListEventLogsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecatalyst/ListEventLogs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The time after which you do not want any events retrieved, in
coordinated universal time (UTC) timestamp format as specified in RFC
3339 (https://www.rfc-editor.org/rfc/rfc3339#section-5.6).



=head2 EventName => Str

The name of the event.



=head2 MaxResults => Int

The maximum number of results to show in a single call to this API. If
the number of results is larger than the number you specified, the
response will include a C<NextToken> element, which you can use to
obtain additional results.



=head2 NextToken => Str

A token returned from a call to this API to indicate the next batch of
results to return, if any.



=head2 B<REQUIRED> SpaceName => Str

The name of the space.



=head2 B<REQUIRED> StartTime => Str

The date and time when you want to start retrieving events, in
coordinated universal time (UTC) timestamp format as specified in RFC
3339 (https://www.rfc-editor.org/rfc/rfc3339#section-5.6).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEventLogs in L<Paws::CodeCatalyst>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

