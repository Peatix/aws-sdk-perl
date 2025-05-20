
package Paws::Notifications::GetNotificationConfiguration;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'arn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetNotificationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/notification-configurations/{arn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Notifications::GetNotificationConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::GetNotificationConfiguration - Arguments for method GetNotificationConfiguration on L<Paws::Notifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetNotificationConfiguration on the
L<AWS User Notifications|Paws::Notifications> service. Use the attributes of this class
as arguments to method GetNotificationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetNotificationConfiguration.

=head1 SYNOPSIS

    my $notifications = Paws->service('Notifications');
    my $GetNotificationConfigurationResponse =
      $notifications->GetNotificationConfiguration(
      Arn => 'MyNotificationConfigurationArn',

      );

    # Results:
    my $AggregationDuration =
      $GetNotificationConfigurationResponse->AggregationDuration;
    my $Arn          = $GetNotificationConfigurationResponse->Arn;
    my $CreationTime = $GetNotificationConfigurationResponse->CreationTime;
    my $Description  = $GetNotificationConfigurationResponse->Description;
    my $Name         = $GetNotificationConfigurationResponse->Name;
    my $Status       = $GetNotificationConfigurationResponse->Status;

# Returns a L<Paws::Notifications::GetNotificationConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/notifications/GetNotificationConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the C<NotificationConfiguration> to
return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetNotificationConfiguration in L<Paws::Notifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

