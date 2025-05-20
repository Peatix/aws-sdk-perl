
package Paws::NotificationsContacts::ListEmailContacts;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEmailContacts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/emailcontacts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NotificationsContacts::ListEmailContactsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NotificationsContacts::ListEmailContacts - Arguments for method ListEmailContacts on L<Paws::NotificationsContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEmailContacts on the
L<AWS User Notifications Contacts|Paws::NotificationsContacts> service. Use the attributes of this class
as arguments to method ListEmailContacts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEmailContacts.

=head1 SYNOPSIS

    my $notifications-contacts = Paws->service('NotificationsContacts');
    my $ListEmailContactsResponse = $notifications -contacts->ListEmailContacts(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $EmailContacts = $ListEmailContactsResponse->EmailContacts;
    my $NextToken     = $ListEmailContactsResponse->NextToken;

   # Returns a L<Paws::NotificationsContacts::ListEmailContactsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/notifications-contacts/ListEmailContacts>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to include in the response. If more
results exist than the specified MaxResults value, a token is included
in the response so that the remaining results can be retrieved.



=head2 NextToken => Str

An optional token returned from a prior request. Use this token for
pagination of results from this action. If this parameter is specified,
the response includes only results beyond the token, up to the value
specified by MaxResults.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEmailContacts in L<Paws::NotificationsContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

