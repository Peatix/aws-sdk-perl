
package Paws::Textract::DeleteAdapter;
  use Moose;
  has AdapterId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAdapter');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Textract::DeleteAdapterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::DeleteAdapter - Arguments for method DeleteAdapter on L<Paws::Textract>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAdapter on the
L<Amazon Textract|Paws::Textract> service. Use the attributes of this class
as arguments to method DeleteAdapter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAdapter.

=head1 SYNOPSIS

    my $textract = Paws->service('Textract');
    my $DeleteAdapterResponse = $textract->DeleteAdapter(
      AdapterId => 'MyAdapterId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/textract/DeleteAdapter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AdapterId => Str

A string containing a unique ID for the adapter to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAdapter in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

