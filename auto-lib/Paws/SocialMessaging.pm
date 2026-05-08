package Paws::SocialMessaging;
  use Moose;
  sub service { 'social-messaging' }
  sub signing_name { 'social-messaging' }
  sub version { '2024-01-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateWhatsAppBusinessAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SocialMessaging::AssociateWhatsAppBusinessAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWhatsAppMessageMedia {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SocialMessaging::DeleteWhatsAppMessageMedia', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateWhatsAppBusinessAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SocialMessaging::DisassociateWhatsAppBusinessAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLinkedWhatsAppBusinessAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SocialMessaging::GetLinkedWhatsAppBusinessAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLinkedWhatsAppBusinessAccountPhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SocialMessaging::GetLinkedWhatsAppBusinessAccountPhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetWhatsAppMessageMedia {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SocialMessaging::GetWhatsAppMessageMedia', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLinkedWhatsAppBusinessAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SocialMessaging::ListLinkedWhatsAppBusinessAccounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SocialMessaging::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PostWhatsAppMessageMedia {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SocialMessaging::PostWhatsAppMessageMedia', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutWhatsAppBusinessAccountEventDestinations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SocialMessaging::PutWhatsAppBusinessAccountEventDestinations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendWhatsAppMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SocialMessaging::SendWhatsAppMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SocialMessaging::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SocialMessaging::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllLinkedWhatsAppBusinessAccounts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLinkedWhatsAppBusinessAccounts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListLinkedWhatsAppBusinessAccounts(@_, nextToken => $next_result->nextToken);
        push @{ $result->linkedAccounts }, @{ $next_result->linkedAccounts };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'linkedAccounts') foreach (@{ $result->linkedAccounts });
        $result = $self->ListLinkedWhatsAppBusinessAccounts(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'linkedAccounts') foreach (@{ $result->linkedAccounts });
    }

    return undef
  }


  sub operations { qw/AssociateWhatsAppBusinessAccount DeleteWhatsAppMessageMedia DisassociateWhatsAppBusinessAccount GetLinkedWhatsAppBusinessAccount GetLinkedWhatsAppBusinessAccountPhoneNumber GetWhatsAppMessageMedia ListLinkedWhatsAppBusinessAccounts ListTagsForResource PostWhatsAppMessageMedia PutWhatsAppBusinessAccountEventDestinations SendWhatsAppMessage TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SocialMessaging - Perl Interface to AWS AWS End User Messaging Social

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SocialMessaging');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

I<Amazon Web Services End User Messaging Social>, also referred to as
Social messaging, is a messaging service that enables application
developers to incorporate WhatsApp into their existing workflows. The
I<Amazon Web Services End User Messaging Social API> provides
information about the I<Amazon Web Services End User Messaging Social
API> resources, including supported HTTP methods, parameters, and
schemas.

The I<Amazon Web Services End User Messaging Social API> provides
programmatic access to options that are unique to the WhatsApp Business
Platform.

If you're new to the I<Amazon Web Services End User Messaging Social
API>, it's also helpful to review What is Amazon Web Services End User
Messaging Social
(https://docs.aws.amazon.com/sms-voice/latest/userguide/what-is-service.html)
in the I<Amazon Web Services End User Messaging Social User Guide>. The
I<Amazon Web Services End User Messaging Social User Guide> provides
tutorials, code samples, and procedures that demonstrate how to use
I<Amazon Web Services End User Messaging Social API> features
programmatically and how to integrate functionality into applications.
The guide also provides key information, such as integration with other
Amazon Web Services services, and the quotas that apply to use of the
service.

B<Regional availability>

The I<Amazon Web Services End User Messaging Social API> is available
across several Amazon Web Services Regions and it provides a dedicated
endpoint for each of these Regions. For a list of all the Regions and
endpoints where the API is currently available, see Amazon Web Services
Service Endpoints
(https://docs.aws.amazon.com/general/latest/gr/rande.html#pinpoint_region)
and Amazon Web Services End User Messaging endpoints and quotas
(https://docs.aws.amazon.com/general/latest/gr/end-user-messaging.html)
in the Amazon Web Services General Reference. To learn more about
Amazon Web Services Regions, see Managing Amazon Web Services Regions
(https://docs.aws.amazon.com/general/latest/gr/rande-manage.html) in
the Amazon Web Services General Reference.

In each Region, Amazon Web Services maintains multiple Availability
Zones. These Availability Zones are physically isolated from each
other, but are united by private, low-latency, high-throughput, and
highly redundant network connections. These Availability Zones enable
us to provide very high levels of availability and redundancy, while
also minimizing latency. To learn more about the number of Availability
Zones that are available in each Region, see Amazon Web Services Global
Infrastructure.
(https://aws.amazon.com/about-aws/global-infrastructure/)

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AssociateWhatsAppBusinessAccount

=over

=item [SetupFinalization => L<Paws::SocialMessaging::WhatsAppSetupFinalization>]

=item [SignupCallback => L<Paws::SocialMessaging::WhatsAppSignupCallback>]


=back

Each argument is described in detail in: L<Paws::SocialMessaging::AssociateWhatsAppBusinessAccount>

Returns: a L<Paws::SocialMessaging::AssociateWhatsAppBusinessAccountOutput> instance

This is only used through the Amazon Web Services console during
sign-up to associate your WhatsApp Business Account to your Amazon Web
Services account.


=head2 DeleteWhatsAppMessageMedia

=over

=item MediaId => Str

=item OriginationPhoneNumberId => Str


=back

Each argument is described in detail in: L<Paws::SocialMessaging::DeleteWhatsAppMessageMedia>

Returns: a L<Paws::SocialMessaging::DeleteWhatsAppMessageMediaOutput> instance

Delete a media object from the WhatsApp service. If the object is still
in an Amazon S3 bucket you should delete it from there too.


=head2 DisassociateWhatsAppBusinessAccount

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::SocialMessaging::DisassociateWhatsAppBusinessAccount>

Returns: a L<Paws::SocialMessaging::DisassociateWhatsAppBusinessAccountOutput> instance

Disassociate a WhatsApp Business Account (WABA) from your Amazon Web
Services account.


=head2 GetLinkedWhatsAppBusinessAccount

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::SocialMessaging::GetLinkedWhatsAppBusinessAccount>

Returns: a L<Paws::SocialMessaging::GetLinkedWhatsAppBusinessAccountOutput> instance

Get the details of your linked WhatsApp Business Account.


=head2 GetLinkedWhatsAppBusinessAccountPhoneNumber

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::SocialMessaging::GetLinkedWhatsAppBusinessAccountPhoneNumber>

Returns: a L<Paws::SocialMessaging::GetLinkedWhatsAppBusinessAccountPhoneNumberOutput> instance

Use your WhatsApp phone number id to get the WABA account id and phone
number details.


=head2 GetWhatsAppMessageMedia

=over

=item MediaId => Str

=item OriginationPhoneNumberId => Str

=item [DestinationS3File => L<Paws::SocialMessaging::S3File>]

=item [DestinationS3PresignedUrl => L<Paws::SocialMessaging::S3PresignedUrl>]

=item [MetadataOnly => Bool]


=back

Each argument is described in detail in: L<Paws::SocialMessaging::GetWhatsAppMessageMedia>

Returns: a L<Paws::SocialMessaging::GetWhatsAppMessageMediaOutput> instance

Get a media file from the WhatsApp service. On successful completion
the media file is retrieved from Meta and stored in the specified
Amazon S3 bucket. Use either C<destinationS3File> or
C<destinationS3PresignedUrl> for the destination. If both are used then
an C<InvalidParameterException> is returned.


=head2 ListLinkedWhatsAppBusinessAccounts

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SocialMessaging::ListLinkedWhatsAppBusinessAccounts>

Returns: a L<Paws::SocialMessaging::ListLinkedWhatsAppBusinessAccountsOutput> instance

List all WhatsApp Business Accounts linked to your Amazon Web Services
account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::SocialMessaging::ListTagsForResource>

Returns: a L<Paws::SocialMessaging::ListTagsForResourceOutput> instance

List all tags associated with a resource, such as a phone number or
WABA.


=head2 PostWhatsAppMessageMedia

=over

=item OriginationPhoneNumberId => Str

=item [SourceS3File => L<Paws::SocialMessaging::S3File>]

=item [SourceS3PresignedUrl => L<Paws::SocialMessaging::S3PresignedUrl>]


=back

Each argument is described in detail in: L<Paws::SocialMessaging::PostWhatsAppMessageMedia>

Returns: a L<Paws::SocialMessaging::PostWhatsAppMessageMediaOutput> instance

Upload a media file to the WhatsApp service. Only the specified
C<originationPhoneNumberId> has the permissions to send the media file
when using SendWhatsAppMessage
(https://docs.aws.amazon.com/social-messaging/latest/APIReference/API_SendWhatsAppMessage.html).
You must use either C<sourceS3File> or C<sourceS3PresignedUrl> for the
source. If both or neither are specified then an
C<InvalidParameterException> is returned.


=head2 PutWhatsAppBusinessAccountEventDestinations

=over

=item EventDestinations => ArrayRef[L<Paws::SocialMessaging::WhatsAppBusinessAccountEventDestination>]

=item Id => Str


=back

Each argument is described in detail in: L<Paws::SocialMessaging::PutWhatsAppBusinessAccountEventDestinations>

Returns: a L<Paws::SocialMessaging::PutWhatsAppBusinessAccountEventDestinationsOutput> instance

Add an event destination to log event data from WhatsApp for a WhatsApp
Business Account (WABA). A WABA can only have one event destination at
a time. All resources associated with the WABA use the same event
destination.


=head2 SendWhatsAppMessage

=over

=item Message => Str

=item MetaApiVersion => Str

=item OriginationPhoneNumberId => Str


=back

Each argument is described in detail in: L<Paws::SocialMessaging::SendWhatsAppMessage>

Returns: a L<Paws::SocialMessaging::SendWhatsAppMessageOutput> instance

Send a WhatsApp message. For examples of sending a message using the
Amazon Web Services CLI, see Sending messages
(https://docs.aws.amazon.com/social-messaging/latest/userguide/send-message.html)
in the I< I<Amazon Web Services End User Messaging Social User Guide>
>.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::SocialMessaging::Tag>]


=back

Each argument is described in detail in: L<Paws::SocialMessaging::TagResource>

Returns: a L<Paws::SocialMessaging::TagResourceOutput> instance

Adds or overwrites only the specified tags for the specified resource.
When you specify an existing tag key, the value is overwritten with the
new value.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SocialMessaging::UntagResource>

Returns: a L<Paws::SocialMessaging::UntagResourceOutput> instance

Removes the specified tags from a resource.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllLinkedWhatsAppBusinessAccounts(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllLinkedWhatsAppBusinessAccounts([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - linkedAccounts, passing the object as the first parameter, and the string 'linkedAccounts' as the second parameter 

If not, it will return a a L<Paws::SocialMessaging::ListLinkedWhatsAppBusinessAccountsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

