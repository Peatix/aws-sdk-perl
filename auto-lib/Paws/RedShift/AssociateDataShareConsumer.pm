
package Paws::RedShift::AssociateDataShareConsumer;
  use Moose;
  has AllowWrites => (is => 'ro', isa => 'Bool');
  has AssociateEntireAccount => (is => 'ro', isa => 'Bool');
  has ConsumerArn => (is => 'ro', isa => 'Str');
  has ConsumerRegion => (is => 'ro', isa => 'Str');
  has DataShareArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateDataShareConsumer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::DataShare');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AssociateDataShareConsumerResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::AssociateDataShareConsumer - Arguments for method AssociateDataShareConsumer on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateDataShareConsumer on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method AssociateDataShareConsumer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateDataShareConsumer.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $DataShare = $redshift->AssociateDataShareConsumer(
      DataShareArn           => 'MyString',
      AllowWrites            => 1,             # OPTIONAL
      AssociateEntireAccount => 1,             # OPTIONAL
      ConsumerArn            => 'MyString',    # OPTIONAL
      ConsumerRegion         => 'MyString',    # OPTIONAL
    );

    # Results:
    my $AllowPubliclyAccessibleConsumers =
      $DataShare->AllowPubliclyAccessibleConsumers;
    my $DataShareArn          = $DataShare->DataShareArn;
    my $DataShareAssociations = $DataShare->DataShareAssociations;
    my $DataShareType         = $DataShare->DataShareType;
    my $ManagedBy             = $DataShare->ManagedBy;
    my $ProducerArn           = $DataShare->ProducerArn;

    # Returns a L<Paws::RedShift::DataShare> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/AssociateDataShareConsumer>

=head1 ATTRIBUTES


=head2 AllowWrites => Bool

If set to true, allows write operations for a datashare.



=head2 AssociateEntireAccount => Bool

A value that specifies whether the datashare is associated with the
entire account.



=head2 ConsumerArn => Str

The Amazon Resource Name (ARN) of the consumer namespace associated
with the datashare.



=head2 ConsumerRegion => Str

From a datashare consumer account, associates a datashare with all
existing and future namespaces in the specified Amazon Web Services
Region.



=head2 B<REQUIRED> DataShareArn => Str

The Amazon Resource Name (ARN) of the datashare that the consumer is to
use.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateDataShareConsumer in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

