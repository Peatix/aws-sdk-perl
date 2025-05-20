
package Paws::RedShift::DeauthorizeDataShare;
  use Moose;
  has ConsumerIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DataShareArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeauthorizeDataShare');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::DataShare');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeauthorizeDataShareResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DeauthorizeDataShare - Arguments for method DeauthorizeDataShare on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeauthorizeDataShare on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DeauthorizeDataShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeauthorizeDataShare.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $DataShare = $redshift->DeauthorizeDataShare(
      ConsumerIdentifier => 'MyString',
      DataShareArn       => 'MyString',

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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DeauthorizeDataShare>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConsumerIdentifier => Str

The identifier of the data consumer that is to have authorization
removed from the datashare. This identifier is an Amazon Web Services
account ID or a keyword, such as ADX.



=head2 B<REQUIRED> DataShareArn => Str

The namespace Amazon Resource Name (ARN) of the datashare to remove
authorization from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeauthorizeDataShare in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

