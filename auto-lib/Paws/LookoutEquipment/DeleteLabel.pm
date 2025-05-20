
package Paws::LookoutEquipment::DeleteLabel;
  use Moose;
  has LabelGroupName => (is => 'ro', isa => 'Str', required => 1);
  has LabelId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLabel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::DeleteLabel - Arguments for method DeleteLabel on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteLabel on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method DeleteLabel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteLabel.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    $lookoutequipment->DeleteLabel(
      LabelGroupName => 'MyLabelGroupName',
      LabelId        => 'MyLabelId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/DeleteLabel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LabelGroupName => Str

The name of the label group that contains the label that you want to
delete. Data in this field will be retained for service usage. Follow
best practices for the security of your data.



=head2 B<REQUIRED> LabelId => Str

The ID of the label that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteLabel in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

