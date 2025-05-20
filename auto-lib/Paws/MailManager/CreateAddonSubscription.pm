
package Paws::MailManager::CreateAddonSubscription;
  use Moose;
  has AddonName => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::MailManager::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAddonSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MailManager::CreateAddonSubscriptionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::CreateAddonSubscription - Arguments for method CreateAddonSubscription on L<Paws::MailManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAddonSubscription on the
L<MailManager|Paws::MailManager> service. Use the attributes of this class
as arguments to method CreateAddonSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAddonSubscription.

=head1 SYNOPSIS

    my $mail-manager = Paws->service('MailManager');
    my $CreateAddonSubscriptionResponse =
      $mail -manager->CreateAddonSubscription(
      AddonName   => 'MyAddonName',
      ClientToken => 'MyIdempotencyToken',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $AddonSubscriptionId =
      $CreateAddonSubscriptionResponse->AddonSubscriptionId;

    # Returns a L<Paws::MailManager::CreateAddonSubscriptionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mail-manager/CreateAddonSubscription>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddonName => Str

The name of the Add On to subscribe to. You can only have one
subscription for each Add On name.



=head2 ClientToken => Str

A unique token that Amazon SES uses to recognize subsequent retries of
the same request.



=head2 Tags => ArrayRef[L<Paws::MailManager::Tag>]

The tags used to organize, track, or control access for the resource.
For example, { "tags": {"key1":"value1", "key2":"value2"} }.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAddonSubscription in L<Paws::MailManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

