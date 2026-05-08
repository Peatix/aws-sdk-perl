
package Paws::CognitoIdp::AdminUpdateAuthEventFeedback;
  use Moose;
  has EventId => (is => 'ro', isa => 'Str', required => 1);
  has FeedbackValue => (is => 'ro', isa => 'Str', required => 1);
  has Username => (is => 'ro', isa => 'Str', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AdminUpdateAuthEventFeedback');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::AdminUpdateAuthEventFeedbackResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminUpdateAuthEventFeedback - Arguments for method AdminUpdateAuthEventFeedback on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdminUpdateAuthEventFeedback on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AdminUpdateAuthEventFeedback.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdminUpdateAuthEventFeedback.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $AdminUpdateAuthEventFeedbackResponse =
      $cognito -idp->AdminUpdateAuthEventFeedback(
      EventId       => 'MyEventIdType',
      FeedbackValue => 'Valid',
      UserPoolId    => 'MyUserPoolIdType',
      Username      => 'MyUsernameType',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventId => Str

The ID of the threat protection authentication event that you want to
update.



=head2 B<REQUIRED> FeedbackValue => Str

Your feedback to the authentication event. When you provide a
C<FeedbackValue> value of C<valid>, you tell Amazon Cognito that you
trust a user session where Amazon Cognito has evaluated some level of
risk. When you provide a C<FeedbackValue> value of C<invalid>, you tell
Amazon Cognito that you don't trust a user session, or you don't
believe that Amazon Cognito evaluated a high-enough risk level.

Valid values are: C<"Valid">, C<"Invalid">

=head2 B<REQUIRED> Username => Str

The name of the user that you want to query or modify. The value of
this parameter is typically your user's username, but it can be any of
their alias attributes. If C<username> isn't an alias attribute in your
user pool, this value must be the C<sub> of a local user or the
username of a user from a third-party IdP.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool where you want to submit authentication-event
feedback.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdminUpdateAuthEventFeedback in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

