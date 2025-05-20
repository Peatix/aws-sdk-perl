
package Paws::MailManager::CreateAddressList;
  use Moose;
  has AddressListName => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::MailManager::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAddressList');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MailManager::CreateAddressListResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::CreateAddressList - Arguments for method CreateAddressList on L<Paws::MailManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAddressList on the
L<MailManager|Paws::MailManager> service. Use the attributes of this class
as arguments to method CreateAddressList.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAddressList.

=head1 SYNOPSIS

    my $mail-manager = Paws->service('MailManager');
    my $CreateAddressListResponse = $mail -manager->CreateAddressList(
      AddressListName => 'MyAddressListName',
      ClientToken     => 'MyIdempotencyToken',    # OPTIONAL
      Tags            => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AddressListId = $CreateAddressListResponse->AddressListId;

    # Returns a L<Paws::MailManager::CreateAddressListResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mail-manager/CreateAddressList>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddressListName => Str

A user-friendly name for the address list.



=head2 ClientToken => Str

A unique token that Amazon SES uses to recognize subsequent retries of
the same request.



=head2 Tags => ArrayRef[L<Paws::MailManager::Tag>]

The tags used to organize, track, or control access for the resource.
For example, { "tags": {"key1":"value1", "key2":"value2"} }.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAddressList in L<Paws::MailManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

