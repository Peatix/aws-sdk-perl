package Paws::NotificationsContacts;
  use Moose;
  sub service { 'notifications-contacts' }
  sub signing_name { 'notifications-contacts' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub ActivateEmailContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NotificationsContacts::ActivateEmailContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEmailContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NotificationsContacts::CreateEmailContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEmailContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NotificationsContacts::DeleteEmailContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEmailContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NotificationsContacts::GetEmailContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEmailContacts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NotificationsContacts::ListEmailContacts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NotificationsContacts::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendActivationCode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NotificationsContacts::SendActivationCode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NotificationsContacts::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NotificationsContacts::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllEmailContacts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEmailContacts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEmailContacts(@_, nextToken => $next_result->nextToken);
        push @{ $result->emailContacts }, @{ $next_result->emailContacts };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'emailContacts') foreach (@{ $result->emailContacts });
        $result = $self->ListEmailContacts(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'emailContacts') foreach (@{ $result->emailContacts });
    }

    return undef
  }


  sub operations { qw/ActivateEmailContact CreateEmailContact DeleteEmailContact GetEmailContact ListEmailContacts ListTagsForResource SendActivationCode TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::NotificationsContacts - Perl Interface to AWS AWS User Notifications Contacts

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('NotificationsContacts');
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

AWS User Notifications Contacts is a service that allows you to create
and manage email contacts for AWS User Notifications. The AWS User
Notifications Contacts API Reference provides descriptions, API request
parameters, and the JSON response for all email contact related API
actions.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 ActivateEmailContact

=over

=item Arn => Str

=item Code => Str


=back

Each argument is described in detail in: L<Paws::NotificationsContacts::ActivateEmailContact>

Returns: a L<Paws::NotificationsContacts::ActivateEmailContactResponse> instance

Activates an email contact using an activation code. This code is in
the activation email sent to the email address associated with this
email contact.


=head2 CreateEmailContact

=over

=item EmailAddress => Str

=item Name => Str

=item [Tags => L<Paws::NotificationsContacts::TagMap>]


=back

Each argument is described in detail in: L<Paws::NotificationsContacts::CreateEmailContact>

Returns: a L<Paws::NotificationsContacts::CreateEmailContactResponse> instance

Creates an email contact for the provided email address.


=head2 DeleteEmailContact

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::NotificationsContacts::DeleteEmailContact>

Returns: a L<Paws::NotificationsContacts::DeleteEmailContactResponse> instance

Deletes an email contact.

Deleting an email contact removes it from all associated notification
configurations.


=head2 GetEmailContact

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::NotificationsContacts::GetEmailContact>

Returns: a L<Paws::NotificationsContacts::GetEmailContactResponse> instance

Returns an email contact.


=head2 ListEmailContacts

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NotificationsContacts::ListEmailContacts>

Returns: a L<Paws::NotificationsContacts::ListEmailContactsResponse> instance

Lists all email contacts created under the Account.


=head2 ListTagsForResource

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::NotificationsContacts::ListTagsForResource>

Returns: a L<Paws::NotificationsContacts::ListTagsForResourceResponse> instance

Lists all of the tags associated with the Amazon Resource Name (ARN)
that you specify. The resource can be a user, server, or role.


=head2 SendActivationCode

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::NotificationsContacts::SendActivationCode>

Returns: a L<Paws::NotificationsContacts::SendActivationCodeResponse> instance

Sends an activation email to the email address associated with the
specified email contact.

It might take a few minutes for the activation email to arrive. If it
doesn't arrive, check in your spam folder or try sending another
activation email.


=head2 TagResource

=over

=item Arn => Str

=item Tags => L<Paws::NotificationsContacts::TagMap>


=back

Each argument is described in detail in: L<Paws::NotificationsContacts::TagResource>

Returns: a L<Paws::NotificationsContacts::TagResourceResponse> instance

Attaches a key-value pair to a resource, as identified by its Amazon
Resource Name (ARN). Taggable resources in AWS User Notifications
Contacts include email contacts.


=head2 UntagResource

=over

=item Arn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::NotificationsContacts::UntagResource>

Returns: a L<Paws::NotificationsContacts::UntagResourceResponse> instance

Detaches a key-value pair from a resource, as identified by its Amazon
Resource Name (ARN). Taggable resources in AWS User Notifications
Contacts include email contacts..




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllEmailContacts(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllEmailContacts([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - emailContacts, passing the object as the first parameter, and the string 'emailContacts' as the second parameter 

If not, it will return a a L<Paws::NotificationsContacts::ListEmailContactsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

