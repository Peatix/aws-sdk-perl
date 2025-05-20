
package Paws::MailManager::GetAddonSubscription;
  use Moose;
  has AddonSubscriptionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAddonSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MailManager::GetAddonSubscriptionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::GetAddonSubscription - Arguments for method GetAddonSubscription on L<Paws::MailManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAddonSubscription on the
L<MailManager|Paws::MailManager> service. Use the attributes of this class
as arguments to method GetAddonSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAddonSubscription.

=head1 SYNOPSIS

    my $mail-manager = Paws->service('MailManager');
    my $GetAddonSubscriptionResponse = $mail -manager->GetAddonSubscription(
      AddonSubscriptionId => 'MyAddonSubscriptionId',

    );

    # Results:
    my $AddonName = $GetAddonSubscriptionResponse->AddonName;
    my $AddonSubscriptionArn =
      $GetAddonSubscriptionResponse->AddonSubscriptionArn;
    my $CreatedTimestamp = $GetAddonSubscriptionResponse->CreatedTimestamp;

    # Returns a L<Paws::MailManager::GetAddonSubscriptionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mail-manager/GetAddonSubscription>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddonSubscriptionId => Str

The Add On subscription ID to retrieve information for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAddonSubscription in L<Paws::MailManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

