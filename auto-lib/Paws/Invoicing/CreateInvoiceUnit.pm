
package Paws::Invoicing::CreateInvoiceUnit;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has InvoiceReceiver => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::Invoicing::ResourceTag]');
  has Rule => (is => 'ro', isa => 'Paws::Invoicing::InvoiceUnitRule', required => 1);
  has TaxInheritanceDisabled => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInvoiceUnit');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Invoicing::CreateInvoiceUnitResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Invoicing::CreateInvoiceUnit - Arguments for method CreateInvoiceUnit on L<Paws::Invoicing>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInvoiceUnit on the
L<AWS Invoicing|Paws::Invoicing> service. Use the attributes of this class
as arguments to method CreateInvoiceUnit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInvoiceUnit.

=head1 SYNOPSIS

    my $invoicing = Paws->service('Invoicing');
    my $CreateInvoiceUnitResponse = $invoicing->CreateInvoiceUnit(
      InvoiceReceiver => 'MyAccountIdString',
      Name            => 'MyInvoiceUnitName',
      Rule            => {
        LinkedAccounts => [ 'MyAccountIdString', ... ]
        ,    # min: 1, max: 1000; OPTIONAL
      },
      Description  => 'MyDescriptionString',    # OPTIONAL
      ResourceTags => [
        {
          Key   => 'MyResourceTagKey',      # min: 1, max: 128
          Value => 'MyResourceTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      TaxInheritanceDisabled => 1,    # OPTIONAL
    );

    # Results:
    my $InvoiceUnitArn = $CreateInvoiceUnitResponse->InvoiceUnitArn;

    # Returns a L<Paws::Invoicing::CreateInvoiceUnitResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/invoicing/CreateInvoiceUnit>

=head1 ATTRIBUTES


=head2 Description => Str

The invoice unit's description. This can be changed at a later time.



=head2 B<REQUIRED> InvoiceReceiver => Str

The Amazon Web Services account ID chosen to be the receiver of an
invoice unit. All invoices generated for that invoice unit will be sent
to this account ID.



=head2 B<REQUIRED> Name => Str

The unique name of the invoice unit that is shown on the generated
invoice. This can't be changed once it is set. To change this name, you
must delete the invoice unit recreate.



=head2 ResourceTags => ArrayRef[L<Paws::Invoicing::ResourceTag>]

The tag structure that contains a tag key and value.



=head2 B<REQUIRED> Rule => L<Paws::Invoicing::InvoiceUnitRule>

The C<InvoiceUnitRule> object used to create invoice units.



=head2 TaxInheritanceDisabled => Bool

Whether the invoice unit based tax inheritance is/ should be enabled or
disabled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInvoiceUnit in L<Paws::Invoicing>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

