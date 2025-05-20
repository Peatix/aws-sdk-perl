
package Paws::Notifications::GetManagedNotificationChildEvent;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'arn', required => 1);
  has Locale => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'locale');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetManagedNotificationChildEvent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/managed-notification-child-events/{arn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Notifications::GetManagedNotificationChildEventResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::GetManagedNotificationChildEvent - Arguments for method GetManagedNotificationChildEvent on L<Paws::Notifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetManagedNotificationChildEvent on the
L<AWS User Notifications|Paws::Notifications> service. Use the attributes of this class
as arguments to method GetManagedNotificationChildEvent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetManagedNotificationChildEvent.

=head1 SYNOPSIS

    my $notifications = Paws->service('Notifications');
    my $GetManagedNotificationChildEventResponse =
      $notifications->GetManagedNotificationChildEvent(
      Arn    => 'MyManagedNotificationChildEventArn',
      Locale => 'de_DE',                                # OPTIONAL
      );

    # Results:
    my $Arn          = $GetManagedNotificationChildEventResponse->Arn;
    my $Content      = $GetManagedNotificationChildEventResponse->Content;
    my $CreationTime = $GetManagedNotificationChildEventResponse->CreationTime;
    my $ManagedNotificationConfigurationArn =
      $GetManagedNotificationChildEventResponse
      ->ManagedNotificationConfigurationArn;

# Returns a L<Paws::Notifications::GetManagedNotificationChildEventResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/notifications/GetManagedNotificationChildEvent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the C<ManagedNotificationChildEvent>
to return.



=head2 Locale => Str

The locale code of the language used for the retrieved
C<ManagedNotificationChildEvent>. The default locale is English
C<en_US>.

Valid values are: C<"de_DE">, C<"en_CA">, C<"en_US">, C<"en_UK">, C<"es_ES">, C<"fr_CA">, C<"fr_FR">, C<"id_ID">, C<"it_IT">, C<"ja_JP">, C<"ko_KR">, C<"pt_BR">, C<"tr_TR">, C<"zh_CN">, C<"zh_TW">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetManagedNotificationChildEvent in L<Paws::Notifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

